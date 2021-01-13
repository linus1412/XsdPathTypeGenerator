package uk.co.smitek;

import lombok.Getter;
import lombok.SneakyThrows;
import org.apache.commons.io.IOUtils;
import org.apache.xmlbeans.impl.xsd2inst.SchemaInstanceGenerator;
import org.apache.xmlbeans.impl.xsd2inst.SchemaInstanceGenerator.Xsd2InstOptions;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.*;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.stream.Collectors;

import static java.lang.String.format;
import static java.lang.System.lineSeparator;
import static java.util.stream.Collectors.joining;
import static org.apache.commons.lang3.StringUtils.isNotBlank;
//import org.apache.xmlbeans.impl.SchemaInstanceGeneratorLocal;

public class XsdPathTypeGenerator {

    @SneakyThrows
    public Map<String, String> generateMap(String rootElement, String... xsdPaths) {

        final String[] xsds = Arrays.stream(xsdPaths)
            .map(this::loadXsd)
            .toArray(String[]::new);

        final Xsd2InstOptions options = new Xsd2InstOptions();
        final String xml = SchemaInstanceGenerator.xsd2inst(xsds,rootElement, options);

        final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(xml.getBytes());

        final DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
        final DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
        final Document doc = docBuilder.parse(byteArrayInputStream);

        Context context = new Context("ns");

        parseElement(context, doc.getDocumentElement());

        return context.getPathTypes();

    }

    public String generateString(String rootElement, String... xsdPaths) {
        return generateMap(rootElement, xsdPaths).entrySet()
            .stream()
            .map(Object::toString)
            .collect(joining(lineSeparator()));
    }

    public void generateAndPrint(String rootElement, String... xsdPaths) {
        generateMap(rootElement, xsdPaths).entrySet().forEach(System.out::println);
    }

    private void parseElement(Context context, final Element e) {

        context.addElementToStack(e.getNodeName());
        addTypeIfDeclared(context, e);

        parseAttributes(context, e);

        final NodeList children = e.getChildNodes();
        for (int i = 0; i < children.getLength(); i++) {
            final Node n = children.item(i);
            if (n.getNodeType() == Node.ELEMENT_NODE) {
                parseElement(context, (Element) n);
            }
        }

        context.removeLastElementFromStack();
    }

    private void addTypeIfDeclared(Context context, Element e) {
        final int length = e.getChildNodes().getLength();
        for (int i = 0; i < length; i++) {
            final Node node = e.getChildNodes().item(i);
            if (node.getNodeName().equals("#text") && isNotBlank(node.getTextContent())) {
                context.setTypeForCurrentElement(node.getTextContent());
            }
        }
    }

    private void parseAttributes(Context context, Element e) {
        if (e.hasAttributes()) {
            for (int i = 0; i < e.getAttributes().getLength(); i++) {
                final Node attribute = e.getAttributes().item(i);
                context.setTypeForAttribute(context, attribute.getNodeName(), attribute.getNodeValue());
            }
        }
    }

    @SneakyThrows
    private String loadXsd(String path) {
        Class<?> clazz = this.getClass();
        InputStream inputStream = clazz.getResourceAsStream(path);
        return readFromInputStream(inputStream);
    }

    private String readFromInputStream(InputStream inputStream)
        throws IOException {
        StringBuilder resultStringBuilder = new StringBuilder();
        try (BufferedReader br
                 = new BufferedReader(new InputStreamReader(inputStream))) {
            String line;
            while ((line = br.readLine()) != null) {
                resultStringBuilder.append(line).append("\n");
            }
        }
        return resultStringBuilder.toString();
    }


    static class Context {

        private final String namespace;

        @Getter
        private final Map<String, String> pathTypes = new LinkedHashMap<>();

        private final LinkedList<String> stack = new LinkedList<>();

        Context(String namespace) {
            this.namespace = namespace;
        }

        public void addElementToStack(String path) {
            stack.add(path);
        }

        public void removeLastElementFromStack() {
            stack.removeLast();
        }

        public void setTypeForCurrentElement(String type) {
            pathTypes.put(generatePath(), type);
        }

        private String generatePath() {
            return stack.stream()
                .map(s -> s.replaceAll(namespace + ":", ""))
                .collect(joining("/"));
        }

        public void setTypeForAttribute(Context context, String nodeName, String nodeValue) {
            final String path = generatePath() + "@" + nodeName;
            pathTypes.put(path, nodeValue);
        }

    }

}
