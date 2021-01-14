package uk.co.smitek;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class XsdPathTypeGeneratorToStringTest {

    @Test
    void elementWithAttributeXsdTypes() {

        String expectedString =
            "employee@active=xsd:boolean\n" +
            "employee@xmlns:ns=http://smitek.co.uk/example/1\n" +
            "employee/name=xsd:string\n" +
            "employee/age=xsd:decimal\n" +
            "employee/started=xsd:date\n" +
            "employee/department@code=xsd:decimal\n" +
            "employee/department/name=xsd:string";

        final XsdPathTypeGenerator xsdPathTypeGenerator = new XsdPathTypeGenerator();
        final String pathTypes = xsdPathTypeGenerator.generateString("employee", "/simple.xsd");
        assertThat(pathTypes).isEqualTo(expectedString);

    }

}
