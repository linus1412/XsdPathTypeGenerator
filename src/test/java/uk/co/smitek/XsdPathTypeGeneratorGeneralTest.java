package uk.co.smitek;

import org.assertj.core.api.Condition;
import org.assertj.core.internal.Conditions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;

import java.util.Map;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.entry;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class XsdPathTypeGeneratorGeneralTest {

    Map<String, String> pathTypes;

    @BeforeAll
    void beforeAll() {
        final String[] paths = {
            "/HMRC-Trusts-2020-v1-0-20190925/SAtrust-v1-0.xsd",
            "/HMRC-Trusts-2020-v1-0-20190925/SAelements-v1-1.xsd"
        };
        pathTypes = new XsdPathTypeGenerator().generateMap("IRenvelope", paths);
    }


    @Test
    void elementWithAttributeXsdTypes() {
        assertThat(pathTypes).contains(entry("IRenvelope/SAtrust/AttachedFiles/Attachment","xsd:base64Binary"));
        assertThat(pathTypes).contains(entry("IRenvelope/SAtrust/AttachedFiles/Attachment@FileFormat","xsd:string"));
    }

    @Test
    void resolvedXsdElementReference() {
        assertThat(pathTypes.keySet()).anyMatch(s -> s.contains("IRenvelope/IRheader"));
    }

    @Test
    void resolvedXsdElementType() {
        assertThat(pathTypes.keySet()).anyMatch(s -> s.contains("IRenvelope/IRheader/Principal"));
    }

    @Test
    void resolvedComplexPath() {
        assertThat(pathTypes).contains(entry("IRenvelope/SAtrust/TrustCapitalGains/GainsAndLosses/Gains/GainsInYearBeforeLosses/DateOfDisposal", "xsd:date"));
    }

    @Test
    void resolvedAllXsdTypes() {
        assertThat(pathTypes.values()).anyMatch(s -> s.startsWith("xsd:"));
    }


}
