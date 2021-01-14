package uk.co.smitek;

import lombok.Getter;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import static org.assertj.core.api.Assertions.assertThat;

class XsdPathTypeGeneratorParsingVarietyTest {

    @Test
    void elementWithAttributeXsdTypes() {

        final List<Scenario> variety = Arrays.asList(
            new Scenario(
                "IRenvelope",
                "/HMRC-Trusts-2020-v1-0-20190925/SAtrust-v1-0.xsd",
                "/HMRC-Trusts-2020-v1-0-20190925/SAelements-v1-1.xsd"
            ),
            new Scenario(
                "IRenvelope",
                "/HMRC-CT-2014-v1-93-20190716/CT-2014-v1-93.xsd"
            ),
            new Scenario(
                "IRenvelope",
                "/HMRC-CT-2009-v3-99-20150619/CT-2009-v3-99.xsd"
            ),
            new Scenario(
                "employee",
                "/simple.xsd"
            ),
            new Scenario(
                "View",
                "/android/android.xsd",
                "/android/android_attributes.xsd"
            )
        );

        Assertions.assertAll(() -> {

            variety.forEach(scenario -> {
                final Map<String, String> pathTypes = new XsdPathTypeGenerator().generateMap(scenario.rootElement, scenario.xsdPaths);
                assertThat(pathTypes.values()).anyMatch(xsdType -> xsdType.startsWith("xsd:"));
            });

        });

    }

    @Getter
    static class Scenario {

        private final  String rootElement;
        private final String[] xsdPaths;

        Scenario(String rootElement, String... xsdPaths) {
            this.rootElement = rootElement;
            this.xsdPaths = xsdPaths;
        }

    }

}
