<?xml version="1.0" encoding="UTF-8"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:ct="http://www.govtalk.gov.uk/taxation/CT/3" xmlns:dsig="http://www.w3.org/2000/09/xmldsig#" xmlns:hd="http://www.govtalk.gov.uk/CM/envelope" xmlns:date="http://exslt.org/dates-and-times" xmlns:dyn="http://exslt.org/dynamic" xmlns:exsl="http://exslt.org/common" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:math="http://exslt.org/math" xmlns:random="http://exslt.org/random" xmlns:regexp="http://exslt.org/regular-expressions" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:set="http://exslt.org/sets" xmlns:str="http://exslt.org/strings" ct:dummy-for-xmlns="" dsig:dummy-for-xmlns="" exclude-result-prefixes="sch iso" extension-element-prefixes="date dyn math random regexp set str exsl" hd:dummy-for-xmlns="" version="1.0">

<!--PHASES-->


<!--PROLOG-->
<dsl-rim:namespaceMappings xmlns:dsl-rim="http://www.decisionsoft.com/rim" xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse">
    <dsl-rim:namespaceMapping prefix="hd" uri="http://www.govtalk.gov.uk/CM/envelope"/>
    <dsl-rim:namespaceMapping prefix="dsig" uri="http://www.w3.org/2000/09/xmldsig#"/>
    <dsl-rim:namespaceMapping prefix="ct" uri="http://www.govtalk.gov.uk/taxation/CT/3"/>
  </dsl-rim:namespaceMappings>
  <axsl:output xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" indent="yes" method="xml" omit-xml-declaration="no" standalone="yes"/>

<!--KEYS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-FULL-PATH-->
<axsl:template match="*" mode="schematron-get-full-path">
    <axsl:apply-templates mode="schematron-get-full-path" select="parent::*"/>
    <axsl:text>/</axsl:text>
    <axsl:variable name="nsuri" select="namespace-uri()"/>
    <axsl:variable xmlns:dsl-rim="http://www.decisionsoft.com/rim" name="prefix" select="document('')//dsl-rim:namespaceMapping[@uri=$nsuri]/@prefix"/>
    <axsl:if test="$prefix">
      <axsl:value-of select="concat($prefix,':')"/>
    </axsl:if>
    <axsl:value-of select="local-name()"/>
    <axsl:variable name="preceding" select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
    <axsl:text>[</axsl:text>
    <axsl:value-of select="1+ $preceding"/>
    <axsl:text>]</axsl:text>
  </axsl:template>
  <axsl:template match="@*" mode="schematron-get-full-path">
    <axsl:apply-templates mode="schematron-get-full-path" select="parent::*"/>
    <axsl:text>/@</axsl:text>
    <axsl:variable name="nsuri" select="namespace-uri()"/>
    <axsl:variable xmlns:dsl-rim="http://www.decisionsoft.com/rim" name="prefix" select="document('')//dsl-rim:namespaceMapping[@uri=$nsuri]/@prefix"/>
    <axsl:if test="$prefix">
      <axsl:value-of select="concat($prefix,':')"/>
    </axsl:if>
    <axsl:value-of select="local-name()"/>
  </axsl:template>
  <!--Strip characters-->
  <axsl:template match="text()" priority="-1"/>

<!--SCHEMA METADATA-->
<axsl:template match="/">
    <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errors">
      <axsl:apply-templates mode="M4" select="/"/>
      <axsl:apply-templates mode="M5" select="/"/>
      <axsl:apply-templates mode="M6" select="/"/>
      <axsl:apply-templates mode="M7" select="/"/>
      <axsl:apply-templates mode="M8" select="/"/>
      <axsl:apply-templates mode="M9" select="/"/>
      <axsl:apply-templates mode="M10" select="/"/>
      <axsl:apply-templates mode="M11" select="/"/>
      <axsl:apply-templates mode="M12" select="/"/>
      <axsl:apply-templates mode="M13" select="/"/>
      <axsl:apply-templates mode="M14" select="/"/>
      <axsl:apply-templates mode="M15" select="/"/>
      <axsl:apply-templates mode="M16" select="/"/>
      <axsl:apply-templates mode="M17" select="/"/>
      <axsl:apply-templates mode="M18" select="/"/>
      <axsl:apply-templates mode="M19" select="/"/>
      <axsl:apply-templates mode="M20" select="/"/>
      <axsl:apply-templates mode="M21" select="/"/>
      <axsl:apply-templates mode="M22" select="/"/>
      <axsl:apply-templates mode="M23" select="/"/>
      <axsl:apply-templates mode="M24" select="/"/>
      <axsl:apply-templates mode="M25" select="/"/>
      <axsl:apply-templates mode="M26" select="/"/>
      <axsl:apply-templates mode="M27" select="/"/>
      <axsl:apply-templates mode="M28" select="/"/>
      <axsl:apply-templates mode="M29" select="/"/>
      <axsl:apply-templates mode="M30" select="/"/>
      <axsl:apply-templates mode="M31" select="/"/>
      <axsl:apply-templates mode="M32" select="/"/>
      <axsl:apply-templates mode="M33" select="/"/>
      <axsl:apply-templates mode="M34" select="/"/>
      <axsl:apply-templates mode="M35" select="/"/>
      <axsl:apply-templates mode="M36" select="/"/>
      <axsl:apply-templates mode="M37" select="/"/>
      <axsl:apply-templates mode="M38" select="/"/>
      <axsl:apply-templates mode="M39" select="/"/>
      <axsl:apply-templates mode="M40" select="/"/>
      <axsl:apply-templates mode="M41" select="/"/>
      <axsl:apply-templates mode="M42" select="/"/>
      <axsl:apply-templates mode="M43" select="/"/>
      <axsl:apply-templates mode="M44" select="/"/>
      <axsl:apply-templates mode="M45" select="/"/>
      <axsl:apply-templates mode="M46" select="/"/>
      <axsl:apply-templates mode="M47" select="/"/>
      <axsl:apply-templates mode="M48" select="/"/>
      <axsl:apply-templates mode="M49" select="/"/>
      <axsl:apply-templates mode="M50" select="/"/>
      <axsl:apply-templates mode="M51" select="/"/>
      <axsl:apply-templates mode="M52" select="/"/>
      <axsl:apply-templates mode="M53" select="/"/>
      <axsl:apply-templates mode="M54" select="/"/>
      <axsl:apply-templates mode="M55" select="/"/>
      <axsl:apply-templates mode="M56" select="/"/>
      <axsl:apply-templates mode="M57" select="/"/>
      <axsl:apply-templates mode="M58" select="/"/>
      <axsl:apply-templates mode="M59" select="/"/>
      <axsl:apply-templates mode="M60" select="/"/>
      <axsl:apply-templates mode="M61" select="/"/>
      <axsl:apply-templates mode="M62" select="/"/>
      <axsl:apply-templates mode="M63" select="/"/>
      <axsl:apply-templates mode="M64" select="/"/>
      <axsl:apply-templates mode="M65" select="/"/>
      <axsl:apply-templates mode="M66" select="/"/>
      <axsl:apply-templates mode="M67" select="/"/>
      <axsl:apply-templates mode="M68" select="/"/>
      <axsl:apply-templates mode="M69" select="/"/>
      <axsl:apply-templates mode="M70" select="/"/>
      <axsl:apply-templates mode="M71" select="/"/>
      <axsl:apply-templates mode="M72" select="/"/>
      <axsl:apply-templates mode="M73" select="/"/>
      <axsl:apply-templates mode="M74" select="/"/>
      <axsl:apply-templates mode="M75" select="/"/>
      <axsl:apply-templates mode="M76" select="/"/>
      <axsl:apply-templates mode="M77" select="/"/>
      <axsl:apply-templates mode="M78" select="/"/>
      <axsl:apply-templates mode="M79" select="/"/>
      <axsl:apply-templates mode="M80" select="/"/>
      <axsl:apply-templates mode="M81" select="/"/>
      <axsl:apply-templates mode="M82" select="/"/>
      <axsl:apply-templates mode="M83" select="/"/>
      <axsl:apply-templates mode="M84" select="/"/>
      <axsl:apply-templates mode="M85" select="/"/>
      <axsl:apply-templates mode="M86" select="/"/>
      <axsl:apply-templates mode="M87" select="/"/>
      <axsl:apply-templates mode="M88" select="/"/>
      <axsl:apply-templates mode="M89" select="/"/>
      <axsl:apply-templates mode="M90" select="/"/>
      <axsl:apply-templates mode="M91" select="/"/>
      <axsl:apply-templates mode="M92" select="/"/>
      <axsl:apply-templates mode="M93" select="/"/>
      <axsl:apply-templates mode="M94" select="/"/>
      <axsl:apply-templates mode="M95" select="/"/>
      <axsl:apply-templates mode="M96" select="/"/>
      <axsl:apply-templates mode="M97" select="/"/>
      <axsl:apply-templates mode="M98" select="/"/>
      <axsl:apply-templates mode="M99" select="/"/>
      <axsl:apply-templates mode="M100" select="/"/>
      <axsl:apply-templates mode="M101" select="/"/>
      <axsl:apply-templates mode="M102" select="/"/>
      <axsl:apply-templates mode="M103" select="/"/>
      <axsl:apply-templates mode="M104" select="/"/>
      <axsl:apply-templates mode="M105" select="/"/>
      <axsl:apply-templates mode="M106" select="/"/>
      <axsl:apply-templates mode="M107" select="/"/>
      <axsl:apply-templates mode="M108" select="/"/>
      <axsl:apply-templates mode="M109" select="/"/>
      <axsl:apply-templates mode="M110" select="/"/>
      <axsl:apply-templates mode="M111" select="/"/>
      <axsl:apply-templates mode="M112" select="/"/>
      <axsl:apply-templates mode="M113" select="/"/>
      <axsl:apply-templates mode="M114" select="/"/>
      <axsl:apply-templates mode="M115" select="/"/>
      <axsl:apply-templates mode="M116" select="/"/>
      <axsl:apply-templates mode="M117" select="/"/>
      <axsl:apply-templates mode="M118" select="/"/>
      <axsl:apply-templates mode="M119" select="/"/>
      <axsl:apply-templates mode="M120" select="/"/>
      <axsl:apply-templates mode="M121" select="/"/>
      <axsl:apply-templates mode="M122" select="/"/>
      <axsl:apply-templates mode="M123" select="/"/>
      <axsl:apply-templates mode="M124" select="/"/>
      <axsl:apply-templates mode="M125" select="/"/>
      <axsl:apply-templates mode="M126" select="/"/>
      <axsl:apply-templates mode="M127" select="/"/>
      <axsl:apply-templates mode="M128" select="/"/>
      <axsl:apply-templates mode="M129" select="/"/>
      <axsl:apply-templates mode="M130" select="/"/>
      <axsl:apply-templates mode="M131" select="/"/>
      <axsl:apply-templates mode="M132" select="/"/>
      <axsl:apply-templates mode="M133" select="/"/>
      <axsl:apply-templates mode="M134" select="/"/>
      <axsl:apply-templates mode="M135" select="/"/>
      <axsl:apply-templates mode="M136" select="/"/>
      <axsl:apply-templates mode="M137" select="/"/>
      <axsl:apply-templates mode="M138" select="/"/>
      <axsl:apply-templates mode="M139" select="/"/>
      <axsl:apply-templates mode="M140" select="/"/>
      <axsl:apply-templates mode="M141" select="/"/>
      <axsl:apply-templates mode="M142" select="/"/>
      <axsl:apply-templates mode="M143" select="/"/>
      <axsl:apply-templates mode="M144" select="/"/>
      <axsl:apply-templates mode="M145" select="/"/>
      <axsl:apply-templates mode="M146" select="/"/>
      <axsl:apply-templates mode="M147" select="/"/>
      <axsl:apply-templates mode="M148" select="/"/>
      <axsl:apply-templates mode="M149" select="/"/>
      <axsl:apply-templates mode="M150" select="/"/>
      <axsl:apply-templates mode="M151" select="/"/>
      <axsl:apply-templates mode="M152" select="/"/>
      <axsl:apply-templates mode="M153" select="/"/>
      <axsl:apply-templates mode="M154" select="/"/>
      <axsl:apply-templates mode="M155" select="/"/>
      <axsl:apply-templates mode="M156" select="/"/>
      <axsl:apply-templates mode="M157" select="/"/>
      <axsl:apply-templates mode="M158" select="/"/>
      <axsl:apply-templates mode="M159" select="/"/>
      <axsl:apply-templates mode="M160" select="/"/>
      <axsl:apply-templates mode="M161" select="/"/>
      <axsl:apply-templates mode="M162" select="/"/>
      <axsl:apply-templates mode="M163" select="/"/>
      <axsl:apply-templates mode="M164" select="/"/>
      <axsl:apply-templates mode="M165" select="/"/>
      <axsl:apply-templates mode="M166" select="/"/>
      <axsl:apply-templates mode="M167" select="/"/>
      <axsl:apply-templates mode="M168" select="/"/>
      <axsl:apply-templates mode="M169" select="/"/>
      <axsl:apply-templates mode="M170" select="/"/>
      <axsl:apply-templates mode="M171" select="/"/>
      <axsl:apply-templates mode="M172" select="/"/>
      <axsl:apply-templates mode="M173" select="/"/>
      <axsl:apply-templates mode="M174" select="/"/>
      <axsl:apply-templates mode="M175" select="/"/>
      <axsl:apply-templates mode="M176" select="/"/>
      <axsl:apply-templates mode="M177" select="/"/>
      <axsl:apply-templates mode="M178" select="/"/>
      <axsl:apply-templates mode="M179" select="/"/>
      <axsl:apply-templates mode="M180" select="/"/>
      <axsl:apply-templates mode="M181" select="/"/>
      <axsl:apply-templates mode="M182" select="/"/>
      <axsl:apply-templates mode="M183" select="/"/>
      <axsl:apply-templates mode="M184" select="/"/>
      <axsl:apply-templates mode="M185" select="/"/>
      <axsl:apply-templates mode="M186" select="/"/>
      <axsl:apply-templates mode="M187" select="/"/>
      <axsl:apply-templates mode="M188" select="/"/>
      <axsl:apply-templates mode="M189" select="/"/>
      <axsl:apply-templates mode="M190" select="/"/>
      <axsl:apply-templates mode="M191" select="/"/>
      <axsl:apply-templates mode="M192" select="/"/>
      <axsl:apply-templates mode="M193" select="/"/>
      <axsl:apply-templates mode="M194" select="/"/>
      <axsl:apply-templates mode="M195" select="/"/>
      <axsl:apply-templates mode="M196" select="/"/>
      <axsl:apply-templates mode="M197" select="/"/>
      <axsl:apply-templates mode="M198" select="/"/>
      <axsl:apply-templates mode="M199" select="/"/>
      <axsl:apply-templates mode="M200" select="/"/>
      <axsl:apply-templates mode="M201" select="/"/>
      <axsl:apply-templates mode="M202" select="/"/>
      <axsl:apply-templates mode="M203" select="/"/>
      <axsl:apply-templates mode="M204" select="/"/>
      <axsl:apply-templates mode="M205" select="/"/>
      <axsl:apply-templates mode="M206" select="/"/>
      <axsl:apply-templates mode="M207" select="/"/>
      <axsl:apply-templates mode="M208" select="/"/>
      <axsl:apply-templates mode="M209" select="/"/>
      <axsl:apply-templates mode="M210" select="/"/>
      <axsl:apply-templates mode="M211" select="/"/>
      <axsl:apply-templates mode="M212" select="/"/>
      <axsl:apply-templates mode="M213" select="/"/>
      <axsl:apply-templates mode="M214" select="/"/>
      <axsl:apply-templates mode="M215" select="/"/>
      <axsl:apply-templates mode="M216" select="/"/>
      <axsl:apply-templates mode="M217" select="/"/>
      <axsl:apply-templates mode="M218" select="/"/>
      <axsl:apply-templates mode="M219" select="/"/>
      <axsl:apply-templates mode="M220" select="/"/>
      <axsl:apply-templates mode="M221" select="/"/>
      <axsl:apply-templates mode="M222" select="/"/>
      <axsl:apply-templates mode="M223" select="/"/>
      <axsl:apply-templates mode="M224" select="/"/>
      <axsl:apply-templates mode="M225" select="/"/>
      <axsl:apply-templates mode="M226" select="/"/>
      <axsl:apply-templates mode="M227" select="/"/>
      <axsl:apply-templates mode="M228" select="/"/>
      <axsl:apply-templates mode="M229" select="/"/>
      <axsl:apply-templates mode="M230" select="/"/>
      <axsl:apply-templates mode="M231" select="/"/>
      <axsl:apply-templates mode="M232" select="/"/>
      <axsl:apply-templates mode="M233" select="/"/>
      <axsl:apply-templates mode="M234" select="/"/>
      <axsl:apply-templates mode="M235" select="/"/>
      <axsl:apply-templates mode="M236" select="/"/>
      <axsl:apply-templates mode="M237" select="/"/>
      <axsl:apply-templates mode="M238" select="/"/>
      <axsl:apply-templates mode="M239" select="/"/>
      <axsl:apply-templates mode="M240" select="/"/>
      <axsl:apply-templates mode="M241" select="/"/>
      <axsl:apply-templates mode="M242" select="/"/>
      <axsl:apply-templates mode="M243" select="/"/>
      <axsl:apply-templates mode="M244" select="/"/>
      <axsl:apply-templates mode="M245" select="/"/>
      <axsl:apply-templates mode="M246" select="/"/>
      <axsl:apply-templates mode="M247" select="/"/>
      <axsl:apply-templates mode="M248" select="/"/>
      <axsl:apply-templates mode="M249" select="/"/>
      <axsl:apply-templates mode="M250" select="/"/>
      <axsl:apply-templates mode="M251" select="/"/>
      <axsl:apply-templates mode="M252" select="/"/>
      <axsl:apply-templates mode="M253" select="/"/>
      <axsl:apply-templates mode="M254" select="/"/>
      <axsl:apply-templates mode="M255" select="/"/>
      <axsl:apply-templates mode="M256" select="/"/>
      <axsl:apply-templates mode="M257" select="/"/>
      <axsl:apply-templates mode="M258" select="/"/>
    </axsl:variable>
    <err:ErrorResponse xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension" SchemaVersion="2.0">
      <axsl:copy-of select="$errors"/>
    </err:ErrorResponse>
  </axsl:template>

<!--SCHEMATRON PATTERNS-->


<!--PATTERN p2-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:IRheader/ct:Keys/ct:Key" mode="M4" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(/hd:GovTalkMessage/hd:GovTalkDetails/hd:Keys/hd:Key[@Type = current()/@Type and . = current()]) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">5005</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Keys in the GovTalkDetails do not match those in the IRheader.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Keys in the IR header must also exist in the GovTalk header with the same value</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M4" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M4" priority="-1"/>
  <axsl:template match="@*|node()" mode="M4" priority="-2">
    <axsl:apply-templates mode="M4" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p1-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:IRheader" mode="M5" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:Keys/ct:Key) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">5004</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">At least one key must exist in the IRHeader</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>At least one key must exist</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M5" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M5" priority="-1"/>
  <axsl:template match="@*|node()" mode="M5" priority="-2">
    <axsl:apply-templates mode="M5" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p4-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyInformation/ct:Reference" mode="M6" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../ct:IRheader/ct:Keys/ct:Key[@Type = &quot;UTR&quot; and . = current()]) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9100</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">There must be a Key element in the Irheader whose Type attribute is UTR and matches the 'Tax Reference'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>There must be a Key element in the Irheader whose Type attribute is UTR and whose content is the same as the entry in [Company reference].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M6" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M6" priority="-1"/>
  <axsl:template match="@*|node()" mode="M6" priority="-2">
    <axsl:apply-templates mode="M6" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p6-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyInformation/ct:PeriodCovered/ct:From" mode="M7" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &gt;= translate('1998-07-02','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9102</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period 'From' date must be on or after 02/07/1998.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From is valid if and only if it is on or after '1998-07-02'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(.)) div 86400) &lt; round(date:seconds(normalize-space(date:date())) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9103</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period 'From' date cannot be later than yesterday.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From Date cannot be later than yesterday</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space((.))) div 86400) &lt;= round(date:seconds(normalize-space('2015-03-31')) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9978</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period 'From' date must be on or before 31/03/2015.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[AP From Date] is valid only if this on or before '2015-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M7" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M7" priority="-1"/>
  <axsl:template match="@*|node()" mode="M7" priority="-2">
    <axsl:apply-templates mode="M7" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p7-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyInformation/ct:PeriodCovered/ct:To" mode="M8" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &gt;= translate('1999-07-01','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9104</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period 'To' date must be on or after 01/07/1999.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>To is valid if and only if it is on or after '1999-07-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &gt;= translate(../ct:From,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9105</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period 'To' date must be on or after the period 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>To is valid if and only if it is on or after [AP From Date]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(.)) div 86400) &lt;= round(date:seconds(normalize-space(date:date())) div 86400)) or ../../ct:CompanyType = 3"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9106</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period 'To' date cannot be later than today unless the type of company is 3 (Company in Liquidation (second or subsequent year of liquidation)).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>End date cannot be later than today unless [Company type] = 3.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M8" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M8" priority="-1"/>
  <axsl:template match="@*|node()" mode="M8" priority="-2">
    <axsl:apply-templates mode="M8" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p5-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyInformation/ct:PeriodCovered" mode="M9" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(date:add(normalize-space(string(ct:To)),normalize-space('-P12M')),'-','') &lt; translate(ct:From,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9101</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The period covered must not be longer than 12 months.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Period Covered must not be longer than 12 months</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M9" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M9" priority="-1"/>
  <axsl:template match="@*|node()" mode="M9" priority="-2">
    <axsl:apply-templates mode="M9" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p8-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:PartOfNonSmallGroup" mode="M10" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt;= translate('2008-03-31','-','')) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9107</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Your entry for 'Company is part of a group that is not small' can only be 'Yes' if the period 'To' date is on or after 01/04/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Part of non small group should not be present if [AP To Date] is on or before '2008-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M10" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M10" priority="-1"/>
  <axsl:template match="@*|node()" mode="M10" priority="-2">
    <axsl:apply-templates mode="M10" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p9-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:RegisteredAvoidanceScheme" mode="M11" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt;= translate('2004-03-31','-','')) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9108</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Your entry for 'Notice of disclosable avoidance schemes' can only be 'Yes' if the period 'To' date is on or after 01/04/2004.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Registered avoidance scheme should not be present if [AP To Date] is on or before '2004-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not ((.)) or ../../@ReturnType = 'amended' or ../ct:SupplementaryPages/ct:CT600J"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9109</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Your entry for 'Notice of disclosable avoidance schemes' is 'Yes' so you must also select 'Yes' for 'CT600J (Disclosure of tax avoidance scheme)'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If 'yes' then [CT600J attached] must also be 'yes' - unless [Return type] = 'amended'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M11" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M11" priority="-1"/>
  <axsl:template match="@*|node()" mode="M11" priority="-2">
    <axsl:apply-templates mode="M11" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p10-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:TransferPricing" mode="M12" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:Adjustment = 'yes' and ct:SME = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9110</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You cannot select 'Yes' for both 'Compensating adjustment claimed' and 'Company qualifies for SME exemption'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise> [Transfer Pricing adjustment] and [Transfer Pricing SME] cannot both be 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt;= translate('2004-03-31','-','')) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9111</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Your entry for 'Compensating adjustment claimed' or 'Company qualifies for SME exemption' can only be 'Yes' if the period 'To' date is on or after 01/04/2004.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Transfer pricing should not be present if [AP To Date] is on or before '2004-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M12" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M12" priority="-1"/>
  <axsl:template match="@*|node()" mode="M12" priority="-2">
    <axsl:apply-templates mode="M12" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p12-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:Accounts/ct:NoAccountsReason" mode="M13" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../ct:AttachedFiles/ct:XBRLsubmission/ct:Accounts) = 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9349</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage"> iXBRL Accounts are attached so ‘No accounts reason’ must not be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If present, then there must be no Accounts element as a child of [XBRL Submission]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'Amendment - a/cs already submitted') or (../../../@ReturnType = 'amended')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9115</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">'Amendment - accounts already submitted' is not a valid reason for a 'New' return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No accounts reason] = 'Amendment - a/cs already submitted' then [Return type] must equal 'amended'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = &quot;PDF accounts attached with explanation&quot;) or (count(../../../ct:AttachedFiles/ct:Attachment[@Type='accounts']) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9971</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage"> If ‘No accounts reason’ is completed with "PDF accounts attached with explanation", you must provide a set of PDF Accounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No accounts reason] is "PDF accounts attached with explanation", then there must be at least one instance of [Attachment] with type = 'accounts'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M13" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M13" priority="-1"/>
  <axsl:template match="@*|node()" mode="M13" priority="-2">
    <axsl:apply-templates mode="M13" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p11-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:Accounts" mode="M14" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:NoAccountsReason = &quot;PDF accounts attached with explanation&quot; or count(../../ct:AttachedFiles/ct:Attachment[@Type='accounts']) = 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9112</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You can only provide a set of PDF accounts if you also complete the ‘No accounts reason’ with the value of ‘PDF accounts attached with Explanation’ </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No accounts reason] is (absent or) not "PDF accounts attached with explanation", then there must be no instance of [Attachment] with a type attribute of 'accounts'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:NoAccountsReason or (count(../../ct:AttachedFiles/ct:XBRLsubmission/ct:Accounts) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9113</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You must provide a set of iXBRL accounts if the ‘No accounts reason’ is absent</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No accounts reason] is absent then the Accounts child of [XBRL Submission] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(not(ct:NoAccountsReason) or ct:NoAccountsReason = &quot;PDF accounts attached with explanation&quot;) or (count(ct:ThisPeriodAccounts) + count(ct:DifferentPeriod)) = 1"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9114</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If ‘No accounts reason’ is absent or has been completed with ‘PDF accounts attached with Explanation’ you must complete either ‘This period accounts’ or ‘Different period account’.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No accounts reason] is absent or "PDF accounts attached with explanation", then exactly one of [This period accounts tick box] or [Different period accounts tick box] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:NoAccountsReason) or ct:NoAccountsReason = &quot;PDF accounts attached with explanation&quot; or (count(ct:ThisPeriodAccounts) + count(ct:DifferentPeriod)) = 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9116</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If ‘No accounts reason’ is present and has not been completed with ‘PDF accounts attached with Explanation’ you must not complete either ‘This period accounts’ or ‘Different period account’.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No accounts reason] is present and not "PDF accounts attached with explanation", then neither [This period accounts tick box] nor [Different period accounts tick box] may be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M14" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M14" priority="-1"/>
  <axsl:template match="@*|node()" mode="M14" priority="-2">
    <axsl:apply-templates mode="M14" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p14-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:Computations/ct:NoComputationsReason" mode="M15" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../ct:AttachedFiles/ct:Attachment[@Type='computations']) = 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9117</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Computations are attached so a reason for no Computations must not be provided.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If present, then there must be no instance of [Attachment] with a type attribute of 'computations'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../ct:AttachedFiles/ct:XBRLsubmission/ct:Computation) = 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9118</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Computations are attached so a reason for no Computations must not be provided.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If present, then there must be no Computation element as a child of [XBRL Submission]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'Amendment - comps already submitted') or (../../../@ReturnType = 'amended')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9119</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">'Amendments - computations already submitted' is not a valid reason for a 'New' return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No computations reason] = 'Amendment - comps already submitted' then [Return type] must equal 'amended'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M15" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M15" priority="-1"/>
  <axsl:template match="@*|node()" mode="M15" priority="-2">
    <axsl:apply-templates mode="M15" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p13-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:Computations" mode="M16" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:NoComputationsReason or (count(../../ct:AttachedFiles/ct:Attachment[@Type='computations']) &gt; 0) or (count(../../ct:AttachedFiles/ct:XBRLsubmission/ct:Computation) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9965</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You must provide a Tax Computation with the Return if there is no valid reason not to supply it</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No computations reason] is absent, then there must be a Computations element as a child of [XBRL Submission], or at least one instance of [Attachment] with type = 'computations'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:NoComputationsReason or not((count(../../ct:AttachedFiles/ct:Attachment[@Type='computations']) &gt; 0) and (count(../../ct:AttachedFiles/ct:XBRLsubmission/ct:Computation) &gt; 0))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9966</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You cannot provide both an Inline XBRL and PDF Tax Computation with the return</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [No computations reason] is absent, then there must not be both a Computations element as a child of [XBRL Submission] and any instances of [Attachment] with type = 'computations'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M16" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M16" priority="-1"/>
  <axsl:template match="@*|node()" mode="M16" priority="-2">
    <axsl:apply-templates mode="M16" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p15-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600A" mode="M17" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:LoansByCloseCompanies"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9120</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600A must be present if 'CT600A (Loans to Participators by Close Companies)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If CT600A is yes and [Return type] = 'new', then [CT600A] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M17" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M17" priority="-1"/>
  <axsl:template match="@*|node()" mode="M17" priority="-2">
    <axsl:apply-templates mode="M17" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p16-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600B" mode="M18" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:ControlledForeignCompanies"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9121</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600B must be present if 'CT600B (Controlled Foreign Companies)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If CT600B is yes and [Return type] = 'new', then there must be a [CT600B] page present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M18" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M18" priority="-1"/>
  <axsl:template match="@*|node()" mode="M18" priority="-2">
    <axsl:apply-templates mode="M18" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p17-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600C" mode="M19" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:GroupAndConsortium"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9123</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600C must be present if 'CT600C (Group and Consortium)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If CT600C is yes and [Return type] = 'new', then there must be a [CT600C] page present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M19" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M19" priority="-1"/>
  <axsl:template match="@*|node()" mode="M19" priority="-2">
    <axsl:apply-templates mode="M19" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p18-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600D" mode="M20" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:Insurance"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9124</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600D must be present if 'CT600D (Insurance)' is 'Yes' and the return type is 'New'. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600D attached] is 'yes' and [Return type] = 'new', then [CT600D] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M20" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M20" priority="-1"/>
  <axsl:template match="@*|node()" mode="M20" priority="-2">
    <axsl:apply-templates mode="M20" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p19-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600E" mode="M21" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:Charity"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9125</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600E must be present if 'CT600E (Charities and Community Amateur Sports Clubs)' is 'Yes' and the return type is 'New'. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600E attached] is 'yes' and [Return type] = 'new', then [CT600E] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M21" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M21" priority="-1"/>
  <axsl:template match="@*|node()" mode="M21" priority="-2">
    <axsl:apply-templates mode="M21" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p20-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600F" mode="M22" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:TonnageTax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9126</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600F must be present if 'CT600F (Tonnage tax)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600F attached] is 'yes' and [Return type] = 'new', then [CT600F] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes') or ../../../ct:CompanyTaxCalculation/ct:Income/ct:IncomeWithinD/ct:TonnageTaxProfits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9127</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'CT600F (Tonnage tax)' is 'Yes' then Box 13 must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tonnage tax profits should be present if [CT600F attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M22" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M22" priority="-1"/>
  <axsl:template match="@*|node()" mode="M22" priority="-2">
    <axsl:apply-templates mode="M22" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p21-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600G" mode="M23" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:CorporateVenturingScheme"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9128</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600G must be present if 'CT600G (Corporate Venturing Scheme)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600G attached] is 'yes' and [Return type] = 'new', then [CT600G] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M23" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M23" priority="-1"/>
  <axsl:template match="@*|node()" mode="M23" priority="-2">
    <axsl:apply-templates mode="M23" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p22-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600H" mode="M24" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:CrossBorderRoyalties"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9129</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600H must be present if 'CT600H (Cross-border royalties)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600H attached] is 'yes' and [Return type] = 'new', then [CT600H] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../../ct:CompanyTaxCalculation/ct:Indicators/ct:CrossBorderRoyalty = 'yes') or not((.) = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9130</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'CT600H (Cross-border royalties)' is 'Yes' then Box 98 must also be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600H attached] is 'yes' then [98] must be 'yes'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space('2002-10-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400)) or not((.) = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9131</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'CT600H (Cross-border royalties)' is 'Yes' then the period 'To' date must be on or after 01/10/2002.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If CT600H is 'yes' then [AP To Date] must not be earlier than '2002-10-01'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M24" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M24" priority="-1"/>
  <axsl:template match="@*|node()" mode="M24" priority="-2">
    <axsl:apply-templates mode="M24" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p23-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600I" mode="M25" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:RingFenceTrade"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9132</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600I must be present if 'CT600I (Supplementary charge in respect of ring fence trade)' is 'Yes' and the return type is 'New'. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600I attached] is 'yes' and [Return type] = 'new', then [CT600I] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('2002-04-16')) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9133</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'CT600I (Supplementary charge in respect of ring fence trade)' is 'Yes' then the period 'From' date must be on or after 17/04/2002.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>CT600 i should not be present if [AP From Date] is on or before '2002-04-16'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M25" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M25" priority="-1"/>
  <axsl:template match="@*|node()" mode="M25" priority="-2">
    <axsl:apply-templates mode="M25" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p24-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600J" mode="M26" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../ct:RegisteredAvoidanceScheme = 'yes') or not((.) = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9134</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'CT600J (Disclosure of tax avoidance schemes)' is 'Yes' then 'Notice of disclosable avoidance schemes' must also be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600J attached] is 'yes' then [Registered avoidance scheme] must be 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2004-03-17')) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9135</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'CT600J (Disclosure of tax avoidance schemes)' is 'Yes' then the period 'To' date must be on or after 18/03/2004.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>CT600 j should not be present if [AP To Date] is on or before '2004-03-17'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes' and ../../../@ReturnType = 'new') or ../../../ct:TaxAvoidanceSchemes"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9136</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The form CT600J must be present if 'CT600J (Disclosure of tax avoidance schemes)' is 'Yes' and the return type is 'New'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600J attached] is 'yes' and [Return type] = 'new', then [CT600J] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M26" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M26" priority="-1"/>
  <axsl:template match="@*|node()" mode="M26" priority="-2">
    <axsl:apply-templates mode="M26" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p27-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:TradingAndProfessional/ct:LossesBroughtForward" mode="M27" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Profits)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9149</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 4 must not be greater than Box 3.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Losses brought forward is valid if and only if it does not exceed [3]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:Profits) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9150</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 4 can only be completed if Box 3 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Losses brought forward is present the following should be true: [3] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M27" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M27" priority="-1"/>
  <axsl:template match="@*|node()" mode="M27" priority="-2">
    <axsl:apply-templates mode="M27" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p28-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:TradingAndProfessional/ct:NetProfits" mode="M28" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:Profits) - sum(../ct:LossesBroughtForward)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9151</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 5 must equal Box 3 minus Box 4.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Net profits is valid if and only if it equals ( [3] minus [4] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9321</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 5 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [5] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M28" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M28" priority="-1"/>
  <axsl:template match="@*|node()" mode="M28" priority="-2">
    <axsl:apply-templates mode="M28" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p26-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:TradingAndProfessional" mode="M29" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(sum(ct:Profits) &gt; 0) or ct:NetProfits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9148</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 5 must be completed if Box 3 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Net profits should be present if [3] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M29" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M29" priority="-1"/>
  <axsl:template match="@*|node()" mode="M29" priority="-2">
    <axsl:apply-templates mode="M29" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p29-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:NonTradingLoanProfitsAndGains" mode="M30" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9322</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 6 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [6] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M30" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M30" priority="-1"/>
  <axsl:template match="@*|node()" mode="M30" priority="-2">
    <axsl:apply-templates mode="M30" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p30-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:IncomeStatedNet" mode="M31" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:NonTradingLoanProfitsAndGains) &gt;= 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9152</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 7 is completed then Box 6 must not be less than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [7] is present the following should be true: [6] is not less than 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M31" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M31" priority="-1"/>
  <axsl:template match="@*|node()" mode="M31" priority="-2">
    <axsl:apply-templates mode="M31" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p31-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:NonLoanAnnuitiesAnnualPaymentsDiscounts" mode="M32" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9323</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 8 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [8] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M32" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M32" priority="-1"/>
  <axsl:template match="@*|node()" mode="M32" priority="-2">
    <axsl:apply-templates mode="M32" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p32-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:OverseasIncome" mode="M33" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9324</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 9 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [9] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M33" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M33" priority="-1"/>
  <axsl:template match="@*|node()" mode="M33" priority="-2">
    <axsl:apply-templates mode="M33" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p33-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:DeductedIncome" mode="M34" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9325</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 10 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [10] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M34" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M34" priority="-1"/>
  <axsl:template match="@*|node()" mode="M34" priority="-2">
    <axsl:apply-templates mode="M34" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p34-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:LandAndBuildingIncome" mode="M35" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9326</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 11 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [11] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M35" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M35" priority="-1"/>
  <axsl:template match="@*|node()" mode="M35" priority="-2">
    <axsl:apply-templates mode="M35" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p36-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:IncomeWithinD/ct:NonTradingGainsIntangibles" mode="M36" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:IncomeWithinDTotal or ../../../../@Short or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9328</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 15 must be completed if the "Short" return flag does not equal 'yes' and Box 12 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[15] should be present if not ( [N111] ) and [12] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M36" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M36" priority="-1"/>
  <axsl:template match="@*|node()" mode="M36" priority="-2">
    <axsl:apply-templates mode="M36" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p37-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:IncomeWithinD/ct:TonnageTaxProfits" mode="M37" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600F = 'yes') or (../../../../@ReturnType = 'amended')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9154</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 13 can only be completed if 'CT600F (Tonnage tax)' is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Tonnage tax profits is present the following should be true: [CT600F attached] equals 'yes' or [Return type] equals 'amended'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../ct:TonnageTax/ct:TonnageTax/ct:QualifyingShips/ct:Total) or (. = ../../../../ct:TonnageTax/ct:TonnageTax/ct:QualifyingShips/ct:Total)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9155</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If there is an entry in Box F10 Box 13 must equal Box F10.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[13] must equal [F10] if [F10] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:IncomeWithinDTotal or ../../../../@Short or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9329</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 15 must be completed if the "Short" return flag does not equal 'yes' and Box 13 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[15] should be present if not ( [N111] ) and [13] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M37" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M37" priority="-1"/>
  <axsl:template match="@*|node()" mode="M37" priority="-2">
    <axsl:apply-templates mode="M37" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p38-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:IncomeWithinD/ct:ProfitsAndGainsNotAnyOtherHeading" mode="M38" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:IncomeWithinDTotal or ../../../../@Short or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9330</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 15 must be completed if the "Short" return flag does not equal 'yes' and Box 14 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[15] should be present if not ( [N111] ) and [14] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M38" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M38" priority="-1"/>
  <axsl:template match="@*|node()" mode="M38" priority="-2">
    <axsl:apply-templates mode="M38" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p39-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:IncomeWithinD/ct:IncomeWithinDTotal" mode="M39" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:NonTradingGainsIntangibles) + sum(../ct:TonnageTaxProfits) + sum(../ct:ProfitsAndGainsNotAnyOtherHeading)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9156</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 15 must equal the sum of Boxes 12, 13 and 14.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Income within dTotal is valid if and only if it equals ( The sum of [12], [13], and [14] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M39" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M39" priority="-1"/>
  <axsl:template match="@*|node()" mode="M39" priority="-2">
    <axsl:apply-templates mode="M39" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p35-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Income/ct:IncomeWithinD" mode="M40" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((sum(ct:NonTradingGainsIntangibles) + sum(ct:TonnageTaxProfits) + sum(ct:ProfitsAndGainsNotAnyOtherHeading)) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9327</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if (the sum of Boxes 12,13 and 14) is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if the sum of ( [12], [13], and [14] ) exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M40" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M40" priority="-1"/>
  <axsl:template match="@*|node()" mode="M40" priority="-2">
    <axsl:apply-templates mode="M40" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p40-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ChargeableGains/ct:AllowableLosses" mode="M41" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:GrossGains)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9157</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 17 must not be greater than Box 16.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Allowable losses is valid if and only if it does not exceed [16]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:GrossGains) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9158</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 17 can only be completed if Box 16 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Allowable losses is present the following should be true: [16] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M41" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M41" priority="-1"/>
  <axsl:template match="@*|node()" mode="M41" priority="-2">
    <axsl:apply-templates mode="M41" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p41-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ChargeableGains/ct:NetChargeableGains" mode="M42" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:GrossGains) - sum(../ct:AllowableLosses)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9159</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 18 must equal Box 16 minus Box 17.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Net chargeable gains is valid if and only if it equals ( [16] minus [17] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ProfitsBeforeOtherDeductions or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9331</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must be completed if Box 18 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should be present if [18] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M42" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M42" priority="-1"/>
  <axsl:template match="@*|node()" mode="M42" priority="-2">
    <axsl:apply-templates mode="M42" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p42-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:LossesBroughtForward" mode="M43" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../ct:Income/ct:NonTradingLoanProfitsAndGains) + sum(../ct:Income/ct:NonLoanAnnuitiesAnnualPaymentsDiscounts) + sum(../ct:Income/ct:OverseasIncome) + sum(../ct:Income/ct:DeductedIncome) + sum(../ct:Income/ct:LandAndBuildingIncome) + sum(../ct:Income/ct:IncomeWithinD/ct:IncomeWithinDTotal) + sum(../ct:ChargeableGains/ct:NetChargeableGains))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9160</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 19 must not be greater than the sum of Boxes 6, 8, 9, 10, 11, 15 and 18.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Losses brought forward is valid if and only if it does not exceed ( The sum of [6], [8], [9], [10], [11], [15], and [18] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M43" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M43" priority="-1"/>
  <axsl:template match="@*|node()" mode="M43" priority="-2">
    <axsl:apply-templates mode="M43" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p43-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:NonTradeDeficitsOnLoans" mode="M44" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - (((sum(../ct:Income/ct:NonTradingLoanProfitsAndGains) + sum(../ct:Income/ct:NonLoanAnnuitiesAnnualPaymentsDiscounts) + sum(../ct:Income/ct:OverseasIncome) + sum(../ct:Income/ct:DeductedIncome) + sum(../ct:Income/ct:LandAndBuildingIncome) + sum(../ct:Income/ct:IncomeWithinD/ct:IncomeWithinDTotal) + sum(../ct:ChargeableGains/ct:NetChargeableGains)) - sum(../ct:LossesBroughtForward))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9161</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 20 must not be greater than (the sum of Boxes 6, 8, 9, 10, 11, 15 and 18) minus Box 19.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non trade deficits on loans is valid if and only if it does not exceed ( ( The sum of [6], [8], [9], [10], [11], [15], and [18] ) minus [19] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M44" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M44" priority="-1"/>
  <axsl:template match="@*|node()" mode="M44" priority="-2">
    <axsl:apply-templates mode="M44" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p44-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ProfitsBeforeOtherDeductions" mode="M45" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (((sum(../ct:Income/ct:TradingAndProfessional/ct:NetProfits) + sum(../ct:Income/ct:NonTradingLoanProfitsAndGains) + sum(../ct:Income/ct:NonLoanAnnuitiesAnnualPaymentsDiscounts) + sum(../ct:Income/ct:OverseasIncome) + sum(../ct:Income/ct:DeductedIncome) + sum(../ct:Income/ct:LandAndBuildingIncome) + (sum(../ct:Income/ct:IncomeWithinD/ct:NonTradingGainsIntangibles) + sum(../ct:Income/ct:IncomeWithinD/ct:TonnageTaxProfits) + sum(../ct:Income/ct:IncomeWithinD/ct:ProfitsAndGainsNotAnyOtherHeading)) + sum(../ct:ChargeableGains/ct:NetChargeableGains)) - (sum(../ct:LossesBroughtForward) + sum(../ct:NonTradeDeficitsOnLoans))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9332</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 21 must equal (the sum of Boxes 5, 6, 8, 9,10, 11, 12, 13, 14 and 18 ) minus (the sum of Boxes 19 and Box 20 ) )</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[21] should equal ( ( The sum of [5], [6], [8], [9], [10], [11], [12], [13], [14], and [18] ) minus ( [19] plus [20] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M45" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M45" priority="-1"/>
  <axsl:template match="@*|node()" mode="M45" priority="-2">
    <axsl:apply-templates mode="M45" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p45-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:IncludesCVSLossRelief" mode="M46" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not ((.) = 'yes') or (../../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600G = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9164</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 23 is 'Yes' then 'CT600G (Corporate Venturing Scheme)' must also be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If box [23] is 'yes' then [CT600G attached] must be 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:CVSLossRelief) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9165</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 23 can only be 'Yes' if Box 22 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [23] is present the following should be true: [22] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M46" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M46" priority="-1"/>
  <axsl:template match="@*|node()" mode="M46" priority="-2">
    <axsl:apply-templates mode="M46" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p46-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:CVSLossRelief" mode="M47" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../ct:ProfitsBeforeOtherDeductions)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9166</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 22 must not be greater than Box 21.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>CVS loss relief is valid if and only if it does not exceed [21]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M47" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M47" priority="-1"/>
  <axsl:template match="@*|node()" mode="M47" priority="-2">
    <axsl:apply-templates mode="M47" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p47-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:ManagementExpenses" mode="M48" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - sum(../ct:CVSLossRelief))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9167</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 24 must not be greater than Box 21 minus Box 22.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Management expenses is valid if and only if it does not exceed ( [21] minus [22] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M48" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M48" priority="-1"/>
  <axsl:template match="@*|node()" mode="M48" priority="-2">
    <axsl:apply-templates mode="M48" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p48-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:InterestDistributions" mode="M49" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9168</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 25 must not be greater than Box 21 minus (the sum of Boxes 22 and 24).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Interest distributions is valid if and only if it does not exceed ( [21] minus ( [22] plus [24] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M49" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M49" priority="-1"/>
  <axsl:template match="@*|node()" mode="M49" priority="-2">
    <axsl:apply-templates mode="M49" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p49-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:ScheduleALosses" mode="M50" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9169</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 26 must not be greater than Box 21 minus (the sum of Boxes 22, 24,and 25).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Schedule A Losses is valid if and only if it does not exceed ( [21] minus ( The sum of [22], [24], and [25] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M50" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M50" priority="-1"/>
  <axsl:template match="@*|node()" mode="M50" priority="-2">
    <axsl:apply-templates mode="M50" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p50-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:CapitalAllowances" mode="M51" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions) + sum(../ct:ScheduleALosses)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9170</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 27 must not be greater than Box 21 minus (the sum of Boxes 22, 24, 25 and 26).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Capital allowances is valid if and only if it does not exceed ( [21] minus ( The sum of [22], [24], [25], and [26] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M51" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M51" priority="-1"/>
  <axsl:template match="@*|node()" mode="M51" priority="-2">
    <axsl:apply-templates mode="M51" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p51-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:NonTradeDeficits" mode="M52" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions) + sum(../ct:ScheduleALosses) + sum(../ct:CapitalAllowances)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9171</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 28 must not be greater than Box 21 minus (the sum of Boxes 22, 24, 25, 26 and 27).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non trade deficits is valid if and only if it does not exceed ( [21] minus ( The sum of [22], [24], [25], [26], and [27] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M52" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M52" priority="-1"/>
  <axsl:template match="@*|node()" mode="M52" priority="-2">
    <axsl:apply-templates mode="M52" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p52-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:NonTradingLossIntangibles" mode="M53" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../../ct:LossesDeficitsAndExcess/ct:NonTradingLossesIntangibles/ct:Arising)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9172</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 29 must be less than or equal to Box 132.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must be less than or equal to the arising element of [132].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions) + sum(../ct:ScheduleALosses) + sum(../ct:CapitalAllowances) + sum(../ct:NonTradeDeficits)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9173</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 29 must not be greater than Box 21 minus (the sum of Boxes  22, 24, 25, 26, 27 and 28).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non trading loss intangibles is valid if and only if it does not exceed ( [21] minus ( The sum of [22], [24], [25], [26], [27], and [28] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M53" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M53" priority="-1"/>
  <axsl:template match="@*|node()" mode="M53" priority="-2">
    <axsl:apply-templates mode="M53" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p53-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:TradingLossesS393AcarriedBack" mode="M54" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:TradingLosses) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9174</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 31 can only be 'Yes' if Box 30 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Trading losses S393A carried back is present the following should be true: [30] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M54" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M54" priority="-1"/>
  <axsl:template match="@*|node()" mode="M54" priority="-2">
    <axsl:apply-templates mode="M54" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p54-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:TradingLosses" mode="M55" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:TradingLossesS393AcarriedBack  or (. &lt;= sum(../../../ct:LossesDeficitsAndExcess/ct:CaseI/ct:Arising))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9175</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 30 must be less than or equal to Box 122 if Box 31 is not 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [31] is not 'yes' then [30] must be less than or equal to the arising element of [122].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions) + sum(../ct:ScheduleALosses) + sum(../ct:CapitalAllowances) + sum(../ct:NonTradeDeficits) + sum(../ct:NonTradingLossIntangibles)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9176</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 30 must not be greater than Box 21 minus (the sum of Boxes 22, 24, 25, 26, 27, 28, and 29).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Trading losses is valid if and only if it does not exceed ( [21] minus ( The sum of [22], [24], [25], [26], [27], [28], and [29] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M55" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M55" priority="-1"/>
  <axsl:template match="@*|node()" mode="M55" priority="-2">
    <axsl:apply-templates mode="M55" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p55-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:NonTradeCapitalAllowances" mode="M56" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions) + sum(../ct:ScheduleALosses) + sum(../ct:CapitalAllowances) + sum(../ct:NonTradeDeficits) + sum(../ct:NonTradingLossIntangibles) + sum(../ct:TradingLosses)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9178</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 32 must not be greater than Box 21 minus (the sum of Boxes 22, 24, 25, 26, 27, 28, 29 and 30).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non trade capital allowances is valid if and only if it does not exceed ( [21] minus ( The sum of [22], [24], [25], [26], [27], [28], [29], and [30] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M56" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M56" priority="-1"/>
  <axsl:template match="@*|node()" mode="M56" priority="-2">
    <axsl:apply-templates mode="M56" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p56-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:Total" mode="M57" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../ct:ProfitsBeforeOtherDeductions)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9179</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 33 must not be greater than Box 21.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total is valid if and only if it does not exceed [21]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:CVSLossRelief) + sum(../ct:ManagementExpenses) + sum(../ct:InterestDistributions) + sum(../ct:ScheduleALosses) + sum(../ct:CapitalAllowances) + sum(../ct:NonTradeDeficits) + sum(../ct:NonTradingLossIntangibles) + sum(../ct:TradingLosses) + sum(../ct:NonTradeCapitalAllowances)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9180</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 33 must equal (the sum of Boxes 22, 24, 25, 26, 27, 28, 29, 30 and 32).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total is valid if and only if it equals ( The sum of [22], [24], [25], [26], [27], [28], [29], [30], and [32] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M57" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M57" priority="-1"/>
  <axsl:template match="@*|node()" mode="M57" priority="-2">
    <axsl:apply-templates mode="M57" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p57-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:ProfitsBeforeCharges" mode="M58" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../../ct:DeductionsAndReliefs/ct:CVSLossRelief) + sum(../../ct:DeductionsAndReliefs/ct:ManagementExpenses) + sum(../../ct:DeductionsAndReliefs/ct:InterestDistributions) + sum(../../ct:DeductionsAndReliefs/ct:ScheduleALosses) + sum(../../ct:DeductionsAndReliefs/ct:CapitalAllowances) + sum(../../ct:DeductionsAndReliefs/ct:NonTradeDeficits) + sum(../../ct:DeductionsAndReliefs/ct:NonTradingLossIntangibles) + sum(../../ct:DeductionsAndReliefs/ct:TradingLosses) + sum(../../ct:DeductionsAndReliefs/ct:NonTradeCapitalAllowances))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9333</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 34 must equal ( Box 21 minus ( the sum of Boxes 22, 24, 25, 26, 27, 28 , 29, 30 and 32) )</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[34] should equal ( [21] minus ( The sum of [22], [24], [25], [26], [27], [28], [29], [30], and [32] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:ChargesPaid) &lt;= ."/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9334</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 34 is present Box 35 must not be greater than Box 34</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [34] present then [35] must not exceed [34]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((../../ct:ChargeableProfits) - ((. - (sum(../ct:ChargesPaid) + sum(../ct:GroupRelief))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9335</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 34 is present Box 37 must equal Box 34 minus (the sum of Boxes 35 and 36)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [34] is present then [37] must equal [34] minus ( [35] + [36] ).</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M58" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M58" priority="-1"/>
  <axsl:template match="@*|node()" mode="M58" priority="-2">
    <axsl:apply-templates mode="M58" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p58-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:ChargesPaid" mode="M59" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ProfitsBeforeCharges or ((.) - ((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../../ct:DeductionsAndReliefs/ct:CVSLossRelief) + sum(../../ct:DeductionsAndReliefs/ct:ManagementExpenses) + sum(../../ct:DeductionsAndReliefs/ct:InterestDistributions) + sum(../../ct:DeductionsAndReliefs/ct:ScheduleALosses) + sum(../../ct:DeductionsAndReliefs/ct:CapitalAllowances) + sum(../../ct:DeductionsAndReliefs/ct:NonTradeDeficits) + sum(../../ct:DeductionsAndReliefs/ct:NonTradingLossIntangibles) + sum(../../ct:DeductionsAndReliefs/ct:TradingLosses) + sum(../../ct:DeductionsAndReliefs/ct:NonTradeCapitalAllowances)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9336</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 34 is absent Box 35 must not be greater than Box 21 minus (the sum of Boxes 22, 24, 25, 26, 27, 28, 29, 30 and 32)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [34] is absent then [35] must not exceed [21] minus ([22] + [24] + [25] + [26] + [27] + [28] + [29] + [30] + F019])</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M59" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M59" priority="-1"/>
  <axsl:template match="@*|node()" mode="M59" priority="-2">
    <axsl:apply-templates mode="M59" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p59-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:GroupRelief" mode="M60" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - (((sum(../../ct:ProfitsBeforeOtherDeductions) - (sum(../../ct:DeductionsAndReliefs/ct:CVSLossRelief) + sum(../../ct:DeductionsAndReliefs/ct:ManagementExpenses) + sum(../../ct:DeductionsAndReliefs/ct:InterestDistributions) + sum(../../ct:DeductionsAndReliefs/ct:ScheduleALosses) + sum(../../ct:DeductionsAndReliefs/ct:CapitalAllowances) + sum(../../ct:DeductionsAndReliefs/ct:NonTradeDeficits) + sum(../../ct:DeductionsAndReliefs/ct:NonTradingLossIntangibles) + sum(../../ct:DeductionsAndReliefs/ct:TradingLosses) + sum(../../ct:DeductionsAndReliefs/ct:NonTradeCapitalAllowances))) - sum(../ct:ChargesPaid))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9337</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 36 must not be greater than ( ( Box 21 minus ( the sum of Boxes 22, 24, 25, 26, 27, 28, 29, 30, and 32 ) ) minus box 35 )</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[36] should not exceed ( ( [21] minus ( The sum of [22], [24], [25], [26], [27], [28], [29], [30], and [32] ) ) minus [35] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../@ReturnType = 'new') or (.) &lt;= 0 or ../../../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:CompanyInformation/ct:TotalAmountClaimed"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9954</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If return type is 'New' and there is an entry greater than zero in Box 36 then C1 must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Return type] is 'new' and there is an entry greater than zero in [36] then [C1] must be submitted.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600C = 'yes') or (../../../@ReturnType = 'amended')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9185</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 36 can only be completed if 'CT600C (Group and Consortium)' is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Group relief is present the following should be true: [CT600C attached] equals 'yes' or [Return type] equals 'amended'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../@ReturnType = 'new') or (.) &lt;= 0 or ../../../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:ClaimAuthorisation/ct:AuthorisationOptions/ct:SimplifiedArrangementInForce or ../../../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:ClaimAuthorisation/ct:AuthorisationOptions/ct:CopyOfNoticesOfConsentAttached"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9955</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If return type is 'New' and there is amn entry greater than zero in Box 36 then  'Simplified Arrangement in Force' or 'Copy Of Notices of Consent Attached' must be present [Copy of notices of consent attached] must be present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Return type] is 'new' and [36] is greater than zero then one or both of [Simplified arrangement in force] or [Copy of notices of consent attached] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M60" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M60" priority="-1"/>
  <axsl:template match="@*|node()" mode="M60" priority="-2">
    <axsl:apply-templates mode="M60" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p60-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:ChargeableProfits" mode="M61" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = sum(../ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:Profit) + sum(../ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:Profit)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9186</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 37 must equal the sum of Boxes 44, 47, 50, 54, 57 and 60.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>This must equal the sum of all iterations of [44] + the sum of all iterations of [54].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ChargesAndReliefs/ct:ProfitsBeforeCharges or (math:abs((.) - ((sum(../ct:ProfitsBeforeOtherDeductions) - (sum(../ct:DeductionsAndReliefs/ct:CVSLossRelief) + sum(../ct:DeductionsAndReliefs/ct:ManagementExpenses) + sum(../ct:DeductionsAndReliefs/ct:InterestDistributions) + sum(../ct:DeductionsAndReliefs/ct:ScheduleALosses) + sum(../ct:DeductionsAndReliefs/ct:CapitalAllowances) + sum(../ct:DeductionsAndReliefs/ct:NonTradeDeficits) + sum(../ct:DeductionsAndReliefs/ct:NonTradingLossIntangibles) + sum(../ct:DeductionsAndReliefs/ct:TradingLosses) + sum(../ct:DeductionsAndReliefs/ct:NonTradeCapitalAllowances) + sum(../ct:ChargesAndReliefs/ct:ChargesPaid) + sum(../ct:ChargesAndReliefs/ct:GroupRelief))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9338</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 34 is absent box 37 must equal Box 21 minus (the sum of Boxes 22, 24, 25, 26, 27, 28, 29, 30 and 32) minus (the sum of Boxes 35 and 36)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [34] is absent then [37] must equal [21] minus ([22] + [24] + [25] + [26] + [27] + [28] + [29] + [30] + [32]) minus ([35] + [36])</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(date:year(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('-P3M')))) - date:year(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From),normalize-space('-P3M')))) != 1) or ../ct:CorporationTaxChargeable/ct:FinancialYearTwo or not((.) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9188</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Financial year two information must be provided if Box 37 is greater than 0 (zero) and the period 'To' date falls in the financial year following that of the period 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[53-56] must be submitted if [37] &gt; 0 and [AP To Date] falls in the financial year following the financial year of [AP From Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M61" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M61" priority="-1"/>
  <axsl:template match="@*|node()" mode="M61" priority="-2">
    <axsl:apply-templates mode="M61" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p61-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:RingFenceProfitsIncluded" mode="M62" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= translate('2007-04-01','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9189</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 169 can only be completed if the period 'To' date is on or after 01/04/2007.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Ring fence profits included is present the following should be true: [AP To Date] is on or after '2007-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= ../ct:ChargeableProfits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9190</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 169 must not be greater than Box 37.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Ring fence profits included is valid if and only if it does not exceed [37]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600I = 'yes') or (../../@ReturnType = 'amended')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9956</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 169 is completed then 'CT600I (Supplementary charge in respect of ring fence trade)' must be 'Yes' or return type must be 'Amended'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [169] is present the following should be true: ( [CT600I attached] equals yes ) or ( [Return type] equals amended )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M62" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M62" priority="-1"/>
  <axsl:template match="@*|node()" mode="M62" priority="-2">
    <axsl:apply-templates mode="M62" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p62-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxCalculation/ct:StartingOrSmallCompaniesRate" mode="M63" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ChargeableProfits &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9192</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 42 can only be 'Yes if Box 37 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Starting or small companies rate is present the following should be true: [37] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(                       ../../../ct:CompanyInformation/ct:CompanyType = 1                     or                       ../../../ct:CompanyInformation/ct:CompanyType = 2                     or                        ../../../ct:CompanyInformation/ct:CompanyType = 3                     )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9193</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 42 must not be 'Yes' if the type of company is 1 (Unit trust or open-ended investment company), 2 (Close investment - holding company) or 3 (Company in Liquidation (second or subsequent year of liquidation)).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] = 1, 2 or 3 then [42] must be absent.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M63" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M63" priority="-1"/>
  <axsl:template match="@*|node()" mode="M63" priority="-2">
    <axsl:apply-templates mode="M63" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p63-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Year" mode="M64" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(.) = date:year(normalize-space(date:add(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space('-P3M'))))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9195</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 43 must equal the equivalent financial year of the period 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal the equivalent financial year of the date in [AP From Date] (nb. This will be the same year as that entered in [AP From Date] if [AP From Date] is between 1st of April and 31st of December inclusive, or the year before that entered in [AP From Date] if 1st of January and 31st March inclusive).</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &gt;= 1998"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9196</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 43 cannot be earlier than 1998.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Year is valid if and only if it is not less than 1998</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (                     date:year(normalize-space(date:add(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space('-P3M')))) = date:year(normalize-space(date:add(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)),normalize-space('-P3M'))))                   )                   or (                     sum(../ct:Details/ct:Profit) = ../../../ct:ChargeableProfits                   )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9197</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The sum of Boxes 44, 47 and 50 must equal Box 37 where the period 'From' and 'To' dates are in the same financial year. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Where [AP From Date] and [AP To Date] are in the same financial year, the sum of all iterations of [44] must equal [37].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="date:year(normalize-space(date:add(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space('-P3M')))) = date:year(normalize-space(date:add(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)),normalize-space('-P3M'))))                     or                       sum(../ct:Details/ct:Profit) = round(../../../ct:ChargeableProfits * round((date:seconds(normalize-space(date:difference(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(concat( (.) + 1 , '-03-31'))))) div 86400) + 1) div round((date:seconds(normalize-space(date:difference(normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9198</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Where the period 'From' and 'To' dates are in different financial years, the sum of Boxes 44, 47 and 50 must equal Box 37, apportioned to the first financial year.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Where [AP From Date] and [AP To Date] are in different financial years: Sum of all iterations of [44] must equal [37] divided by the number of days between [AP From Date] and [AP To Date] inclusive multiplied by the number of days between [AP From Date] and the end of financial year [43] (inclusive). Rounding is applied such that values from x.5 upwards are rounded up, and values less than x.5 are rounded down (where x represents a whole number).</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M64" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M64" priority="-1"/>
  <axsl:template match="@*|node()" mode="M64" priority="-2">
    <axsl:apply-templates mode="M64" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p64-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:TaxRate" mode="M65" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 5)                     or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &lt;= 2014) and (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1996-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1996-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2007-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &gt;= 2000 and number(../../ct:Year) &lt;= 2005) and (math:abs((.) - (number((round(date:seconds(normalize-space('2000-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     10  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     0)) &lt; 0.001))                     or                       ((math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1993-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1993-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1994-04-01')) div 86400))) *     22.5  +     number((round(date:seconds(normalize-space('1994-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     30)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     19)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9199</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">An applicable tax rate from one of [FULL RATE OF CT], [SMALL CO RATE OF CT], [STARTING RATE OF CT], [EQUIV. LOW CT RATE], [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT] must be used if the type of company is 5 (Insurance).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] = '5' then [45] must equal an applicable value from the following selection: [FULL RATE OF CT]  or [SMALL CO RATE OF CT] or [STARTING RATE OF CT] or [EQUIV. LOW CT RATE] or [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../ct:CompanyInformation/ct:CompanyType                     or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &lt;= 2014) and (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1996-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1996-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2007-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &gt;= 2000 and number(../../ct:Year) &lt;= 2005) and (math:abs((.) - (number((round(date:seconds(normalize-space('2000-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     10  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     0)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     30)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     19)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9200</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">An applicable tax rate from one of [FULL RATE OF CT], [SMALL CO RATE OF CT], [STARTING RATE OF CT], [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT] must be used if the type of company is not completed. If [SMALL CO RATE OF CT] or [RF SMALL CO RATE OF CT] is used then Box 42 must be completed. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] is absent then [45] must equal an applicable value from the following selection: [FULL RATE OF CT]  or [SMALL CO RATE OF CT] or [STARTING RATE OF CT] or [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 4 or ../../../../../ct:CompanyInformation/ct:CompanyType = 6 or ../../../../../ct:CompanyInformation/ct:CompanyType = 7 or ../../../../../ct:CompanyInformation/ct:CompanyType = 8 or ../../../../../ct:CompanyInformation/ct:CompanyType = 9)                     or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &lt;= 2014) and (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1996-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1996-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2007-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &gt;= 2000 and number(../../ct:Year) &lt;= 2005) and (math:abs((.) - (number((round(date:seconds(normalize-space('2000-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     10  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     0)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9201</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the type of company is 4 (Investment trust with housing investment profits),  6 (Members' club or voluntary association), 7 (Property management company), 8 (Charity or owed by a charity) or 9 (Real Estate Investment Trust - Residual) then this must equal an applicable tax rate from one of [FULL RATE OF CT], [SMALL CO RATE OF CT] or [STARTING RATE OF CT].</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] = '4' or '6' or '7' or '8' or '9' then [45] must equal an applicable value from the following selection: [FULL RATE OF CT]  or [SMALL CO RATE OF CT] or [STARTING RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 1) or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1993-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1993-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1994-04-01')) div 86400))) *     22.5  +     number((round(date:seconds(normalize-space('1994-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9202</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The tax rate of [EQUIV. LOW CT RATE] must be used if the type of company is 1 (Unit trust or open-ended investment company).    </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] is 1, [45] must be [EQUIV. LOW CT RATE].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 2 or ../../../../../ct:CompanyInformation/ct:CompanyType = 3) or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9203</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The tax rate of [FULL RATE OF CT] must be used if the type of company is 2 (Close investment - holding company) or 3 (Company in Liquidation (second or subsequent year of liquidation)).     </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] is 2 or 3, [45] must be [FULL RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M65" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M65" priority="-1"/>
  <axsl:template match="@*|node()" mode="M65" priority="-2">
    <axsl:apply-templates mode="M65" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p65-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:Tax" mode="M66" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (( round ( (../ct:Profit * (translate(string(../ct:TaxRate),'.',''))) div 100 ) * 100) div 10000)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9204</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Tax' must equal the 'Amount of profit' multiplied by 'Rate of tax'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>For each iteration of [44-46], [46] Must equal [44] multiplied by ([45] divided by 100) rounded to two decimal places (round up if third decimal is greater than or equal to 5, otherwise round down)</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M66" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M66" priority="-1"/>
  <axsl:template match="@*|node()" mode="M66" priority="-2">
    <axsl:apply-templates mode="M66" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p67-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Year" mode="M67" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../../ct:FinancialYearOne/ct:Year + 1))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9207</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 53 must equal Box 43 plus one.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Year is valid if and only if it equals ( [43] plus 1 )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M67" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M67" priority="-1"/>
  <axsl:template match="@*|node()" mode="M67" priority="-2">
    <axsl:apply-templates mode="M67" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p68-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:TaxRate" mode="M68" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 5)                     or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &lt;= 2014) and (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1996-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1996-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2007-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &gt;= 2000 and number(../../ct:Year) &lt;= 2005) and (math:abs((.) - (number((round(date:seconds(normalize-space('2000-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     10  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     0)) &lt; 0.001))                     or                       ((math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1993-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1993-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1994-04-01')) div 86400))) *     22.5  +     number((round(date:seconds(normalize-space('1994-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     30)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     19)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9208</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Rate of tax' must equal an applicable tax rate from one of [FULL RATE OF CT], [SMALL CO RATE OF CT], [STARTING RATE OF CT], [EQUIV. LOW CT RATE], [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT] if the type of company is 5 (Insurance).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] = '5' then [55] must equal an applicable value from the following selection: [FULL RATE OF CT]  or [SMALL CO RATE OF CT] or [STARTING RATE OF CT] or [EQUIV. LOW CT RATE] or [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../ct:CompanyInformation/ct:CompanyType                     or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &lt;= 2014) and (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1996-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1996-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2007-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &gt;= 2000 and number(../../ct:Year) &lt;= 2005) and (math:abs((.) - (number((round(date:seconds(normalize-space('2000-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     10  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     0)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     30)) &lt; 0.001))                     or                       (((number(../../ct:Year) &gt;= 2007) and (../../../../ct:RingFenceProfitsIncluded or ../../../../ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded or ../../../../ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included or ../../../../ct:S501AtaxCharge)) and (../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (math:abs((.) - (number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     19)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9209</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Rate of tax' must equal an applicable tax rate from one of [FULL RATE OF CT], [SMALL CO RATE OF CT], [STARTING RATE OF CT], [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT] if the type of company is not completed. If [SMALL CO RATE OF CT] or [RF SMALL CO RATE OF CT] is used then Box 42 must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] is absent then [55] must equal an applicable value from the following selection: [FULL RATE OF CT]  or [SMALL CO RATE OF CT] or [STARTING RATE OF CT] or [FULL RF RATE OF CT] or [RF SMALL CO RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 4 or ../../../../../ct:CompanyInformation/ct:CompanyType = 6 or ../../../../../ct:CompanyInformation/ct:CompanyType = 7 or ../../../../../ct:CompanyInformation/ct:CompanyType = 8 or ../../../../../ct:CompanyInformation/ct:CompanyType = 9)                     or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &lt;= 2014) and (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1996-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1996-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2007-04-01')) div 86400))) *     19  +     number((round(date:seconds(normalize-space('2007-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     20  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001))                     or                       ((../../../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes') and (number(../../ct:Year) &gt;= 2000 and number(../../ct:Year) &lt;= 2005) and (math:abs((.) - (number((round(date:seconds(normalize-space('2000-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2002-04-01')) div 86400))) *     10  +     number((round(date:seconds(normalize-space('2002-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     0)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9210</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Rate of tax' must equal an applicable tax rate from one of [FULL RATE OF CT], [SMALL CO RATE OF CT] or [STARTING RATE OF CT] if the type of company is 4 (Investment trust with housing investment profits), 6 (Members' club or voluntary association), 7 (Property management company), 8 (Charity or owed by a charity) or 9 (Real Estate Investment Trust - Residual).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] = '4' or '6' or '7' or '8' or '9' then [55] must equal an applicable value from the following selection: [FULL RATE OF CT]  or [SMALL CO RATE OF CT] or [STARTING RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 1) or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1993-04-01')) div 86400))) *     25  +     number((round(date:seconds(normalize-space('1993-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1994-04-01')) div 86400))) *     22.5  +     number((round(date:seconds(normalize-space('1994-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9211</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Rate of tax' must equal [EQUIV. LOW CT RATE] if the type of company is 1 (Unit trust or open-ended investment company).    </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] is 1, [55] must be [EQUIV. LOW CT RATE].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../../../ct:CompanyInformation/ct:CompanyType = 2 or ../../../../../ct:CompanyInformation/ct:CompanyType = 3) or                       (math:abs((.) - (number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1997-04-01')) div 86400))) *     33  +     number((round(date:seconds(normalize-space('1997-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('1999-04-01')) div 86400))) *     31  +     number((round(date:seconds(normalize-space('1999-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *     30  +     number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2011-04-01')) div 86400))) *     28  +     number((round(date:seconds(normalize-space('2011-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *     26  +     number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2013-04-01')) div 86400))) *     24  +     number((round(date:seconds(normalize-space('2013-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *     23  +     number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *      number((round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400) &lt; round(date:seconds(normalize-space('2015-04-01')) div 86400))) *     21  +     number((round(date:seconds(normalize-space('2015-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(concat(../../ct:Year, '-04-01'))) div 86400))) *     20)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9212</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Rate of tax' must equal [FULL RATE OF CT] if the type of company' is 2 (Close investment - holding company) or 3 (Company in liquidation (second or subsequent year of liquidation)).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Company type] is 2 or 3, [55] must be [FULL RATE OF CT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M68" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M68" priority="-1"/>
  <axsl:template match="@*|node()" mode="M68" priority="-2">
    <axsl:apply-templates mode="M68" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p69-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:Tax" mode="M69" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (( round ( (../ct:Profit * (translate(string(../ct:TaxRate),'.',''))) div 100 ) * 100) div 10000)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9213</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">For the second financial year 'Tax' must equal the 'Amount of profit' multiplied by 'Rate of tax'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>For each iteration of the group: The box [56] must equal [54] multiplied by ([55] divided by 100) rounded to two decimal places (round up if third decimal is greater than or equal to 5, otherwise round down).</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M69" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M69" priority="-1"/>
  <axsl:template match="@*|node()" mode="M69" priority="-2">
    <axsl:apply-templates mode="M69" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p66-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:CorporationTaxChargeable/ct:FinancialYearTwo" mode="M70" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="date:year(normalize-space(date:add(normalize-space(../../../ct:CompanyInformation/ct:PeriodCovered/ct:From),normalize-space('-P3M')))) != date:year(normalize-space(date:add(normalize-space(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('-P3M'))))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9206</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Financial year two information must not be completed if the accounting period falls within the same financial year.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[53-56] must not be submitted if [AP From Date] and [AP To Date] both fall within the same financial year.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M70" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M70" priority="-1"/>
  <axsl:template match="@*|node()" mode="M70" priority="-2">
    <axsl:apply-templates mode="M70" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p70-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TotalChargeableCorporationTax" mode="M71" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:Tax) + sum(../ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:Tax))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9214</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 63 must equal the sum of Boxes 46, 49, 52, 56, 59 and 62.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The box [63] must equal the sum all iterations of [46] + all iterations of [56]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M71" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M71" priority="-1"/>
  <axsl:template match="@*|node()" mode="M71" priority="-2">
    <axsl:apply-templates mode="M71" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p72-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:MarginalRateRelief" mode="M72" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt; sum(../../ct:TotalChargeableCorporationTax)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9216</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 64 must be less than Box 63.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Marginal rate relief is valid if and only if it is less than [63]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../../ct:CompanyInformation/ct:CompanyType = 4)                 or                    (../../../ct:CompanyInformation/ct:CompanyType = 5)                 or                    (../../../ct:CompanyInformation/ct:CompanyType = 6)                 or                    (../../../ct:CompanyInformation/ct:CompanyType = 7)                 or                    (../../../ct:CompanyInformation/ct:CompanyType = 8)                 or                    (../../../ct:CompanyInformation/ct:CompanyType = 9)                 or                    not(../../../ct:CompanyInformation/ct:CompanyType)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9217</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 64 can only be completed if the type of company is 4 (Investment trust with housing investment profits),  5 (Insurance), 6 (Members' club or voluntary association), 7 (Property management company), 8 (Charity or owed by a charity), 9 (Real Estate Investment Trust Residual) or not completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Marginal rate relief is present the following should be true: [Company type] equals '4' or [Company type] equals '5' or [Company type] equals '6' or [Company type] equals '7' or [Company type] equals '8' or [Company type] equals '9' or not ( [Company type] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:TaxCalculation/ct:StartingOrSmallCompaniesRate = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9317</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 64 is completed then Box 42 must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [64] is present the following should be true: [42] equals yes</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M72" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M72" priority="-1"/>
  <axsl:template match="@*|node()" mode="M72" priority="-2">
    <axsl:apply-templates mode="M72" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p73-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:CTNetOfMRR" mode="M73" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../../ct:TotalChargeableCorporationTax) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9218</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 65 can only be completed if Box 63 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If CT Net of MRR is present the following should be true: [63] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../../ct:TotalChargeableCorporationTax) - sum(../ct:MarginalRateRelief)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9219</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 65 must equal Box 63 minus Box 64. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>CT Net of MRR is valid if and only if it equals ( [63] minus [64] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M73" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M73" priority="-1"/>
  <axsl:template match="@*|node()" mode="M73" priority="-2">
    <axsl:apply-templates mode="M73" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p75-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:UnderlyingRateOfCT" mode="M74" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - (19) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9225</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 66 must not be greater than [NCD RATE OF CT].</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must not be greater than [NCD RATE OF CT]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2006-03-31')) div 86400)))                     or                   (sum(../../ct:CTNetOfMRR) = 0 and (.) = 0)                     or                   (not(sum(../../ct:CTNetOfMRR) = 0) and not(0 = ../../../ct:ChargeableProfits) and ((math:abs((.) - (floor((100 * (translate(string(../../ct:CTNetOfMRR),'.',''))) div ../../../ct:ChargeableProfits) div 100)) &lt; 0.001)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9226</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 66 must equal (Box 65 divided by Box 37) multiplied by 100, if the period 'To' date is on or before 31/03/2006. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP To Date] is on or before '2006-03-31' then the box [66] must equal [65] divided by [37] multiplied by 100</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M74" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M74" priority="-1"/>
  <axsl:template match="@*|node()" mode="M74" priority="-2">
    <axsl:apply-templates mode="M74" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p76-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:NonCorporateDistributions" mode="M75" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(translate(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From,'-','') &gt;= translate('2004-04-01','-',''))                       or                     (translate(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt; translate('2004-04-01','-',''))                       or                     (. &lt;= sum(../../../ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:Profit))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9228</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 67 must not be greater than the sum of Boxes 54, 57 and 60 if the Accounting period straddles 01/04/2004.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is strictly before '2004-04-01' and [AP To Date] is on or after '2004-04-01' then [67] must not exceed the sum of all iterations of [54]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(translate(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From,'-','') &gt; translate('2006-03-31','-',''))                       or                     (translate(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt;= translate('2006-03-31','-',''))                       or                     (. &lt;= sum(../../../ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:Profit))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9229</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 67 must not be greater than the sum of Boxes 44, 47 and 50 if the Accounting period straddles 31/03/2006.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or before '2006-03-31'' and [AP To Date] is strictly after '2006-03-31'' then [67] must not exceed the sum of all iterations of [44]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= ../../../ct:ChargeableProfits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9230</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 67 must not be greater than Box 37. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non corporate distributions is valid if and only if it does not exceed [37]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M75" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M75" priority="-1"/>
  <axsl:template match="@*|node()" mode="M75" priority="-2">
    <axsl:apply-templates mode="M75" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p77-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtNCDRate" mode="M76" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:NonCorporateDistributions * 19) div 100)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9231</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 68 must equal Box 67 multiplied by [NCD RATE OF CT] divided by 100.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal [67] multiplied by (the current [NCD RATE OF CT] divided by 100)</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M76" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M76" priority="-1"/>
  <axsl:template match="@*|node()" mode="M76" priority="-2">
    <axsl:apply-templates mode="M76" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p78-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtUnderlyingRate" mode="M77" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2006-03-31')) div 86400))) or (math:abs((.) - (( round ( ((../../../ct:ChargeableProfits - ../ct:NonCorporateDistributions) * (translate(string(../ct:UnderlyingRateOfCT),'.',''))) div 100 ) * 100) div 10000)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9232</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 69 must equal Box 37 minus Box 67, multiplied by Box 66 divided by 100 if the period 'To' date is on or before 31/03/2006. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP To Date] is on or before '2006-03-31', then the box [69] must equal ([37] minus [67]) multiplied by [66] divided by 100, with the following rounding rules: round up to two decimal places if the third decimal digit is greater than or equal to 5, otherwise round down to 2dp</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('2006-03-31')) div 86400)) and (round(date:seconds(normalize-space('2006-03-31')) div 86400) &lt; round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400)))                   or                   (math:abs((.) - (( round ( (((sum(../../../ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:Profit) - ../ct:NonCorporateDistributions) * (translate(string(../ct:UnderlyingRateOfCT),'.','')))) div 100 ) * 100) div 10000)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9233</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 69 must equal the sum of Boxes 44, 47 and 50 minus Box 67, multiplied by Box 66 divided by 100, if the Accounting period straddles 31/03/2006. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or before '2006-03-31' and [AP To Date] is strictly after '2006-03-31', then [69] must equal (the sum of all iterations of [44] minus [67]) multiplied by [66] divided by 100, with the following rounding rules: round up to two decimal places if the third decimal digit is greater than or equal to 5, otherwise round down to 2dp.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M77" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M77" priority="-1"/>
  <axsl:template match="@*|node()" mode="M77" priority="-2">
    <axsl:apply-templates mode="M77" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p74-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation" mode="M78" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:From,'-','') &gt;= translate('2006-04-01','-','')) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9221</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Boxes 66, 67, 68 and 69 must not be completed if the period 'From' date is on or after 01/04/2006. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non corporate distributions calculation should not be present if [AP From Date] is on or after '2006-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt;= translate('2004-03-31','-','')) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9222</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Boxes 66, 67, 68 and 69 must not be completed if the period 'To' date is on or before 31/03/2004. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Non corporate distributions calculation should not be present if [AP To Date] is on or before '2004-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ChargeableProfits &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9223</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Boxes 66, 67, 68 and 69 can only be completed if Box 37 is greater than 0 (zero). </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Non corporate distributions calculation is present the following should be true: [37] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ChargeableProfits &lt;= 50000.00"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9224</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Boxes 66, 67, 68 and 69 can only be completed if Box 37 is equal to or less than [Non Corporate Distributions Limit]. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Non corporate distributions calculation is present the following should be true: [37] does not exceed [Non Corporate Distributions Limit]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M78" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M78" priority="-1"/>
  <axsl:template match="@*|node()" mode="M78" priority="-2">
    <axsl:apply-templates mode="M78" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p71-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:FurtherTaxCalculations" mode="M79" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(sum(ct:MarginalRateRelief) &gt; 0) or ct:CTNetOfMRR"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9215</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 65 must be completed if Box 64 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>CT Net of MRR should be present if [64] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M79" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M79" priority="-1"/>
  <axsl:template match="@*|node()" mode="M79" priority="-2">
    <axsl:apply-templates mode="M79" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p79-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:NetCorporationTaxChargeable" mode="M80" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation)               or              (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2006-03-31')) div 86400))               or             (math:abs((.) - (sum(../ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:Tax) + sum(../ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtNCDRate) + sum(../ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtUnderlyingRate))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9234</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'To' date is after 31/03/2006 and non corporate distributions calculation is completed then box 70 must equal the sum of Boxes 56, 59 and 62 plus box 68 and box 69.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If the group [66-69] is present and [AP To Date] is strictly after '2006-03-31' then [70] box must equal the sum of all iterations of [56] plus ([68] + [69]).</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M80" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M80" priority="-1"/>
  <axsl:template match="@*|node()" mode="M80" priority="-2">
    <axsl:apply-templates mode="M80" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p81-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:CVSInvestmentRelief" mode="M81" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= ../../ct:NetCorporationTaxChargeable"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9239</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 71 must not be greater than Box 70.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>CVS investment relief is valid if and only if it does not exceed [70]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600G = 'yes') or (../../../@ReturnType = 'amended')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9240</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 71 can only be completed if 'CT600G (Corporate Venturing Scheme)' is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If CVS investment relief is present the following should be true: [CT600G attached] equals 'yes' or [Return type] equals 'amended'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M81" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M81" priority="-1"/>
  <axsl:template match="@*|node()" mode="M81" priority="-2">
    <axsl:apply-templates mode="M81" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p82-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:CommunityInvestmentTaxCredit" mode="M82" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((../../ct:NetCorporationTaxChargeable - sum(../ct:CVSInvestmentRelief))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9241</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 72 must not be greater than Box 70 minus Box 71.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Community investment tax credit is valid if and only if it does not exceed ( [70] minus [71] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M82" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M82" priority="-1"/>
  <axsl:template match="@*|node()" mode="M82" priority="-2">
    <axsl:apply-templates mode="M82" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p83-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:DoubleTaxation/ct:DoubleTaxationRelief" mode="M83" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((../../../ct:NetCorporationTaxChargeable - (sum(../../ct:CVSInvestmentRelief) + sum(../../ct:CommunityInvestmentTaxCredit)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9242</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 73 must not be greater than Box 70 minus (the sum of Boxes 71 and 72).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Double taxation relief is valid if and only if it does not exceed ( [70] minus ( [71] plus [72] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M83" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M83" priority="-1"/>
  <axsl:template match="@*|node()" mode="M83" priority="-2">
    <axsl:apply-templates mode="M83" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p84-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:DoubleTaxation/ct:UnderlyingRate" mode="M84" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:DoubleTaxationRelief) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9244</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 74 can only be 'Yes' if Box 73 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Underlying rate is present the following should be true: [73] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M84" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M84" priority="-1"/>
  <axsl:template match="@*|node()" mode="M84" priority="-2">
    <axsl:apply-templates mode="M84" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p85-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:DoubleTaxation/ct:AmountCarriedBack" mode="M85" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:DoubleTaxationRelief) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9245</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 75 can only be 'Yes' if Box 73 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Amount carried back is present the following should be true: [73] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M85" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M85" priority="-1"/>
  <axsl:template match="@*|node()" mode="M85" priority="-2">
    <axsl:apply-templates mode="M85" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p86-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:AdvanceCorporationTax" mode="M86" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((../../ct:NetCorporationTaxChargeable - (sum(../ct:CVSInvestmentRelief) + sum(../ct:CommunityInvestmentTaxCredit) + sum(../ct:DoubleTaxation/ct:DoubleTaxationRelief)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9246</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 76 must not be greater than Box 70 minus (the sum of Boxes 71, 72 and 73).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Advance corporation tax is valid if and only if it does not exceed ( [70] minus ( The sum of [71], [72], and [73] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M86" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M86" priority="-1"/>
  <axsl:template match="@*|node()" mode="M86" priority="-2">
    <axsl:apply-templates mode="M86" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p87-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions" mode="M87" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:CVSInvestmentRelief) + sum(../ct:CommunityInvestmentTaxCredit) + sum(../ct:DoubleTaxation/ct:DoubleTaxationRelief) + sum(../ct:AdvanceCorporationTax)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9247</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 77 must equal the sum of Boxes 71, 72, 73 and 76.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total reliefs and deductions is valid if and only if it equals ( The sum of [71], [72], [73], and [76] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M87" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M87" priority="-1"/>
  <axsl:template match="@*|node()" mode="M87" priority="-2">
    <axsl:apply-templates mode="M87" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p80-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions" mode="M88" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CVSInvestmentRelief) or ct:TotalReliefsAndDeductions"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9235</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 77 must be completed if Box 71 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total reliefs and deductions should be present if [71]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CommunityInvestmentTaxCredit) or ct:TotalReliefsAndDeductions"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9236</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 77 must be completed if Box 72 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total reliefs and deductions should be present if [72]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:DoubleTaxation/ct:DoubleTaxationRelief) or ct:TotalReliefsAndDeductions"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9237</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 77 must be completed if Box 73 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total reliefs and deductions should be present if [73]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not( ct:AdvanceCorporationTax) or ct:TotalReliefsAndDeductions"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9238</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 77 must be completed if Box 76 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total reliefs and deductions should be present if [76]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M88" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M88" priority="-1"/>
  <axsl:template match="@*|node()" mode="M88" priority="-2">
    <axsl:apply-templates mode="M88" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p88-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:NetCorporationTaxLiability" mode="M89" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:NetCorporationTaxChargeable - sum(../ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9248</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 78 must equal Box 70 minus Box 77.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Net corporation tax liability is valid if and only if it equals ( [70] minus [77] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:TaxChargeable) or (math:abs((sum(../ct:TaxChargeable)) - (((.) + sum(../ct:Payable) + sum(../ct:TaxPayableS747) + sum(../ct:S501AtaxCharge)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9339</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 78 is present Box 83 must equal (the sum of Boxes 78, 79, 81 and 82)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [78] is present, then [83] should equal [78] + [79] + [81] + [82].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:TaxChargeable or ../../@Short"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9340</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 83 must be completed if the "Short" return flag does not equal 'yes' and Box 78 is present</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[83] should be present if not ( [N111] ) and [78]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M89" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M89" priority="-1"/>
  <axsl:template match="@*|node()" mode="M89" priority="-2">
    <axsl:apply-templates mode="M89" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p89-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:A11Completed" mode="M90" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:Payable"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9249</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 80 can only be 'Yes' if there is an entry in Box 79.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If A11 completed is present the following should be true: [79]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(                   (../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600A = 'yes') and not(../../ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:ReliefDue)                 ) or (                   not((.) = 'yes')                 )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9250</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 80 can only be 'Yes' if there is an entry in Box A11.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600A attached] = 'yes' and [A11] is absent, [80] must not be 'yes'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(                   (../../@ReturnType = 'new') and not(../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600A = 'yes')                 ) or (                   not((.))                 )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9251</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 80 must not be 'Yes' if 'CT600A (Loans to Participators by Close Companies)' is not 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Return type] = 'new' and [CT600A attached] is not 'yes' then [80] must not be 'yes'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M90" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M90" priority="-1"/>
  <axsl:template match="@*|node()" mode="M90" priority="-2">
    <axsl:apply-templates mode="M90" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p90-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:Payable" mode="M91" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(((../../@ReturnType = 'new') and not(../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600A = 'yes')) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9252</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You must not enter an amount in Box 79 if the return type is 'New' and 'CT600A (Loans to Participators by Close Companies)' is not 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Payable should not be present if [Return type] equals 'new' and [CT600A attached] != 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:TaxChargeable or ../../@Short"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9341</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 83 must be completed if the "Short" return flag does not equal 'yes' and Box 79 is present</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[83] should be present if not ( [N111] ) and [79]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M91" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M91" priority="-1"/>
  <axsl:template match="@*|node()" mode="M91" priority="-2">
    <axsl:apply-templates mode="M91" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p91-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxPayableS747" mode="M92" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:TaxChargeable or ../../@Short"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9342</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 83 must be completed if the "Short" return flag does not equal 'yes' and Box 81 is present</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[83] should be present if not ( [N111] ) and [81]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(((../../@ReturnType = 'new') and (not(../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600B = 'yes'))) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9253</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 81 can only be present in an original return if the CT600B (Controlled Foreign Companies) is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tax payable s747 should not be present if [Return type] equals 'new' and [CT600B attached] != 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M92" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M92" priority="-1"/>
  <axsl:template match="@*|node()" mode="M92" priority="-2">
    <axsl:apply-templates mode="M92" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p92-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:S501AtaxCharge" mode="M93" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(((../../@ReturnType = 'new') and (not(../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600I = 'yes'))) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9254</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 82 can only be present in an original return if the CT600I (Supplementary charge in respect of ring fence trade) is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>S501A tax charge should not be present if [Return type] equals 'new' and [CT600I attached] != 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:TaxChargeable or ../../@Short"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9343</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 83 must be completed if the "Short" return flag does not equal 'yes' and Box 82 is present</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[83] should be present if not ( [N111] ) and [82]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M93" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M93" priority="-1"/>
  <axsl:template match="@*|node()" mode="M93" priority="-2">
    <axsl:apply-templates mode="M93" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p93-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxChargeable" mode="M94" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:NetCorporationTaxLiability or (math:abs((.) - (((../ct:NetCorporationTaxChargeable - sum(../ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions)) + sum(../ct:Payable) + sum(../ct:TaxPayableS747) + sum(../ct:S501AtaxCharge)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9344</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 78 is absent Box 83 must equal Box 70 minus Box 77 plus (the sum of Boxes 79, 81 and 82)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [78] is absent, then [83] should equal [70] minus [77] + [79] + [81] + [82].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:IncomeTax/ct:TaxRepayable) or (math:abs((sum(../ct:IncomeTax/ct:TaxRepayable)) - ((sum(../ct:IncomeTax/ct:DeductedIncomeTax) - (.)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9345</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 83 is present Box 85 must equal Box 84 minus Box 83.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [83] is present then [85] must equal [84] - [83].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M94" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M94" priority="-1"/>
  <axsl:template match="@*|node()" mode="M94" priority="-2">
    <axsl:apply-templates mode="M94" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p94-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:IncomeTax/ct:TaxRepayable" mode="M95" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:TaxChargeable or (math:abs(((.)) - ((sum(../ct:DeductedIncomeTax) + sum(../../ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions) - (../../ct:NetCorporationTaxChargeable + sum(../../ct:Payable) + sum(../../ct:TaxPayableS747) + sum(../../ct:S501AtaxCharge))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9346</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 83 is absent then Box 85 must equal Box 84 plus Box 77 minus (the sum of Box 70, 79, 81 and 82 )</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [83] is absent then [85] must equal [84] + [77] minus ([70] + [79] + [81] + [82])</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M95" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M95" priority="-1"/>
  <axsl:template match="@*|node()" mode="M95" priority="-2">
    <axsl:apply-templates mode="M95" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p95-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxPayable" mode="M96" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:TaxChargeable) or ((((sum(../ct:TaxChargeable) - sum(../ct:IncomeTax/ct:DeductedIncomeTax))) - (0) &gt; -0.001) and (math:abs((.) - ((sum(../ct:TaxChargeable) - sum(../ct:IncomeTax/ct:DeductedIncomeTax)))) &lt; 0.001)) or ((((sum(../ct:TaxChargeable) - sum(../ct:IncomeTax/ct:DeductedIncomeTax))) - (0) &lt;= -0.001) and (. = 0))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9347</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 83 is present Box 86 must equal Box 83 minus Box 84, where the result is equal to or greater than 0 (zero). If the result is negative please enter 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [83] is present then [86] must equal [83] minus [84], where the result is equal to or greater than zero. Enter 0.00 if [83] minus [84] is negative.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:TaxChargeable or ((((../ct:NetCorporationTaxChargeable + sum(../ct:Payable) + sum(../ct:TaxPayableS747) + sum(../ct:S501AtaxCharge) - (sum(../ct:IncomeTax/ct:DeductedIncomeTax) + sum(../ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions)))) - (0) &gt; -0.001) and (math:abs((.) - ((../ct:NetCorporationTaxChargeable + sum(../ct:Payable) + sum(../ct:TaxPayableS747) + sum(../ct:S501AtaxCharge) - (sum(../ct:IncomeTax/ct:DeductedIncomeTax) + sum(../ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions))))) &lt; 0.001)) or ((((../ct:NetCorporationTaxChargeable + sum(../ct:Payable) + sum(../ct:TaxPayableS747) + sum(../ct:S501AtaxCharge) - (sum(../ct:IncomeTax/ct:DeductedIncomeTax) + sum(../ct:TaxReliefsAndDeductions/ct:TotalReliefsAndDeductions)))) - (0) &lt;= -0.001) and (. = 0))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9348</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 83 is absent then Box 86 must equal (the sum of Boxes 70, 79, 81 and 82) minus (the sum of Box 84 plus Box 77 ), where the result is equal to or greater than 0 (zero). If the result is negative please enter 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [83] is absent then [86] must equal ([70] + [79] + [81] + [82]) minus ([84] + [77]), where the result is equal to or greater than zero. Enter 0.00 if that sum is negative.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M96" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M96" priority="-1"/>
  <axsl:template match="@*|node()" mode="M96" priority="-2">
    <axsl:apply-templates mode="M96" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p96-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:RandDCredit" mode="M97" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20000401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9258</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 87 can only be completed if the period 'To' date is on or after 01/04/2000.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If R and D Credit is present the following should be true: [AP To Date] is on or after '2000-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M97" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M97" priority="-1"/>
  <axsl:template match="@*|node()" mode="M97" priority="-2">
    <axsl:apply-templates mode="M97" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p97-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:LandOrLifeCredit" mode="M98" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20010401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9259</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 88 can only be completed if the period 'To' date is on or after 01/04/2001.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If land or life credit is present the following should be true: [AP To Date] is on or after '2001-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M98" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M98" priority="-1"/>
  <axsl:template match="@*|node()" mode="M98" priority="-2">
    <axsl:apply-templates mode="M98" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p98-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:CapitalAllowancesFirstYearTaxCredit" mode="M99" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20080401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9260</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 170 can only be completed if the period 'To' date is on or after 01/04/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Capital allowances first year tax credit is present the following should be true: [AP To Date] is on or after '2008-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M99" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M99" priority="-1"/>
  <axsl:template match="@*|node()" mode="M99" priority="-2">
    <axsl:apply-templates mode="M99" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p99-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:RDCreditPayable" mode="M100" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(((sum(../ct:RandDCredit) - ../../ct:TaxPayable) - (0) &lt;= -0.001) and (. = 0)) or (((sum(../ct:RandDCredit) - ../../ct:TaxPayable) - (0) &gt; -0.001) and (math:abs((.) - (sum(../ct:RandDCredit) - ../../ct:TaxPayable)) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9261</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 89 must equal Box 87 minus Box 86 where the result is equal to or greater than 0 (zero). If the result is negative please enter 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[89] must equal [87] minus [86], where the result is equal to or greater than zero. Enter 0.00 if [87] minus [86] is negative</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20000401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9262</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 89 can only be completed if the period 'To' date is on or after 01/04/2000.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If RDCredit payable is present the following should be true: [AP To Date] is on or after '2000-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M100" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M100" priority="-1"/>
  <axsl:template match="@*|node()" mode="M100" priority="-2">
    <axsl:apply-templates mode="M100" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p100-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:LandOrLifeCreditPayable" mode="M101" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(((sum(../ct:RandDCredit) + sum(../ct:LandOrLifeCredit) - (../../ct:TaxPayable + sum(../ct:RDCreditPayable))) - (0) &lt;= -0.001) and (. = 0)) or (((sum(../ct:RandDCredit) + sum(../ct:LandOrLifeCredit) - (../../ct:TaxPayable + sum(../ct:RDCreditPayable))) - (0) &gt; -0.001) and (math:abs((.) - (sum(../ct:RandDCredit) + sum(../ct:LandOrLifeCredit) - (../../ct:TaxPayable + sum(../ct:RDCreditPayable)))) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9263</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 90 must equal (the sum of Box 87 plus Box 88) minus (the sum of Box 86 plus Box 89) where the result is equal to or greater than 0 (zero). If the result is negative please enter 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[90] must equal ([87] + [88]) minus ([86] + [89]), where the result is equal to or greater than zero. Enter 0.00 if ([87] + [88]) minus ([86] + [89]) is negative</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:LandOrLifeCredit)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9264</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 90 must not be greater than Box 88.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Land or life credit payable is valid if and only if it does not exceed [88]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20010401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9265</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 90 can only be completed if the period 'To' date is on or after 01/04/2001.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If land or life credit payable is present the following should be true: [AP To Date] is on or after '2001-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M101" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M101" priority="-1"/>
  <axsl:template match="@*|node()" mode="M101" priority="-2">
    <axsl:apply-templates mode="M101" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p101-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:CapitalAllowancesFirstYearTaxCreditPayable" mode="M102" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20080401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9266</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 171 can only be completed if the period 'To' date is on or after 01/04/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Capital allowances first year tax credit payable is present the following should be true: [AP To Date] is on or after '2008-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:CapitalAllowancesFirstYearTaxCredit)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9267</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 171 must not be greater than Box 170.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Capital allowances first year tax credit payable is valid if and only if it does not exceed [170]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(((sum(../ct:RandDCredit) + sum(../ct:LandOrLifeCredit) + sum(../ct:CapitalAllowancesFirstYearTaxCredit) - ( ../../ct:TaxPayable + sum(../ct:RDCreditPayable) + sum(../ct:LandOrLifeCreditPayable) )) - (0) &lt;= -0.001) and ((.) = 0)) or (((sum(../ct:RandDCredit) + sum(../ct:LandOrLifeCredit) + sum(../ct:CapitalAllowancesFirstYearTaxCredit) - ( ../../ct:TaxPayable + sum(../ct:RDCreditPayable) + sum(../ct:LandOrLifeCreditPayable) )) - (0) &gt; -0.001) and (math:abs((.) - (sum(../ct:RandDCredit) + sum(../ct:LandOrLifeCredit) + sum(../ct:CapitalAllowancesFirstYearTaxCredit) - ( ../../ct:TaxPayable + sum(../ct:RDCreditPayable) + sum(../ct:LandOrLifeCreditPayable) ))) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9268</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 171 must equal (the sum of Boxes 87, 88 and 170) minus (the sum of Boxes 86, 89 and 90) where the result is equal to or greater than 0 (zero). If the result is negative please enter 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[171] must equal ([87] + [88] + [170]) minus ([86] + [89] + [90]), where the result is equal to or greater than zero. Enter 0.00 if ([87] + [88] + [170]) minus ([86] + [89] + [90]) is negative.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M102" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M102" priority="-1"/>
  <axsl:template match="@*|node()" mode="M102" priority="-2">
    <axsl:apply-templates mode="M102" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p102-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded" mode="M103" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(((../../../@ReturnType = 'new') and (not(../../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600I = 'yes'))) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9269</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return type is 'New' and Box I10 is present then Box 161 must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Ring fence corp tax included should not be present if [Return type] equals 'new' and [CT600I attached] != 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= ../../ct:TaxPayable"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9270</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 161 must not be greater than Box 86.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[161] should not exceed [86]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../@ReturnType = 'new')                 or  (../../../ct:RingFenceTrade/ct:RingFenceCorpTaxIncluded and (../../../ct:RingFenceTrade/ct:RingFenceCorpTaxIncluded = .))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9271</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 161 is completed and return type is 'New' then Box I10 must be completed and equal to Box 161.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [161] is present and [Return type] is 'new' then [I10] must be present and equal to [161].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M103" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M103" priority="-1"/>
  <axsl:template match="@*|node()" mode="M103" priority="-2">
    <axsl:apply-templates mode="M103" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p103-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included" mode="M104" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../ct:S501AtaxCharge)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9272</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 166 must not be greater than Box 82.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tax under S501A ICTA 1988 included is valid if and only if it does not exceed [82]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(((../../../@ReturnType = 'new') and (not(../../../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600I = 'yes'))) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9273</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return type is 'New' and Box I11 is completed then Box 166 must also be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tax under S501A ICTA 1988 included should not be present if [Return type] equals 'new' and [CT600I attached] != 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../@ReturnType = 'new')                 or  (../../../ct:RingFenceTrade/ct:TaxUnderS501AICTA1988 and (../../../ct:RingFenceTrade/ct:TaxUnderS501AICTA1988 = .))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9274</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 166 is completed and return type is 'New' then Box I11 must be completed and equal to Box 166.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [166] is present and [Return type] is 'new' then [I11] must be present and equal to [166].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M104" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M104" priority="-1"/>
  <axsl:template match="@*|node()" mode="M104" priority="-2">
    <axsl:apply-templates mode="M104" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p105-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:TaxOutstandingOrOverpaid/ct:TaxOutstanding" mode="M105" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((../../../ct:TaxPayable - (sum(../../ct:RandDCredit) + sum(../../ct:LandOrLifeCredit) + sum(../../ct:CapitalAllowancesFirstYearTaxCredit) + sum(../../ct:TaxAlreadyPaid))) - (0) &gt; -0.001) and (math:abs((.) - (../../../ct:TaxPayable - (sum(../../ct:RandDCredit) + sum(../../ct:LandOrLifeCredit) + sum(../../ct:CapitalAllowancesFirstYearTaxCredit) + sum(../../ct:TaxAlreadyPaid)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9276</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 92 must equal Box 86 minus (the sum of Boxes 87, 88, 170 and 91) where the result is equal to or greater than 0 (zero). If the result is negative Box 92 must not be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[92] must equal [86] minus ([87] + [88] + [170] + [91]), where the result is equal to or greater than zero. Must not be present if [86] minus ([87] + [88] + [170] + [91]) is negative.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M105" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M105" priority="-1"/>
  <axsl:template match="@*|node()" mode="M105" priority="-2">
    <axsl:apply-templates mode="M105" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p106-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:TaxOutstandingOrOverpaid/ct:TaxOverpaid" mode="M106" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((sum(../../ct:RandDCredit) + sum(../../ct:LandOrLifeCredit) + sum(../../ct:CapitalAllowancesFirstYearTaxCredit) + sum(../../ct:TaxAlreadyPaid) - ../../../ct:TaxPayable) - (0) &gt; -0.001) and (math:abs((.) - (sum(../../ct:RandDCredit) + sum(../../ct:LandOrLifeCredit) + sum(../../ct:CapitalAllowancesFirstYearTaxCredit) + sum(../../ct:TaxAlreadyPaid) - ../../../ct:TaxPayable)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9277</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 93 must equal (the sum of Boxes 87, 88, 170 and 91) minus Box 86 where the result is equal to or greater than 0 (zero). If the result is negative Box 93 must not be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[93] must equal ([87] + [88] + [170] + [91]) minus [86], where the result is equal to or greater than zero. Must not be present if ([87] + [88] + [170] + [91]) minus [86] is negative.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M106" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M106" priority="-1"/>
  <axsl:template match="@*|node()" mode="M106" priority="-2">
    <axsl:apply-templates mode="M106" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p104-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:TaxOutstandingOrOverpaid" mode="M107" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:TaxOutstanding)                       or                     not(ct:TaxOverpaid)                       or                     (ct:TaxOutstanding = 0 and ct:TaxOverpaid = 0 )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9275</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Only one of Boxes 92 and 93 can be completed unless both are zero (0). </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Either one or neither of [92] and [93] must be present (unless both are zero)</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M107" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M107" priority="-1"/>
  <axsl:template match="@*|node()" mode="M107" priority="-2">
    <axsl:apply-templates mode="M107" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p25-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CompanyTaxCalculation" mode="M108" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation or (math:abs((ct:NetCorporationTaxChargeable) - ((sum(ct:TotalChargeableCorporationTax) - sum(ct:FurtherTaxCalculations/ct:MarginalRateRelief)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9137</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 67 is not completed then Box 70 must equal Box 63 minus Box 64.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If the group [66-69] is absent, then [70] must equal [63] minus [64].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation)               or              not((round(date:seconds(normalize-space(../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2006-03-31')) div 86400)))               or             ((((sum(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtNCDRate) + sum(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtUnderlyingRate))) - ((sum(ct:TotalChargeableCorporationTax) - sum(ct:FurtherTaxCalculations/ct:MarginalRateRelief))) &gt; -0.001) and (math:abs((ct:NetCorporationTaxChargeable) - ((sum(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtNCDRate) + sum(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtUnderlyingRate)))) &lt; 0.001))               or             ((((sum(ct:TotalChargeableCorporationTax) - sum(ct:FurtherTaxCalculations/ct:MarginalRateRelief))) - ((sum(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtNCDRate) + sum(ct:FurtherTaxCalculations/ct:NonCorporateDistributionsCalculation/ct:TaxAtUnderlyingRate))) &gt; -0.001) and (math:abs((ct:NetCorporationTaxChargeable) - ((sum(ct:TotalChargeableCorporationTax) - sum(ct:FurtherTaxCalculations/ct:MarginalRateRelief)))) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9138</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 67 is completed then Box 70 must equal the greater of (Box 68 plus Box 69) or (Box 63 minus Box 64).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If the group [66-69] is present and [AP To Date] is on or before '2006-03-31', then the box [70] must equal the greater of ([68] + [69]) or ([63] - [64])</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((count(../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:TotalAmountClaimed) + count(../ct:TonnageTax/ct:TonnageTax/ct:OffshoreTrainingAllowance/ct:OffsetAgainstCorpTax)) = 1)               or                 ((sum(ct:TaxReliefsAndDeductions/ct:DoubleTaxation/ct:DoubleTaxationRelief)) - (sum(../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:TotalAmountClaimed) + sum(../ct:TonnageTax/ct:TonnageTax/ct:OffshoreTrainingAllowance/ct:OffsetAgainstCorpTax)) &gt; -0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9140</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If there is an entry in only one of Box C3 or Box F8 then Box 73 must be greater than or equal to that entry.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If one of [C3] or [F8] is present then [73] must be present and greater than or equal to that value.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:TotalAmountClaimed and ../ct:TonnageTax/ct:TonnageTax/ct:OffshoreTrainingAllowance/ct:OffsetAgainstCorpTax) or                                                          (ct:TaxReliefsAndDeductions/ct:DoubleTaxation/ct:DoubleTaxationRelief and ((sum(ct:TaxReliefsAndDeductions/ct:DoubleTaxation/ct:DoubleTaxationRelief)) - ((sum(../ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:TotalAmountClaimed) + sum(../ct:TonnageTax/ct:TonnageTax/ct:OffshoreTrainingAllowance/ct:OffsetAgainstCorpTax))) &gt; -0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9141</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If there are entries in both Box C3 and Box F8 then Box 73 must be greater than or equal to the sum of those entries.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If both of [C3] and [F8] are present then [73] must be present and equal to or greater than the total of those two values, even if this is an amended return.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:ChargeableProfits &gt; 0) or ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Year"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9144</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 43 must be completed if Box 37 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Year should be present if [37] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CorporationTaxChargeable/ct:FinancialYearOne/ct:Details/ct:Tax or ct:CorporationTaxChargeable/ct:FinancialYearTwo/ct:Details/ct:Tax) or ct:TotalChargeableCorporationTax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9146</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 63 must be completed if Box 46 or Box 56 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total chargeable corporation tax should be present if [46] or [56] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M108" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M108" priority="-1"/>
  <axsl:template match="@*|node()" mode="M108" priority="-2">
    <axsl:apply-templates mode="M108" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p107-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:ClaimingEnhancedExpenditureForFilm" mode="M109" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes') or sum(../ct:RandDEnhancedExpenditure) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9279</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 167 can only be 'Yes' if Box 101 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If 'yes' then [101] must be greater than zero</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space('2006-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9280</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 167 can only be 'Yes' if the period 'To' date is on or after the 01/04/2006.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Claiming enhanced expenditure for film is present the following should be true: [AP To Date] is on or after '2006-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M109" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M109" priority="-1"/>
  <axsl:template match="@*|node()" mode="M109" priority="-2">
    <axsl:apply-templates mode="M109" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p108-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:SMEclaimRandD" mode="M110" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = &quot;yes&quot;)                  or (sum(../ct:RandDEnhancedExpenditure) &gt; 0)                 or (sum(../ct:SMEclaimAsLargeCompany) &gt; 0)                 or (sum(../ct:VaccineResearch) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9281</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 99 can only be 'Yes' if at least one of the boxes 101, 102 or 103 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If 'yes' then there must be an entry greater than 0.00 in at least one of [101] and [102] and [103].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((../ct:LargeCompanyClaimRandD = 'yes') and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9282</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 99 must not be 'Yes' if Box 100 is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[99] should not be present if [100] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M110" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M110" priority="-1"/>
  <axsl:template match="@*|node()" mode="M110" priority="-2">
    <axsl:apply-templates mode="M110" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p109-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:LargeCompanyClaimRandD" mode="M111" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(not((.) = 'yes')) or (sum(../ct:RandDEnhancedExpenditure) &gt; 0) or (sum(../ct:VaccineResearch) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9283</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 100 can only be 'Yes' if at least one of the boxes 101 or 103 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [100] is 'yes' then there must be an entry greater than 0.00 in at least one of [101] and [103].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((../ct:SMEclaimRandD = 'yes') and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9284</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 100 must not be 'Yes' if Box 99 is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Large company claim rand d should not be present if [99] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M111" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M111" priority="-1"/>
  <axsl:template match="@*|node()" mode="M111" priority="-2">
    <axsl:apply-templates mode="M111" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p110-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:RandDEnhancedExpenditure" mode="M112" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../ct:ClaimingEnhancedExpenditureForFilm = 'yes') or (../ct:SMEclaimRandD = 'yes') or (../ct:LargeCompanyClaimRandD = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9285</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box 101 is completed then at least one of the boxes 167, 99 or 100 should be 'Yes'. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If R and D Enhanced expenditure is present the following should be true: [167] equals 'yes' and/or [99] equals 'yes' and/or [100] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M112" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M112" priority="-1"/>
  <axsl:template match="@*|node()" mode="M112" priority="-2">
    <axsl:apply-templates mode="M112" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p111-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:VaccineResearch" mode="M113" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(../ct:SMEclaimRandD = 'yes') or (../ct:LargeCompanyClaimRandD = 'yes')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9286</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 103 can only be completed if Box 99 or Box 100 is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Vaccine research is present the following should be true: [99] equals 'yes' or [100] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M113" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M113" priority="-1"/>
  <axsl:template match="@*|node()" mode="M113" priority="-2">
    <axsl:apply-templates mode="M113" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p112-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:SMEclaimAsLargeCompany" mode="M114" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:SMEclaimRandD = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9287</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 102 can only be completed if Boxes 99 is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If SMEclaim as large company is present the following should be true: [99] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M114" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M114" priority="-1"/>
  <axsl:template match="@*|node()" mode="M114" priority="-2">
    <axsl:apply-templates mode="M114" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p114-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:ChargesAndAllowances/ct:AIACapitalAllowancesInc" mode="M115" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20080401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9289</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 172 can only be completed if the period 'To' date is on or after 01/04/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [172] is present the following should be true: [AP To Date] is on or after '2008-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M115" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M115" priority="-1"/>
  <axsl:template match="@*|node()" mode="M115" priority="-2">
    <axsl:apply-templates mode="M115" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p115-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:ChargesAndAllowances/ct:AIACapitalAllowancesNotInc" mode="M116" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20080401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9290</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 173 can only be completed if the period 'To' date is on or after 01/04/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Annual investment allowance not inc in calc is present the following should be true: [AP To Date] is on or after '2008-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M116" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M116" priority="-1"/>
  <axsl:template match="@*|node()" mode="M116" priority="-2">
    <axsl:apply-templates mode="M116" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p116-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:ChargesAndAllowances/ct:FlatConversion" mode="M117" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes') or sum(../ct:OtherNonTradingChargesAndAllowances/ct:CapitalAllowances) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9291</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 117 can only be 'Yes' if Box 115 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[117] can only be 'yes' if there is an entry greater than zero in the capital allowance element of [115].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M117" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M117" priority="-1"/>
  <axsl:template match="@*|node()" mode="M117" priority="-2">
    <axsl:apply-templates mode="M117" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p113-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:ChargesAndAllowances" mode="M118" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(                 (((sum(ct:AIACapitalAllowancesInc) + sum(ct:AIACapitalAllowancesNotInc))) - (( (   ceiling(     (   number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('1992-04-01')) div 86400))     ) + (       number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2008-04-01')) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2008-04-01')) div 86400) - round(date:seconds(normalize-space('1992-04-01')) div 86400))     )   ) * 0     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('2008-04-01')) div 86400))     ) + (       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2010-04-01')) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2010-04-01')) div 86400) - round(date:seconds(normalize-space('2008-04-01')) div 86400))     )   ) * 50000     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('2010-04-01')) div 86400))     ) + (       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2012-04-01')) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2012-04-01')) div 86400) - round(date:seconds(normalize-space('2010-04-01')) div 86400))     )   ) * 100000     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('2012-04-01')) div 86400))     ) + (       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2013-01-01')) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2013-01-01')) div 86400) - round(date:seconds(normalize-space('2012-04-01')) div 86400))     )   ) * 25000     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('2013-01-01')) div 86400))     ) + (       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2014-04-01')) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2014-04-01')) div 86400) - round(date:seconds(normalize-space('2013-01-01')) div 86400))     )   ) * 250000     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('2014-04-01')) div 86400))     ) + (       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2016-01-01')) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (round(date:seconds(normalize-space('2016-01-01')) div 86400) - round(date:seconds(normalize-space('2014-04-01')) div 86400))     )   ) * 500000     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    (     (       number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *       (round(date:seconds(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D')))) div 86400) - round(date:seconds(normalize-space('2016-01-01')) div 86400))     )  ) * 25000     div       (366 -   number(     (       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))       and         (round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))       and         (round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )       or       (         (round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))       and         (round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))       )     )     or ((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) - round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)) + 1 &lt; 366)   ))      )   ) ) )) &lt; 0.001)               )                 or               (                 (                   date:day-in-month(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) = 1 and date:day-in-month(normalize-space(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1DT12H')))) = 1                 )                   and                 (                   (((sum(ct:AIACapitalAllowancesInc) + sum(ct:AIACapitalAllowancesNotInc))) - (((   ceiling(     (   number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('1992-04-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('1992-04-01'))     ) + (       number((round(date:seconds(normalize-space('1992-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2008-04-01') - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year('2008-04-01') - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('1992-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2008-04-01') - date:year('1992-04-01')) + date:month-in-year('2008-04-01') - date:month-in-year('1992-04-01'))     )   ) * 0     div     12     )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('2008-04-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('2008-04-01'))     ) + (       number((round(date:seconds(normalize-space('2008-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2010-04-01') - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year('2010-04-01') - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2008-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2010-04-01') - date:year('2008-04-01')) + date:month-in-year('2010-04-01') - date:month-in-year('2008-04-01'))     )   ) * 50000     div     12     )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('2010-04-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('2010-04-01'))     ) + (       number((round(date:seconds(normalize-space('2010-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2012-04-01') - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year('2012-04-01') - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2010-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2012-04-01') - date:year('2010-04-01')) + date:month-in-year('2012-04-01') - date:month-in-year('2010-04-01'))     )   ) * 100000     div     12     )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('2012-04-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('2012-04-01'))     ) + (       number((round(date:seconds(normalize-space('2012-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2013-01-01') - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year('2013-01-01') - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2012-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2013-01-01') - date:year('2012-04-01')) + date:month-in-year('2013-01-01') - date:month-in-year('2012-04-01'))     )   ) * 25000     div     12     )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('2013-01-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('2013-01-01'))     ) + (       number((round(date:seconds(normalize-space('2013-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2014-04-01') - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year('2014-04-01') - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2013-01-01')) div 86400))) *       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2014-04-01') - date:year('2013-01-01')) + date:month-in-year('2014-04-01') - date:month-in-year('2013-01-01'))     )   ) * 250000     div     12     )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *   (     (       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('2014-04-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('2014-04-01'))     ) + (       number((round(date:seconds(normalize-space('2014-04-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2016-01-01') - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year('2016-01-01') - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2014-04-01')) div 86400))) *       number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *       (12 * (date:year('2016-01-01') - date:year('2014-04-01')) + date:month-in-year('2016-01-01') - date:month-in-year('2014-04-01'))     )   ) * 500000     div     12     )   )   +   ceiling(     (   number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))) *    (     (       number((round(date:seconds(normalize-space('2016-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year(../../ct:CompanyInformation/ct:PeriodCovered/ct:From))     ) + (       number((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2016-01-01')) div 86400))) *       (12 * (date:year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:year('2016-01-01')) + date:month-in-year(date:add(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P1D'))) - date:month-in-year('2016-01-01'))     )  ) * 25000     div     12     )   ) ) )) &lt; 0.001)                 )                )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9288</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The sum of Box 172 and Box 173 must not exceed the apportioned AIA limit.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The sum of [172] and [173] must not exceed the apportioned AIA limit (see Appendix C)</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M118" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M118" priority="-1"/>
  <axsl:template match="@*|node()" mode="M118" priority="-2">
    <axsl:apply-templates mode="M118" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p117-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:ClaimingEnvironmentallyFriendly" mode="M119" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt;= '20080331'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9292</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 119 can only be 'Yes' if the period 'To' date is on or before 31/03/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Claiming environmentally friendly is present the following should be true: [AP To Date] is on or before '2008-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:MachineryAndPlantExpenditure) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9293</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 119 can only be 'Yes' if Box 118 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Claiming environmentally friendly is present the following should be true: [118] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M119" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M119" priority="-1"/>
  <axsl:template match="@*|node()" mode="M119" priority="-2">
    <axsl:apply-templates mode="M119" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p118-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CapitalAllowancesExpenditure/ct:DesignatedEnvironmentallyFriendlyMachineryAndPlant" mode="M120" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &gt;= '20080401'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9294</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 174 can only be completed if the period 'To' date is on or after 01/04/2008.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [174] is present the following should be true: [AP To Date] is on or after '2008-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M120" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M120" priority="-1"/>
  <axsl:template match="@*|node()" mode="M120" priority="-2">
    <axsl:apply-templates mode="M120" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p119-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LossesDeficitsAndExcess/ct:CaseI/ct:SurrenderMaximum" mode="M121" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:Arising) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9952</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' is completed so the amount 'Arising' must be greater than zero.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the arising and maximum pair, there must be an entry greater than zero in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Arising)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9953</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' must not be greater than the amount 'Arising'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the pair, it must not be greater than the entry in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M121" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M121" priority="-1"/>
  <axsl:template match="@*|node()" mode="M121" priority="-2">
    <axsl:apply-templates mode="M121" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p120-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LossesDeficitsAndExcess/ct:Loans/ct:SurrenderMaximum" mode="M122" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:Arising) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9952</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' is completed so the amount 'Arising' must be greater than zero.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the arising and maximum pair, there must be an entry greater than zero in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Arising)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9953</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' must not be greater than the amount 'Arising'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the pair, it must not be greater than the entry in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M122" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M122" priority="-1"/>
  <axsl:template match="@*|node()" mode="M122" priority="-2">
    <axsl:apply-templates mode="M122" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p121-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LossesDeficitsAndExcess/ct:ScheduleA/ct:SurrenderMaximum" mode="M123" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:Arising) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9952</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' is completed so the amount 'Arising' must be greater than zero.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the arising and maximum pair, there must be an entry greater than zero in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Arising)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9953</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' must not be greater than the amount 'Arising'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the pair, it must not be greater than the entry in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M123" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M123" priority="-1"/>
  <axsl:template match="@*|node()" mode="M123" priority="-2">
    <axsl:apply-templates mode="M123" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p122-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LossesDeficitsAndExcess/ct:NonTradingLossesIntangibles/ct:SurrenderMaximum" mode="M124" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:Arising) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9952</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' is completed so the amount 'Arising' must be greater than zero.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the arising and maximum pair, there must be an entry greater than zero in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Arising)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9953</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' must not be greater than the amount 'Arising'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the pair, it must not be greater than the entry in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M124" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M124" priority="-1"/>
  <axsl:template match="@*|node()" mode="M124" priority="-2">
    <axsl:apply-templates mode="M124" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p123-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LossesDeficitsAndExcess/ct:ExcessManagementExpenses/ct:SurrenderMaximum" mode="M125" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../ct:Arising) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9952</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' is completed so the amount 'Arising' must be greater than zero.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the arising and maximum pair, there must be an entry greater than zero in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Arising)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9953</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Maximum available for surrender as group relief' must not be greater than the amount 'Arising'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in the second box of the pair, it must not be greater than the entry in the first box of the pair.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M125" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M125" priority="-1"/>
  <axsl:template match="@*|node()" mode="M125" priority="-2">
    <axsl:apply-templates mode="M125" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p124-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:OverpaymentsAndRepayments/ct:IncomeTax" mode="M126" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = sum(../../ct:CompanyTaxCalculation/ct:IncomeTax/ct:TaxRepayable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9296</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 142 must equal Box 85.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Income tax is valid if and only if it equals [85]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M126" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M126" priority="-1"/>
  <axsl:template match="@*|node()" mode="M126" priority="-2">
    <axsl:apply-templates mode="M126" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p125-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:OverpaymentsAndRepayments/ct:FilmTaxCredit" mode="M127" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:CapitalAllowancesExpenditure/ct:ClaimingEnhancedExpenditureForFilm = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9299</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 167 must be 'Yes' as there is an entry in Box 168.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Film tax credit is present the following should be true: [167] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:RDCreditPayable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9300</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 168 must not exceed Box 89</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[168] is valid if and only if this does not exceed [89]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M127" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M127" priority="-1"/>
  <axsl:template match="@*|node()" mode="M127" priority="-2">
    <axsl:apply-templates mode="M127" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p126-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:OverpaymentsAndRepayments/ct:LandRemediationTaxCredit" mode="M128" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = sum(../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:LandOrLifeCreditPayable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9301</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 144 must equal Box 90.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Land remediation tax credit is valid if and only if it equals [90]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M128" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M128" priority="-1"/>
  <axsl:template match="@*|node()" mode="M128" priority="-2">
    <axsl:apply-templates mode="M128" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p127-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:OverpaymentsAndRepayments/ct:PayableCapitalAllowancesFirstYearTaxCredit" mode="M129" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = sum(../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:CapitalAllowancesFirstYearTaxCreditPayable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9302</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 175 must equal Box 171.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Payable capital allowances first year tax credit is valid if and only if it equals [171]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M129" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M129" priority="-1"/>
  <axsl:template match="@*|node()" mode="M129" priority="-2">
    <axsl:apply-templates mode="M129" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p128-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:OverpaymentsAndRepayments/ct:Surrender/ct:JointNotice/ct:Attached" mode="M130" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../ct:AttachedFiles/ct:Attachment"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9303</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You must attach the 'Joint Notice' as Box 146 is 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Attached is present the following should be true: [Attachment]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M130" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M130" priority="-1"/>
  <axsl:template match="@*|node()" mode="M130" priority="-2">
    <axsl:apply-templates mode="M130" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p129-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:OverpaymentsAndRepayments/ct:StopUntilNotice" mode="M131" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../ct:Surrender/ct:Amount)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9304</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 148 must not be greater than Box 145.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Stop until notice is valid if and only if it does not exceed [145]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M131" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M131" priority="-1"/>
  <axsl:template match="@*|node()" mode="M131" priority="-2">
    <axsl:apply-templates mode="M131" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p132-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoansInformation/ct:TotalLoans" mode="M132" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:Loan/ct:AmountOfLoan))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9401</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A2 must equal the sum of all 'Amount of loan' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal the sum of all iterations of [Amount of Loan]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M132" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M132" priority="-1"/>
  <axsl:template match="@*|node()" mode="M132" priority="-2">
    <axsl:apply-templates mode="M132" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p133-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoansInformation/ct:TaxChargeable" mode="M133" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:TotalLoans * 0.25))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9402</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A3 must equal Box A2 multiplied by [25%].</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tax chargeable is valid if and only if it equals ( [A2] times [25%] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M133" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M133" priority="-1"/>
  <axsl:template match="@*|node()" mode="M133" priority="-2">
    <axsl:apply-templates mode="M133" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p131-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoansInformation" mode="M134" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:Loan) &lt;= 999"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9400</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The maximum number of loans has been exceeded.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The group [Loan] may occur up to 999 times</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M134" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M134" priority="-1"/>
  <axsl:template match="@*|node()" mode="M134" priority="-2">
    <axsl:apply-templates mode="M134" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p136-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan/ct:Loan/ct:Date" mode="M135" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space((.))) div 86400) &lt;= round(date:seconds(normalize-space(date:add(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To),normalize-space('P310D')))) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9406</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Date of repayment release or write off' must not be be later than the period 'To' date plus nine months.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The box [Date of Loan] cannot be later than [AP To Date] plus 310 days</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M135" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M135" priority="-1"/>
  <axsl:template match="@*|node()" mode="M135" priority="-2">
    <axsl:apply-templates mode="M135" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p135-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan/ct:Loan" mode="M136" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(sum(ct:AmountRepaid) &gt; 0) or (sum(ct:AmountReleasedOrWrittenOff) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9404</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">At least one of 'Amount repaid' or 'Amount released or written off' must be greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Within each iteration, either [Amount of Loan Repayed] &gt; 0 or [Amount of Loan Released of Written off] &gt; 0 or both.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:LoansInformation"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9405</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">'Relief for amounts repaid released or written off' can only be claimed where 'Loans made during the return period' is completed. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Loan is present the following should be true: [Loans Information]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M136" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M136" priority="-1"/>
  <axsl:template match="@*|node()" mode="M136" priority="-2">
    <axsl:apply-templates mode="M136" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p137-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan/ct:TotalAmountRepaid" mode="M137" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:Loan/ct:AmountRepaid))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9407</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A4 must equal the sum of all 'Amount repaid' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal the sum of all iterations of [Amount of Loan Repayed]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M137" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M137" priority="-1"/>
  <axsl:template match="@*|node()" mode="M137" priority="-2">
    <axsl:apply-templates mode="M137" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p138-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan/ct:TotalAmountReleasedOrWritten" mode="M138" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:Loan/ct:AmountReleasedOrWrittenOff))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9408</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A5 must equal the sum of all 'Amount released or written off' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal the sum of all iterations of [Amount of Loan Released of Written off]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M138" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M138" priority="-1"/>
  <axsl:template match="@*|node()" mode="M138" priority="-2">
    <axsl:apply-templates mode="M138" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p139-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan/ct:TotalLoans" mode="M139" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:TotalAmountRepaid) + sum(../ct:TotalAmountReleasedOrWritten)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9409</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A6 must equal the sum of Boxes A4 and A5.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total loans is valid if and only if it equals ( [A4] plus [A5] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M139" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M139" priority="-1"/>
  <axsl:template match="@*|node()" mode="M139" priority="-2">
    <axsl:apply-templates mode="M139" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p140-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan/ct:ReliefDue" mode="M140" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:TotalLoans * 0.25))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9410</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A7 must equal Box A6 multiplied by [25%].</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Relief due is valid if and only if it equals ( [A6] times [25%] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../ct:LoansInformation/ct:TaxChargeable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9411</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A7 must be less than or equal to Box A3.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Relief due is valid if and only if it does not exceed [A3]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M140" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M140" priority="-1"/>
  <axsl:template match="@*|node()" mode="M140" priority="-2">
    <axsl:apply-templates mode="M140" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p134-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:ReliefEarlierThan" mode="M141" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:Loan) &lt;= 999"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9403</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The maximum number of loans has been exceeded.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Loan] may repeat up to 999 times</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M141" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M141" priority="-1"/>
  <axsl:template match="@*|node()" mode="M141" priority="-2">
    <axsl:apply-templates mode="M141" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p142-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:Section3Check/ct:EndDate" mode="M142" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space((.))) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9414</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'End date of the Accounting period in which the loan was repaid released or written off' must not be earlier than the period 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>End date is valid if and only if it is onOrAfter [AP To Date]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="concat(translate(., '-',''),'235959') &lt; translate(translate(translate(string(/hd:GovTalkMessage/hd:Header/hd:MessageDetails/hd:GatewayTimestamp),'-',''),':',''), 'T','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9415</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'End date of the Accounting period in which the loan was repaid released or written off' must be earlier than the date of submission.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must be earlier than the date of submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M142" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M142" priority="-1"/>
  <axsl:template match="@*|node()" mode="M142" priority="-2">
    <axsl:apply-templates mode="M142" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p143-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:Section3Check/ct:NineMonthsAfter" mode="M143" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(date:day-in-month(normalize-space(../ct:EndDate)) != 1                 and             (.) = date:add(normalize-space(date:add(normalize-space(../ct:EndDate),normalize-space('-P1D'))),normalize-space('P9M')))               or             (date:day-in-month(normalize-space(../ct:EndDate)) = 1                 and             (.) = date:add(normalize-space(date:add(normalize-space(../ct:EndDate),normalize-space('P9M'))),normalize-space('-P1D')))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9416</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">This date must be exactly nine months after the end of the Accounting period in which the loan was repaid released or written off.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must be exactly nine months after [Accounting Period of Loan End Date]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M143" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M143" priority="-1"/>
  <axsl:template match="@*|node()" mode="M143" priority="-2">
    <axsl:apply-templates mode="M143" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p144-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:Section3Check/ct:DateReturnSent" mode="M144" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(.)) div 86400) &lt;= round(date:seconds(normalize-space(date:date())) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9417</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Date return sent' must not be later than today's date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must be no later than today.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M144" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M144" priority="-1"/>
  <axsl:template match="@*|node()" mode="M144" priority="-2">
    <axsl:apply-templates mode="M144" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p141-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:Section3Check" mode="M145" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:LoansInformation"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9412</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">'Relief for amounts repaid released or written off' can only be claimed where 'Loans made during the return period' is completed. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Section3 check is present the following should be true: [Loans Information]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:LoanLaterReliefNow)             or             not((round(date:seconds(normalize-space(ct:DateReturnSent)) div 86400) &lt;= round(date:seconds(normalize-space(ct:NineMonthsAfter)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9413</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for amounts repaid released or written off more than nine months after the end of the period' can only be completed if the return is being submitted more than nine months after the end of the period in which the loan was repaid released or written off. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Loan later relief now] can only be submitted if [Date Return Sent] is strictly later than [9 months after Accounting Period End Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M145" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M145" priority="-1"/>
  <axsl:template match="@*|node()" mode="M145" priority="-2">
    <axsl:apply-templates mode="M145" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p147-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:Loan/ct:Date" mode="M146" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../ct:Section3Check/ct:EndDate)                 or               (round(date:seconds(normalize-space((.))) div 86400) &lt;= round(date:seconds(normalize-space(../../../ct:Section3Check/ct:EndDate)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9420</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Date of repayment release or write off' must not be be later than the end of the Accounting period in which the loan was repaid released or written off </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Accounting Period of Loan End Date] is present [Date of Loan] must be on or before [Accounting Period of Loan End Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M146" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M146" priority="-1"/>
  <axsl:template match="@*|node()" mode="M146" priority="-2">
    <axsl:apply-templates mode="M146" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p146-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:Loan" mode="M147" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(sum(ct:AmountRepaid) &gt; 0) or (sum(ct:AmountReleasedOrWrittenOff) &gt; 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9419</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">At least one of 'Amount repaid' or 'Amount released or written off' must be greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Within each iteration, either [Amount of Loan Repayed] &gt; 0 or [Amount of Loan released or written off] &gt; 0 or both.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M147" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M147" priority="-1"/>
  <axsl:template match="@*|node()" mode="M147" priority="-2">
    <axsl:apply-templates mode="M147" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p148-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:TotalAmountRepaid" mode="M148" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:Loan/ct:AmountRepaid))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9421</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A8 must equal the sum of all 'Amount repaid' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal the sum of all iterations of [Amount of Loan Repayed]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M148" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M148" priority="-1"/>
  <axsl:template match="@*|node()" mode="M148" priority="-2">
    <axsl:apply-templates mode="M148" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p149-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:TotalAmountReleasedOrWritten" mode="M149" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:Loan/ct:AmountReleasedOrWrittenOff))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9422</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A8 must equal the sum of all 'Amount released or written off' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal the sum of all iterations of [Amount of Loan released or written off]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M149" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M149" priority="-1"/>
  <axsl:template match="@*|node()" mode="M149" priority="-2">
    <axsl:apply-templates mode="M149" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p150-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:TotalLoans" mode="M150" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:TotalAmountRepaid) + sum(../ct:TotalAmountReleasedOrWritten)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9423</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A10 must equal the sum of Boxes A8 and A9.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total loans is valid if and only if it equals ( [A8] plus [A9] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M150" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M150" priority="-1"/>
  <axsl:template match="@*|node()" mode="M150" priority="-2">
    <axsl:apply-templates mode="M150" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p151-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow/ct:ReliefDue" mode="M151" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:TotalLoans * 0.25))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9424</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A11 must equal Box A10 multiplied by [25%].</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Relief due is valid if and only if it equals ( [A10] times [25%] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= sum(../../ct:LoansInformation/ct:TaxChargeable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9425</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A11 must be less than or equal to Box A3.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Relief due is valid if and only if it does not exceed [A3]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../ct:CompanyTaxCalculation/ct:A11Completed = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9426</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A11 is completed therefore Box 80 must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise> If there is an entry greater than or equal to zero in [A11], [80] must be 'yes'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M151" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M151" priority="-1"/>
  <axsl:template match="@*|node()" mode="M151" priority="-2">
    <axsl:apply-templates mode="M151" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p145-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:LoanLaterReliefNow" mode="M152" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:Loan) &lt;= 999"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9418</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The maximum number of loans has been exceeded.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Loan] may repeat up to 999 times</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M152" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M152" priority="-1"/>
  <axsl:template match="@*|node()" mode="M152" priority="-2">
    <axsl:apply-templates mode="M152" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p152-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies/ct:TaxPayableS419" mode="M153" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:LoansInformation/ct:TaxChargeable) - (sum(../ct:ReliefEarlierThan/ct:ReliefDue) + sum(../ct:LoanLaterReliefNow/ct:ReliefDue))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9427</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A13 must equal Box A3 minus (the sum of Boxes A7 and A11).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tax payable s419 is valid if and only if it equals ( [A3] minus ( [A7] plus [A11] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:CompanyTaxCalculation/ct:Payable and ../../ct:CompanyTaxCalculation/ct:Payable = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9428</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box A13 must equal Box 79.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [A13] is submitted then [79] must be present and equal to [A13].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M153" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M153" priority="-1"/>
  <axsl:template match="@*|node()" mode="M153" priority="-2">
    <axsl:apply-templates mode="M153" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p130-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:LoansByCloseCompanies" mode="M154" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600A = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9305</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600A is present so 'CT600A (Loans to Participators by Close Companies)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600A] is present the following should be true: [CT600A attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M154" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M154" priority="-1"/>
  <axsl:template match="@*|node()" mode="M154" priority="-2">
    <axsl:apply-templates mode="M154" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p154-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies/ct:CompanyInformation/ct:CFCTaxCalculation/ct:TaxChargeable" mode="M155" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:TaxOnChargeable - (sum(../ct:CreditableTax) + sum(../ct:ReliefsInTaxTerms) + sum(../ct:ACTrestricted))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9455</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'S747 tax chargeable' total must equal the sum of 'Tax on chargeable profits' minus the sum of 'Creditable tax', 'Reliefs in terms of tax' and 'ACT as restricted'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[J] should equal ( [F] minus ( The sum of [G], [H], and [I] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M155" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M155" priority="-1"/>
  <axsl:template match="@*|node()" mode="M155" priority="-2">
    <axsl:apply-templates mode="M155" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p155-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies/ct:TotalTaxChargeable" mode="M156" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs(((.)) - (sum(../ct:CompanyInformation/ct:CFCTaxCalculation/ct:TaxOnChargeable))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9456</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Tax on chargeable profits' total must equal the sum of all the 'Tax on chargeable profits' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsF] must equal the sum of all entries in [F].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M156" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M156" priority="-1"/>
  <axsl:template match="@*|node()" mode="M156" priority="-2">
    <axsl:apply-templates mode="M156" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p156-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies/ct:TotalCreditableTax" mode="M157" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs(((.)) - (sum(../ct:CompanyInformation/ct:CFCTaxCalculation/ct:CreditableTax))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9457</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Creditable tax' total must equal the sum of all the 'Creditable tax' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsG] must equal the sum of all entries in [G].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M157" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M157" priority="-1"/>
  <axsl:template match="@*|node()" mode="M157" priority="-2">
    <axsl:apply-templates mode="M157" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p157-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies/ct:TotalReliefInTaxTerms" mode="M158" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs(((.)) - (sum(../ct:CompanyInformation/ct:CFCTaxCalculation/ct:ReliefsInTaxTerms))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9458</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Reliefs in terms of tax' total must equal the sum of all the 'Reliefs in terms of tax' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsH] must equal the sum of all entries in [H].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M158" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M158" priority="-1"/>
  <axsl:template match="@*|node()" mode="M158" priority="-2">
    <axsl:apply-templates mode="M158" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p158-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies/ct:TotalACTrestricted" mode="M159" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs(((.)) - (sum(../ct:CompanyInformation/ct:CFCTaxCalculation/ct:ACTrestricted))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9459</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'ACT as restricted' total must equal the sum of all the 'ACT as restricted' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsI] must equal the sum of all entries in [I].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M159" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M159" priority="-1"/>
  <axsl:template match="@*|node()" mode="M159" priority="-2">
    <axsl:apply-templates mode="M159" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p159-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies/ct:TotalS747TaxChargeable" mode="M160" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs(((.)) - (sum(../ct:CompanyInformation/ct:CFCTaxCalculation/ct:TaxChargeable) + sum(../ct:BankLevy))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9463</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'S747 tax chargeable' total must equal the sum of all the 'S747 tax chargeable' amounts plus the amount of 'Bank Levy'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsJ] must equal the sum of all entries in [J], plus [K]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:CompanyTaxCalculation/ct:TaxPayableS747 and (math:abs(((.)) - (../../ct:CompanyTaxCalculation/ct:TaxPayableS747)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9461</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'S747 tax chargeable' total is completed therefore Box 81 must be present and equal to the 'S747 tax chargeable' total.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [TotalsJ] is submitted then [81] must be present and equal to [TotalsJ].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &gt;= sum(../ct:BankLevy)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9464</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'S747 tax chargeable' total must not be less than amount of 'Bank Levy'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsJ] is valid if and only if this is not less than [K]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M160" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M160" priority="-1"/>
  <axsl:template match="@*|node()" mode="M160" priority="-2">
    <axsl:apply-templates mode="M160" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p153-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:ControlledForeignCompanies" mode="M161" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(ct:CompanyInformation/ct:CFCTaxCalculation/ct:TaxOnChargeable) = 0            or            ct:TotalTaxChargeable"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9450</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Tax on chargeable profits' total must be present if the sum of all the 'Tax on chargeable profits' is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[TotalsF] must be present if the sum of all iterations of [F] is greater than zero.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CompanyInformation/ct:CFCTaxCalculation/ct:CreditableTax) or ct:TotalCreditableTax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9451</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Creditable tax' total must be present if the sum of all the entries in 'Creditable tax' is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total creditable tax should be present if [G]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CompanyInformation/ct:CFCTaxCalculation/ct:ReliefsInTaxTerms) or ct:TotalReliefInTaxTerms"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9452</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'Reliefs in terms of tax' total must be present if the sum of all the entries in 'Reliefs in terms of tax' is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total relief in tax terms should be present if [H]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CompanyInformation/ct:CFCTaxCalculation/ct:ACTrestricted) or ct:TotalACTrestricted"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9453</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'ACT as restricted' total must be present if the sum of all the entries in 'ACT as restricted' is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total aCTrestricted should be present if [I]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:CompanyInformation/ct:CFCTaxCalculation) or ct:TotalS747TaxChargeable"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9454</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The 'S747 tax chargeable' total must be present if any of the 'Chargeable profits', 'Tax on chargeable profits', 'Creditable tax', 'Reliefs in terms of tax' and 'ACT as restricted' are completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total s747 tax chargeable should be present if [CFC tax calculation]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:CompanyInformation or ct:BankLevy"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9462</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Supplementary page CT600B is present so 'Company Information' or 'Bank Levy' must be present</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [CT600B] is present the following should be true: [Company Information group] or [K]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600B = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9306</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600B is present so 'CT600B (Controlled Foreign Companies)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Controlled foreign companies is present the following should be true: [CT600B attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M161" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M161" priority="-1"/>
  <axsl:template match="@*|node()" mode="M161" priority="-2">
    <axsl:apply-templates mode="M161" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p163-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:CompanyInformation/ct:Company/ct:AccountingPeriod" mode="M162" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (ct:To = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)                     or                     not ( ct:From = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9501</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The start and end dates of the Accounting period of the surrendering company can only be completed where the period is different from that covered by the return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>'To Date' must be different to [AP To Date] if 'Account of surrendering company Start Date' is equal to [AP From Date], and 'From Date' must be different to [AP From Date] if 'Account of surrendering company End Date' is equal to [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(ct:From)) div 86400) &lt;= round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9502</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Accounting period of the surrendering company 'From' date must be on or before the period covered by the return 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From date must be on or before [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(date:add(normalize-space(string(ct:To)),normalize-space('-P12M')),'-','') &lt; translate(ct:From,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9503</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Accounting period of the surrendering company must not be longer than 12 months.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Period Covered must not be longer than 12 months</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9504</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Accounting period of the surrendering company 'To' date must not be before the Accounting period of the surrendering company 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The To date must not be before the From date.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9505</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Accounting period of the surrendering company 'To' date must be on or after the period covered by the return 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>To date must be on or after [AP From Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M162" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M162" priority="-1"/>
  <axsl:template match="@*|node()" mode="M162" priority="-2">
    <axsl:apply-templates mode="M162" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p164-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:CompanyInformation/ct:TotalAmountClaimed" mode="M163" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:GroupRelief = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9506</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 36 must be completed and equal to Box C1.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in [C1] then [36] must be present and must equal that value.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = sum(../ct:Company/ct:AmountClaimed)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9507</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box C1 must equal the sum of Claims to group relief 'Amount Claimed'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[C1] must equal the sum of all iterations of [Amount claimed].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M163" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M163" priority="-1"/>
  <axsl:template match="@*|node()" mode="M163" priority="-2">
    <axsl:apply-templates mode="M163" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p165-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:ClaimAuthorisation/ct:AuthorisationOptions/ct:SimplifiedArrangementInForce" mode="M164" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:Authorisation"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9508</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Claims to group relief 'Claim authorisation' must be completed if 'Simplified arrangement in force' is present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Simplified arrangement in force is present the following should be true: [Authorisation of claim to group relief]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../../../../../../ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:GroupRelief) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9972</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Simplified arrangement in force' is present then C1 must be greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Simplified arrangement in force] is present the following should be true: [36] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M164" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M164" priority="-1"/>
  <axsl:template match="@*|node()" mode="M164" priority="-2">
    <axsl:apply-templates mode="M164" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p166-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief/ct:ClaimAuthorisation/ct:AuthorisationOptions/ct:CopyOfNoticesOfConsentAttached" mode="M165" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../../../../ct:AttachedFiles/ct:Attachment[@Type='other' and @Format='pdf']) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9510</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Copy of notices of consent' are completed then a PDF attachment of type 'Other' must be present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Copy of notices of consent attached] is 'yes' then there must be a PDF attachment of type 'other' in this submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../../../../../../ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:GroupRelief) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9973</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Copy of notices of consent' is present then C1 must be greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Copy of notices of consent attached] is present the following should be true: [36] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M165" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M165" priority="-1"/>
  <axsl:template match="@*|node()" mode="M165" priority="-2">
    <axsl:apply-templates mode="M165" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p162-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:ClaimToGroupRelief" mode="M166" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:ClaimAuthorisation               or             not((.))                or             not(../../../@ReturnType = 'new')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9518</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Claim authorisation' must be present if return type is 'new' and there is a claim to group relief</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Authorisation of claim] is mandatory if [Return type] eq 'new' and [1: Claim to group relief].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M166" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M166" priority="-1"/>
  <axsl:template match="@*|node()" mode="M166" priority="-2">
    <axsl:apply-templates mode="M166" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p167-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:TotalSurrender" mode="M167" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:TradingLosses) + sum(../ct:ExcessNonTrading) + sum(../ct:NonTradingDeficit) + sum(../ct:NonTradingLossesOnIntangibleFixedAssets) + sum(../ct:ExcessCharges) + sum(../ct:ExcessLosses) + sum(../ct:ExcessManagementExpenses)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9511</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Amounts surrendered as group relief 'Surrender as group relief total' must equal the sum of 'Trading losses', 'Excess non-trade capital allowances over income from which they are primarily deductible', Non-trading deficit on loan relationships', 'Non-trading losses on intangible fixed assets', 'Excess charges over profits', 'Excess of Schedule A losses over profits', and 'Excess of management expenses over profits'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Total surrendered as group relief] should equal ( The sum of [Trading losses], [Excess non-trade capital allowances], [Non trading deficit], [Non trading losses on intangible fixed assets], [Excess charges over profits], [Excess of schedule A losses over profits], and [Excess management expenses] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M167" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M167" priority="-1"/>
  <axsl:template match="@*|node()" mode="M167" priority="-2">
    <axsl:apply-templates mode="M167" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p168-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:SurrenderInformation/ct:Company/ct:AccountingPeriod" mode="M168" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (ct:To = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)                     or                      not ( ct:From = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9512</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The start and end dates of the Accounting period of the claimant company can only be completed where the period is different from that covered by the return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>'To Date' must be different to [AP To Date] if 'Account of claimant company Start Date' is equal to [AP From Date], and vice versa.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(ct:From)) div 86400) &lt;= round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9513</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Details of surrender Accounting period of claimant company 'From' date must be on or before the return period 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From date must be on or before [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(date:add(normalize-space(string(ct:To)),normalize-space('-P12M')),'-','') &lt; translate(ct:From,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9514</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Details of surrender Accounting period of claimant company must not be longer than 12 months.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Period Covered must not be longer than 12 months</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9515</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Details of surrender Accounting period of claimant company 'To' date must not be before the Details of surrender Accounting period of claimant company 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The To date must not be before the From date.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9516</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The Details of surrender Accounting period of claimant company 'To' date must be on or after the return period 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>To date must be on or after [AP From Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M168" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M168" priority="-1"/>
  <axsl:template match="@*|node()" mode="M168" priority="-2">
    <axsl:apply-templates mode="M168" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p169-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:SurrenderInformation/ct:AmountSurrenderedTotal" mode="M169" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = sum(../ct:Company/ct:AmountSurrendered)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9517</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">C2 must equal the sum of the Details of surrender 'Amount surrendered'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[C2] must equal the sum of all iterations of [Amount surrendered].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M169" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M169" priority="-1"/>
  <axsl:template match="@*|node()" mode="M169" priority="-2">
    <axsl:apply-templates mode="M169" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p170-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:ConsentToSurrender/ct:ConsentOptions/ct:SimplifiedArrangementInForce" mode="M170" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../ct:SurrenderInformation/ct:AmountSurrenderedTotal &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9974</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Simplified arrangement in force' is present then C1 must be greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Simplified arrangement in force] is present the following should be true: [C2] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M170" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M170" priority="-1"/>
  <axsl:template match="@*|node()" mode="M170" priority="-2">
    <axsl:apply-templates mode="M170" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p171-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:ConsentToSurrender/ct:ConsentOptions/ct:NoticeOfConsentCompleted" mode="M171" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:Declaration"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9519</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Amounts surrendered as group relief 'Declaration' must be completed if 'Notices of consent' is present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Notice of consent completed is present the following should be true: [Declaration of consent]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:CopyOfNoticesOfConsentAttached)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9961</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Notice of consent completed' must not be 'Yes' if 'Copy of notices of consent attached' is 'Yes'</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Notice of consent completed] should not be present if [Copy of notices of consent attached]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../ct:SurrenderInformation/ct:AmountSurrenderedTotal &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9975</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Notice of consent' is 'Yes'  then C2 must be greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Notice of consent completed] is present the following should be true: [C2] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M171" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M171" priority="-1"/>
  <axsl:template match="@*|node()" mode="M171" priority="-2">
    <axsl:apply-templates mode="M171" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p172-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:ConsentToSurrender/ct:ConsentOptions/ct:CopyOfNoticesOfConsentAttached" mode="M172" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../ct:Declaration and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9521</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Copies of notices of consent' must not be present if Amounts surrendered as group relief 'Declaration' is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Copy of notices of consent attached] should not be present if [Declaration of consent]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../../../../ct:AttachedFiles/ct:Attachment[@Type='other' and @Format='pdf']) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9522</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If amounts surrendered of group relief 'Copies of notices of consent' is 'Yes' then a PDF attachment of type 'Other' must be present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Copy of notices of consent attached] is 'yes' then there must be a PDF attachment of type 'other' in this submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../ct:SurrenderInformation/ct:AmountSurrenderedTotal &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9976</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Copies of notices of consent' is 'Yes' then C2 must be greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Copy of notices of consent attached] is present the following should be true: [C2] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M172" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M172" priority="-1"/>
  <axsl:template match="@*|node()" mode="M172" priority="-2">
    <axsl:apply-templates mode="M172" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p173-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:ConsentToSurrender/ct:Declaration/ct:CompanyName" mode="M173" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../../ct:CompanyInformation/ct:CompanyName = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9523</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Details of company surrendering relief 'Company name' must match the return 'Company name'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal [Company name].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M173" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M173" priority="-1"/>
  <axsl:template match="@*|node()" mode="M173" priority="-2">
    <axsl:apply-templates mode="M173" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p174-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:ConsentToSurrender/ct:Declaration/ct:TaxReference" mode="M174" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../../ct:CompanyInformation/ct:Reference = ct:UTR"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9543</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Tax reference of the company surrendering relief' must equal the return 'Tax reference'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The value of the UTR element of [Tax reference of company surrendering relief] must equal the value of [Company reference].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M174" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M174" priority="-1"/>
  <axsl:template match="@*|node()" mode="M174" priority="-2">
    <axsl:apply-templates mode="M174" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p175-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:SurrenderedGroupRelief/ct:ConsentToSurrender/ct:Declaration/ct:AccountingPeriod" mode="M175" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(ct:From = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From) and (ct:To = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9524</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Details of company surrendering relief Accounting period must match the Accounting period of the return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From and To dates must be equal to [AP From Date] and [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M175" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M175" priority="-1"/>
  <axsl:template match="@*|node()" mode="M175" priority="-2">
    <axsl:apply-templates mode="M175" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p178-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:Company/ct:AccountingPeriod" mode="M176" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (ct:To = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)                     or                      not ( ct:From = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9526</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The start and end dates of the Accounting period of the surrendering company can only be completed where the period is different from that covered by the return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>'To Date' must be different to [AP To Date] if 'Account of surrendering company Start Date' is equal to [AP From Date], and 'From Date' must be different to [AP From Date] if 'Account of surrendering company End Date' is equal to [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(ct:From)) div 86400) &lt;= round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9527</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Accounting period of surrendering company start date must be on or before the return period 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From date must be on or before [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(date:add(normalize-space(string(ct:To)),normalize-space('-P12M')),'-','') &lt; translate(ct:From,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9528</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Accounting period of surrendering company must not be longer than 12 months.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Period Covered must not be longer than 12 months</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9529</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Accounting period of surrendering company 'End' date must be on or after the return period 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The To date must not be before the From date.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9530</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The details of company surrendering Accounting period 'End' date must be on or after the return period 'From' date. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>To date must be on or after [AP From Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(ct:To)) div 86400) &lt;= round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9977</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The details of company surrendering Accounting period 'End' date must be on or before the return period 'To' date. </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>To date must be on or before [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M176" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M176" priority="-1"/>
  <axsl:template match="@*|node()" mode="M176" priority="-2">
    <axsl:apply-templates mode="M176" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p177-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:Company" mode="M177" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:EUFTNoticeOfConsent                   or                  not(../../../../../@ReturnType = &quot;new&quot;)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9525</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">EUFT notice of consent' must be present if return type is 'new' and EUFT is claimed</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[EUFT notice of consent] is mandatory if [Return type] eq 'new' and [3: Claims to EUFT].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M177" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M177" priority="-1"/>
  <axsl:template match="@*|node()" mode="M177" priority="-2">
    <axsl:apply-templates mode="M177" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p179-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed/ct:CompanyInformation/ct:TotalAmountClaimed" mode="M178" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs(((.)) - (sum(../ct:Company/ct:AmountClaimed))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9531</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box C3 must equal the sum of Claims to EUFT 'Amount claimed' total.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[C3] must equal the sum of all iterations of [Amount claimed].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M178" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M178" priority="-1"/>
  <axsl:template match="@*|node()" mode="M178" priority="-2">
    <axsl:apply-templates mode="M178" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p176-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTclaimed" mode="M179" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../../@ReturnType = 'new') or not((.)) or count(../../../ct:AttachedFiles/ct:Attachment[@Type='other' and @Format='pdf']) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9962</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If return type is 'New' and' EUFT claimed' is present then a PDF attachment of type 'Other' must be present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [Return type] is 'new' and [3: Claims to EUFT] is submitted then there must be a PDF attachment of type 'other' in this submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M179" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M179" priority="-1"/>
  <axsl:template match="@*|node()" mode="M179" priority="-2">
    <axsl:apply-templates mode="M179" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p180-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:CompanyInformation/ct:Company/ct:AccountingPeriod" mode="M180" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (ct:To = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)                     or                      not ( ct:From = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9532</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The start and end dates of the Accounting period of the claimant company can only be completed where the period is different from that covered by the return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>'To Date' must be different to [AP To Date] if 'Account of claimant company Start Date' is equal to [AP From Date] and vice versa.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(ct:From)) div 86400) &lt;= round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9533</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Claims to EUFT Accounting period 'From' date must be on or before the return period 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From date must be on or before [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(date:add(normalize-space(string(ct:To)),normalize-space('-P12M')),'-','') &lt; translate(ct:From,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9534</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Claims to EUFT Accounting period of surrendering company must not be longer than 12 months.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Period Covered must not be longer than 12 months</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(ct:From)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9535</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Claims to EUFT Accounting period of surrendering company 'To' date must not be before the Accounting period of surrendering company 'From' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The To date must not be before the From date.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(ct:To)) div 86400) &lt; round(date:seconds(normalize-space(../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9536</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Accounting period of claimant company 'End' date must be on or after the return period 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Accounting period of claimant company] 'To' date must be on or after [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M180" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M180" priority="-1"/>
  <axsl:template match="@*|node()" mode="M180" priority="-2">
    <axsl:apply-templates mode="M180" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p181-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:CompanyInformation/ct:TotalAmountSurrendered" mode="M181" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:Company/ct:AmountSurrendered))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9537</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box C4 must equal the sum of Amounts of EUFT 'Amount surrendered'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[C4] must equal the sum of all iterations of [Amount surrendered].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M181" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M181" priority="-1"/>
  <axsl:template match="@*|node()" mode="M181" priority="-2">
    <axsl:apply-templates mode="M181" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p182-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:ConsentToSurrender/ct:ConsentOptions/ct:NoticeOfConsentCompleted" mode="M182" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ConsentDeclaration"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9538</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Amounts of EUFT surrendered 'Notice of consent' is present so the Amounts of EUFT surrendered 'Declaration' must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Notice of consent completed is present the following should be true: [Declaration of consent]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M182" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M182" priority="-1"/>
  <axsl:template match="@*|node()" mode="M182" priority="-2">
    <axsl:apply-templates mode="M182" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p183-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:ConsentToSurrender/ct:ConsentOptions/ct:CopyOfNoticesOfConsentAttached" mode="M183" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../../ct:ConsentDeclaration and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9539</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Copy of notice of consent' must not be present if Amounts of EUFT surrendered 'Declaration' is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Copy of notices of consent attached should not be present if [Declaration of consent]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(../../../../../../ct:AttachedFiles/ct:Attachment[@Type='other' and @Format='pdf']) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9540</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Copy of notices of consent' are present then a PDF attachment of type 'Other' must be present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If this is 'yes' then there must be a PDF attachment of type 'other' in this submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M183" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M183" priority="-1"/>
  <axsl:template match="@*|node()" mode="M183" priority="-2">
    <axsl:apply-templates mode="M183" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p184-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:ConsentToSurrender/ct:ConsentDeclaration/ct:CompanyName" mode="M184" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../../ct:CompanyInformation/ct:CompanyName = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9541</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Details of company surrendering EUFT 'Company name' must match the return 'Company name'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must equal [Company name].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M184" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M184" priority="-1"/>
  <axsl:template match="@*|node()" mode="M184" priority="-2">
    <axsl:apply-templates mode="M184" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p185-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:ConsentToSurrender/ct:ConsentDeclaration/ct:CompanyReference" mode="M185" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../../../ct:CompanyInformation/ct:Reference = ct:UTR"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9544</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Tax reference of the company surrendering EUFT' must equal the return 'Tax reference'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>The value of the UTR element of [Tax reference of company surrendering EUFT] must equal the value of [Company reference].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M185" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M185" priority="-1"/>
  <axsl:template match="@*|node()" mode="M185" priority="-2">
    <axsl:apply-templates mode="M185" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p186-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium/ct:EUFTsurrendered/ct:ConsentToSurrender/ct:ConsentDeclaration/ct:AccountingPeriod" mode="M186" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(ct:From = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From) and (ct:To = ../../../../../../ct:CompanyInformation/ct:PeriodCovered/ct:To)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9542</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Details of company surrendering EUFT Accounting period must match the Accounting period of the return.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>From and To dates must be equal to [AP From Date] and [AP To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M186" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M186" priority="-1"/>
  <axsl:template match="@*|node()" mode="M186" priority="-2">
    <axsl:apply-templates mode="M186" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p161-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium/ct:GroupAndConsortium" mode="M187" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:ClaimToGroupRelief or ct:SurrenderedGroupRelief or ct:EUFTclaimed or ct:EUFTsurrendered"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9500</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">CT600C can only be present if at least one of 'Claims to group relief', 'Amounts surrendered as group relief', 'Claims to EUFT' or 'Amounts of EUFT' is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Group and consortium is present the following should be true: [1: Claim to group relief] or [2: Amounts surrendered as group relief] or [3: Claims to EUFT] or [4: Amounts of EUFT Surrendered]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M187" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M187" priority="-1"/>
  <axsl:template match="@*|node()" mode="M187" priority="-2">
    <axsl:apply-templates mode="M187" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p160-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:GroupAndConsortium" mode="M188" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600C = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9307</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600C is present so 'CT600C (Group and Consortium)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Group and consortium is present the following should be true: [CT600C attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M188" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M188" priority="-1"/>
  <axsl:template match="@*|node()" mode="M188" priority="-2">
    <axsl:apply-templates mode="M188" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p190-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Schedule19AB/ct:NotionalRepayments" mode="M189" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:RelevantCredits/ct:AppropriatePlusRelevant"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9554</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 must be completed if Box D2 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D13] must be present if [D2] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.)) or (round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('1999-03-31')) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9555</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D2 can only be submitted if the return period 'From' date is on or before 31/03/1999.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D2] can only be submitted if [AP From Date] is on or before '1999-03-31'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M189" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M189" priority="-1"/>
  <axsl:template match="@*|node()" mode="M189" priority="-2">
    <axsl:apply-templates mode="M189" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p191-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Schedule19AB/ct:TotalRepayments" mode="M190" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:RepaymentsMade) + sum(../ct:NotionalRepayments)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9556</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D3 must equal Box D1 plus Box D2.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total repayments is valid if and only if it equals ( [D1] plus [D2] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M190" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M190" priority="-1"/>
  <axsl:template match="@*|node()" mode="M190" priority="-2">
    <axsl:apply-templates mode="M190" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p189-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Schedule19AB" mode="M191" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:RepaymentsMade or ct:NotionalRepayments"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9553</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D1 or Box D2 must be completed if 'Repayments under schedule 19AB' is present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Schedule19 aB is present the following should be true: [D1] or [D2]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M191" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M191" priority="-1"/>
  <axsl:template match="@*|node()" mode="M191" priority="-2">
    <axsl:apply-templates mode="M191" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p193-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Gilts/ct:RealGiltsTax" mode="M192" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.)) or (round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('1999-03-31')) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9558</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D4 can only be submitted if the return period 'From' date is on or before 31/03/1999.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D4] can only be submitted if [AP From Date] is on or before '1999-03-31'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M192" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M192" priority="-1"/>
  <axsl:template match="@*|node()" mode="M192" priority="-2">
    <axsl:apply-templates mode="M192" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p194-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Gilts/ct:ManufacturedGiltsTax" mode="M193" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.)) or (round(date:seconds(normalize-space(../../../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('1999-03-31')) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9559</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D5 can only be submitted if the return period 'From' date is on or before 31/03/1999.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D5] can only be submitted if [AP From Date] is on or before '1999-03-31'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M193" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M193" priority="-1"/>
  <axsl:template match="@*|node()" mode="M193" priority="-2">
    <axsl:apply-templates mode="M193" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p195-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Gilts/ct:TotalRepayableGiltsTax" mode="M194" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:RealGiltsTax) + sum(../ct:ManufacturedGiltsTax)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9560</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D6 must equal Box D4 plus Box D5.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total repayable gilts tax is valid if and only if it equals ( [D4] plus [D5] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M194" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M194" priority="-1"/>
  <axsl:template match="@*|node()" mode="M194" priority="-2">
    <axsl:apply-templates mode="M194" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p192-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Gilts" mode="M195" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:RealGiltsTax or ct:ManufacturedGiltsTax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9557</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D4 or Box D5 must be completed if 'Gilts' is present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Gilts is present the following should be true: [D4] or [D5]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M195" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M195" priority="-1"/>
  <axsl:template match="@*|node()" mode="M195" priority="-2">
    <axsl:apply-templates mode="M195" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p196-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:PensionBusiness/ct:TotalPensionTax" mode="M196" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../../ct:Gilts/ct:TotalRepayableGiltsTax) + sum(../ct:PensionIncomeTaxSuffered) + sum(../ct:OtherIncomeTaxSuffered)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9561</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D9 must equal the sum of Boxes D6, D7 and D8.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total pension tax is valid if and only if it equals ( The sum of [D6], [D7], and [D8] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:RelevantCredits/ct:AppropriatePlusRelevant"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9562</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 must be completed if Box D9 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D13] must be present if [D9] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M196" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M196" priority="-1"/>
  <axsl:template match="@*|node()" mode="M196" priority="-2">
    <axsl:apply-templates mode="M196" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p197-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:TotalIncomeTaxSuffered" mode="M197" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:RelevantCredits/ct:AppropriatePlusRelevant"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9563</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 must be completed if Box D10 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D13] must be present if [D10] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M197" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M197" priority="-1"/>
  <axsl:template match="@*|node()" mode="M197" priority="-2">
    <axsl:apply-templates mode="M197" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p198-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:IncomeTaxDeducted" mode="M198" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:RelevantCredits/ct:AppropriatePlusRelevant"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9564</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 must be completed if Box D11 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D13] must be present if [D11] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M198" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M198" priority="-1"/>
  <axsl:template match="@*|node()" mode="M198" priority="-2">
    <axsl:apply-templates mode="M198" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p199-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:CorporationTax" mode="M199" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:RelevantCredits/ct:AppropriatePlusRelevant"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9565</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 must be completed if Box D12 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D13] must be present if [D12] is present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M199" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M199" priority="-1"/>
  <axsl:template match="@*|node()" mode="M199" priority="-2">
    <axsl:apply-templates mode="M199" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p201-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:RelevantCredits/ct:AppropriatePlusRelevant" mode="M200" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(((sum(../../ct:Schedule19AB/ct:NotionalRepayments) + sum(../../ct:TotalIncomeTaxSuffered)) - (sum(../../ct:IncomeTaxDeducted) + sum(../../ct:CorporationTax))) &lt;= 0)    or  (((sum(../../ct:PensionBusiness/ct:TotalPensionTax)) - (((sum(../../ct:Schedule19AB/ct:NotionalRepayments) + sum(../../ct:TotalIncomeTaxSuffered)) - (sum(../../ct:IncomeTaxDeducted) + sum(../../ct:CorporationTax)))) &lt; 0.001) and (math:abs((.) - (sum(../../ct:PensionBusiness/ct:TotalPensionTax))) &lt; 0.001))   or (((((sum(../../ct:Schedule19AB/ct:NotionalRepayments) + sum(../../ct:TotalIncomeTaxSuffered)) - (sum(../../ct:IncomeTaxDeducted) + sum(../../ct:CorporationTax)))) - (sum(../../ct:PensionBusiness/ct:TotalPensionTax)) &lt; 0.001) and (math:abs((.) - (((sum(../../ct:Schedule19AB/ct:NotionalRepayments) + sum(../../ct:TotalIncomeTaxSuffered)) - (sum(../../ct:IncomeTaxDeducted) + sum(../../ct:CorporationTax))))) &lt; 0.001))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9567</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 must equal the lower of Box D9 or (Box D2 plus Box D10) minus (Box D11 plus Box D12), but cannot be less than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If the sum ([D2] + [D10] minus ([D11] + [D12]) ) is positive, then [D13] must equal the lower of [D9] or that sum, where [D9] is treated as being zero if absent.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((sum(../../ct:Schedule19AB/ct:NotionalRepayments) + sum(../../ct:TotalIncomeTaxSuffered)) - (sum(../../ct:IncomeTaxDeducted) + sum(../../ct:CorporationTax))) &gt; 0 or (.) = 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9568</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the sum of (Box D2 plus Box D10) minus the sum of (Box D11 and Box D12) is not positive, then Box D13 must be (0) zero or absent.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If the sum ([D2] + [D10] minus ([D11] + [D12]) ) is not positive, then [D13] must be zero or absent.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M200" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M200" priority="-1"/>
  <axsl:template match="@*|node()" mode="M200" priority="-2">
    <axsl:apply-templates mode="M200" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p202-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:RelevantCredits/ct:TotalFinalPlusCredits" mode="M201" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:AppropriatePlusRelevant) + sum(../ct:TaxCredits)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9569</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D15 must equal Box D13 plus Box D14.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Total final plus credits is valid if and only if it equals ( [D13] plus [D14] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M201" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M201" priority="-1"/>
  <axsl:template match="@*|node()" mode="M201" priority="-2">
    <axsl:apply-templates mode="M201" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p200-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:RelevantCredits" mode="M202" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:AppropriatePlusRelevant or ct:TaxCredits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9566</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D13 or Box D14 must be completed if 'Relevant Credits' is present.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Relevant credits is present the following should be true: [D13] or [D14]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M202" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M202" priority="-1"/>
  <axsl:template match="@*|node()" mode="M202" priority="-2">
    <axsl:apply-templates mode="M202" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p203-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS/ct:Liability" mode="M203" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((../ct:Schedule19AB/ct:TotalRepayments - sum(../ct:RelevantCredits/ct:TotalFinalPlusCredits)) &gt; 0 and (.) = (../ct:Schedule19AB/ct:TotalRepayments - sum(../ct:RelevantCredits/ct:TotalFinalPlusCredits)))               or             (not((../ct:Schedule19AB/ct:TotalRepayments - sum(../ct:RelevantCredits/ct:TotalFinalPlusCredits)) &gt; 0) and (.) = 0)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9570</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D16 must equal Box D3 minus Box D15 if this sum is positive. Otherwise, Box D16 must equal 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[D16] must equal [D3] minus [D15] if the sum is positive.  Otherwise, [D16] must equal zero.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M203" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M203" priority="-1"/>
  <axsl:template match="@*|node()" mode="M203" priority="-2">
    <axsl:apply-templates mode="M203" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p188-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance/ct:INYEARREPAYMENTS" mode="M204" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:Schedule19AB/ct:TotalRepayments &gt; sum(ct:RelevantCredits/ct:TotalFinalPlusCredits)) or ct:Liability"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9551</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box D16 must be completed if Box D3 is greater than Box D15.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Liability should be present if [D3] exceeds [D15]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('2004-04-05')) div 86400))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9552</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Boxes D1, D2 and D3 can only be completed if the period covered by the return 'From' date is on or before 05/04/2004.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [D1-D16] is submitted then [AP From Date] must be on or before '2004-04-05'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M204" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M204" priority="-1"/>
  <axsl:template match="@*|node()" mode="M204" priority="-2">
    <axsl:apply-templates mode="M204" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p187-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Insurance" mode="M205" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:INYEARREPAYMENTS or ct:Declaration"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9550</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Either 'In year repayments' or 'Overseas life assurance business declaration' must be submitted.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Either [D1-D16] or [Overseas life assurance business declaration] must be submitted.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600D = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9308</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600D is present so 'CT600D (Insurance)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Insurance is present the following should be true: [CT600D attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M205" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M205" priority="-1"/>
  <axsl:template match="@*|node()" mode="M205" priority="-2">
    <axsl:apply-templates mode="M205" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p205-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:ClaimExemption/ct:Status" mode="M206" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:AllCharitable/ct:ClaimingExemptionAllOrPart or ct:AllCharitable/ct:AllExempt or ct:SomeNotOnlyCharitable"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9600</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">At least one of the 'Claims to exemption' boxes must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Status is present the following should be true: [Claiming exemption all or part tick box] or [All exemptAll exempt tick box] or [Some not only charitable tick box]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M206" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M206" priority="-1"/>
  <axsl:template match="@*|node()" mode="M206" priority="-2">
    <axsl:apply-templates mode="M206" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p207-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments/ct:TotalDue/ct:IncomeTax" mode="M207" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:FurtherDue or ../../ct:AmountsOverclaimed"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9605</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If 'Total repayment or payment due' is completed either 'Further repayments or payment due' or 'Amounts overclaimed for period' must also be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Income tax is present the following should be true: [E3,E3c] or [E4,E4d]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M207" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M207" priority="-1"/>
  <axsl:template match="@*|node()" mode="M207" priority="-2">
    <axsl:apply-templates mode="M207" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p208-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments/ct:FurtherDue/ct:IncomeTax" mode="M208" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((sum(../../ct:TotalDue/ct:IncomeTax) &lt; sum(../../ct:AlreadyClaimed/ct:IncomeTax)) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9606</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E3 must not be completed if Box E2 is less than Box E1.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E3] should not be present if [E2] is less than [E1]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M208" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M208" priority="-1"/>
  <axsl:template match="@*|node()" mode="M208" priority="-2">
    <axsl:apply-templates mode="M208" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p209-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments/ct:FurtherDue/ct:TransitionalRelief" mode="M209" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((sum(../../ct:TotalDue/ct:TransitionalRelief) &lt; sum(../../ct:AlreadyClaimed/ct:TransitionalRelief)) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9607</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E3c must not be completed if Box E2b is less than Box E1a.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E3c] should not be present if [E2b] is less than [E1a]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M209" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M209" priority="-1"/>
  <axsl:template match="@*|node()" mode="M209" priority="-2">
    <axsl:apply-templates mode="M209" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p210-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments/ct:AmountsOverclaimed/ct:IncomeTax" mode="M210" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((sum(../../ct:AlreadyClaimed/ct:IncomeTax) &lt; sum(../../ct:TotalDue/ct:IncomeTax)) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9608</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E4 must not be completed if Box E1 is less than Box E2.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E4] should not be present if [E1] is less than [E2]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M210" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M210" priority="-1"/>
  <axsl:template match="@*|node()" mode="M210" priority="-2">
    <axsl:apply-templates mode="M210" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p211-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments/ct:AmountsOverclaimed/ct:TransitionalRelief" mode="M211" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((sum(../../ct:AlreadyClaimed/ct:TransitionalRelief) &lt; sum(../../ct:TotalDue/ct:TransitionalRelief)) and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9609</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E4d must not be completed if Box E1a is less than Box E2b.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E4d] should not be present if [E1a] is less than [E2b]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M211" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M211" priority="-1"/>
  <axsl:template match="@*|node()" mode="M211" priority="-2">
    <axsl:apply-templates mode="M211" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p212-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments/ct:E3E3cIncludedAmounts" mode="M212" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:FurtherDue"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9610</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">E3 E3c Included amounts' can only be 'Yes' if either Box E3 or Box E3c is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If E3 e3c included amounts is present the following should be true: [E3,E3c]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M212" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M212" priority="-1"/>
  <axsl:template match="@*|node()" mode="M212" priority="-2">
    <axsl:apply-templates mode="M212" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p206-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:Repayments" mode="M213" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(sum(ct:TotalDue/ct:IncomeTax) &gt; sum(ct:AlreadyClaimed/ct:IncomeTax)) or ct:FurtherDue/ct:IncomeTax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9601</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E3 must be completed if Box E2 is greater than Box E1.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E3] should be present if [E2] exceeds [E1]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(sum(ct:TotalDue/ct:TransitionalRelief) &gt; sum(ct:AlreadyClaimed/ct:TransitionalRelief)) or ct:FurtherDue/ct:TransitionalRelief"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9602</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E3c must be completed if Box E2b is greater than Box E1a.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E3c] should be present if [E2b] exceeds [E1a]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(sum(ct:AlreadyClaimed/ct:IncomeTax) &gt; sum(ct:TotalDue/ct:IncomeTax)) or ct:AmountsOverclaimed/ct:IncomeTax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9603</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E4 must be completed if Box E1 is greater than Box E2.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E4] should be present if [E1] exceeds [E2]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(sum(ct:AlreadyClaimed/ct:TransitionalRelief) &gt; sum(ct:TotalDue/ct:TransitionalRelief)) or ct:AmountsOverclaimed/ct:TransitionalRelief"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9604</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E4d must be completed if Box E1a is greater than Box E2b.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[E4d] should be present if [E1a] exceeds [E2b]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M213" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M213" priority="-1"/>
  <axsl:template match="@*|node()" mode="M213" priority="-2">
    <axsl:apply-templates mode="M213" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p213-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:InformationRequired/ct:Expenditure/ct:TradingCosts" mode="M214" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../../ct:Income/ct:TotalTurnover) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9611</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E14 can only be completed if Box E5 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Trading costs is present the following should be true: [E5] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M214" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M214" priority="-1"/>
  <axsl:template match="@*|node()" mode="M214" priority="-2">
    <axsl:apply-templates mode="M214" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p214-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:InformationRequired/ct:Expenditure/ct:UKlandBuildings" mode="M215" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="sum(../../ct:Income/ct:UKlandBuildings) &gt; 0"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9612</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E15 can only be completed if Box E7 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If UKland buildings is present the following should be true: [E7] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M215" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M215" priority="-1"/>
  <axsl:template match="@*|node()" mode="M215" priority="-2">
    <axsl:apply-templates mode="M215" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p215-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity/ct:InformationRequired/ct:Assets/ct:InvestmentsOrLoans/ct:Qualifying" mode="M216" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:ValueOfNonQualifying and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9613</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box E26 must not be 'Yes' if Box E27 is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Qualifying should not be present if [E27]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M216" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M216" priority="-1"/>
  <axsl:template match="@*|node()" mode="M216" priority="-2">
    <axsl:apply-templates mode="M216" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p204-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:Charity" mode="M217" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600E = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9309</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600E is present so 'CT600E (Charities and Community Amateur Sports Clubs)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Charity is present the following should be true: [CT600E attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M217" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M217" priority="-1"/>
  <axsl:template match="@*|node()" mode="M217" priority="-2">
    <axsl:apply-templates mode="M217" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p218-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:Information/ct:TonnageGroup/ct:GroupElection" mode="M218" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes') or ../ct:Name"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9651</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the company was a party to a tonnage tax group election, the name of the tonnage tax group of which the company was a member must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [F1] is 'yes', then [F2] must be present</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes') or ../../ct:GroupMetCharteredInLimit"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9652</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the company was a party to a tonnage tax group election, the company must indicate whether the group met the 75% limit on chartered-in tonnage.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [F1] is 'yes', then [F6] must be present</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M218" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M218" priority="-1"/>
  <axsl:template match="@*|node()" mode="M218" priority="-2">
    <axsl:apply-templates mode="M218" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p219-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:Information/ct:TonnageGroup/ct:Name" mode="M219" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:GroupElection = 'no') or not((.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9653</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The name of tonnage tax group must not be completed if the company was not a party to a tonnage tax group election.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [F1] is 'no', [F2] must not be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M219" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M219" priority="-1"/>
  <axsl:template match="@*|node()" mode="M219" priority="-2">
    <axsl:apply-templates mode="M219" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p220-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:Information/ct:TonnageGroup/ct:RepresentativeCompany" mode="M220" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((../ct:GroupElection = 'no') and (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9654</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Name of representative company must not be completed if the company was not a party to a tonnage tax group election.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Representative company should not be present if [F1] equals 'no'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (../ct:GroupElection = 'yes')                   or (ct:TonnageTaxGroupArrangement and not(ct:NotApplicable))                   or (not(ct:TonnageTaxGroupArrangement) and ct:NotApplicable)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9655</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the company was a party to a tonnage tax group election, enter either the 'Name' and 'Tax Reference' of the representative company or indicate that this is 'Not Applicable'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [F1] is 'yes' then exactly one of [Tonnage tax group arrangement] and [F3 - No representative company] must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M220" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M220" priority="-1"/>
  <axsl:template match="@*|node()" mode="M220" priority="-2">
    <axsl:apply-templates mode="M220" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p221-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:Information/ct:CompanyMetCharteredInLimit" mode="M221" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:TonnageGroup/ct:GroupElection = 'yes') or (. = 'na')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9656</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the company was a party to a tonnage tax group election then it must indicate that the company meeting the 75% limit on chartered-in tonnage is 'Not Applicable'</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[F5] must equal 'na' if [F1] is 'yes'.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M221" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M221" priority="-1"/>
  <axsl:template match="@*|node()" mode="M221" priority="-2">
    <axsl:apply-templates mode="M221" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p222-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:Information/ct:GroupMetCharteredInLimit" mode="M222" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(. = 'na') or (../ct:TonnageGroup/ct:RepresentativeCompany/ct:TonnageTaxGroupArrangement/ct:Name and (../ct:TonnageGroup/ct:RepresentativeCompany/ct:TonnageTaxGroupArrangement/ct:Name = ../../../../ct:CompanyInformation/ct:CompanyName))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9657</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If this company was not the representative company where there was a tonnage tax group arrangement, the group meeting the 75% limit on chartered-in tonnage must be 'Not Applicable'</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[F6] must be 'na' if [F3 - Name] is absent or not equal to [Company name].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(. = 'yes') or (. = 'no') or (not(../ct:TonnageGroup/ct:RepresentativeCompany/ct:TonnageTaxGroupArrangement/ct:Name = ../../../../ct:CompanyInformation/ct:CompanyName))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9658</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If this company was the representative company, then it must indicate that the group meeting the 75% limit on chartered-in tonnage is 'Yes' or 'No' </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[F6] must be 'yes' or 'no' if [F3 - Name] equals [Company name].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:TonnageGroup/ct:GroupElection = 'no') or not((.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9659</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The group meeting the 75% limit on chartered-in tonnage must not be completed if the company was not a party to a tonnage tax group election.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [F1] is 'no', then [F6] must not be present</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M222" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M222" priority="-1"/>
  <axsl:template match="@*|node()" mode="M222" priority="-2">
    <axsl:apply-templates mode="M222" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p223-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:Information/ct:OffshoreActivities" mode="M223" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((.) = 'yes') or ../../ct:OffshoreTrainingAllowance"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9660</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Offshore training allowance' must be completed if the company is subject to the special rules for offshore activities.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Offshore training allowance should be present if [F7] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M223" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M223" priority="-1"/>
  <axsl:template match="@*|node()" mode="M223" priority="-2">
    <axsl:apply-templates mode="M223" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p224-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax/ct:QualifyingShips/ct:Total" mode="M224" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". = floor(sum(../ct:Ship/ct:Profits) + 0.0001 )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9663</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box F10 must equal the sum of  all the 'Tonnage tax profits' amounts rounded down to the nearest whole pound.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[F10] must equal (the sum of all iterations of [Tonnage tax profits]) rounded down to the nearest whole pound.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M224" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M224" priority="-1"/>
  <axsl:template match="@*|node()" mode="M224" priority="-2">
    <axsl:apply-templates mode="M224" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p217-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax/ct:TonnageTax" mode="M225" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:QualifyingShips or ct:RelevantShippingProfits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9650</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Form CT600F can only be present if at least one of 'Computation of tonnage tax profits' or 'Relevant shipping profits' is completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Tonnage tax is present the following should be true: [Qualifying ships] or [4: Relevant shipping profits]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M225" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M225" priority="-1"/>
  <axsl:template match="@*|node()" mode="M225" priority="-2">
    <axsl:apply-templates mode="M225" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p216-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TonnageTax" mode="M226" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600F = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9310</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600F is present so 'CT600F (Tonnage tax)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Tonnage tax is present the following should be true: [CT600F attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M226" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M226" priority="-1"/>
  <axsl:template match="@*|node()" mode="M226" priority="-2">
    <axsl:apply-templates mode="M226" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p227-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:InvestmentRelief/ct:ShareDetails/ct:DateOfIssue" mode="M227" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &gt;= translate('2000-04-01','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9701</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Investment relief 'Date of issue (given on form CVS 3)' must be on or after 01/04/2000.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Date of issue] should be on or after '2000-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &lt;= translate('2010-03-31','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9702</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Investment relief 'Date of issue (given on form CVS 3)' must be on or before 31/03/2010.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Date of issue] should be on or before '2010-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M227" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M227" priority="-1"/>
  <axsl:template match="@*|node()" mode="M227" priority="-2">
    <axsl:apply-templates mode="M227" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p228-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:InvestmentRelief/ct:TotalInvestmentReliefClaimed" mode="M228" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../../../ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:CVSInvestmentRelief and (../../../../ct:CompanyTaxCalculation/ct:TaxReliefsAndDeductions/ct:CVSInvestmentRelief = (.))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9703</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If Box G1 is completed, Box 71 must be completed and equal to Box G1.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If there is an entry in [G1] then [71] must be present and must equal that value.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (sum(../ct:ShareDetails/ct:InvestmentReliefClaimed))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9704</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box G1 must equal the sum of 'Amount of investment relief claimed net of any reduction for value received' amounts.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>This must equal the total of all iterations of [Investment Relief Claimed].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M228" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M228" priority="-1"/>
  <axsl:template match="@*|node()" mode="M228" priority="-2">
    <axsl:apply-templates mode="M228" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p229-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:LossesOnDisposals/ct:DateOfIssue" mode="M229" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &gt;= translate('2000-04-01','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9705</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for losses on disposals of shares 'Date of issue of shares' must be on or after 01/04/2000.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Date of issue of sharesDate of issue of shares] should be on or after '2000-04-01'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &lt;= translate('2010-03-31','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9706</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for losses on disposals of shares 'Date of issue of shares' must be on or before 31/03/2010.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Date of issue of sharesDate of issue of shares] should be on or before '2010-03-31'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &lt;= translate(../ct:DateOfDisposal,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9707</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for losses on disposals of shares 'Date of issue of shares' must be on or before Relief for losses on disposals of shares 'Date of disposal of shares'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Date of issue of sharesDate of issue of shares] should be on or before [Date of Disposal]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M229" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M229" priority="-1"/>
  <axsl:template match="@*|node()" mode="M229" priority="-2">
    <axsl:apply-templates mode="M229" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p230-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:LossesOnDisposals/ct:DateOfDisposal" mode="M230" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="concat(translate(., '-',''),'000000') &lt;= translate(string(/hd:GovTalkMessage/hd:Header/hd:MessageDetails/hd:GatewayTimestamp),'-:T','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9708</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for losses on disposals of shares 'Date of disposal of shares' must not be later than the date of submission.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must not be later than the date of submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M230" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M230" priority="-1"/>
  <axsl:template match="@*|node()" mode="M230" priority="-2">
    <axsl:apply-templates mode="M230" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p231-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:LossesOnDisposals/ct:FromDate" mode="M231" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &lt;= translate(../ct:ToDate,'-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9709</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for losses on disposals of shares Accounting period of claim 'From' date must be on or before the Accounting period of claim 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Accounting period of claim from date] should be on or before [To Date]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="number(translate(.,'-','')) &gt; number(translate(../ct:ToDate,'-','')) - 10000"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9710</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Relief for losses on disposals of shares Accounting period of claim 'From' date must not be more than 12 months earlier than Relief for losses on disposals of shares Accounting period of claim 'To' date.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Accounting period of claim from date] must not be more than 12 months earlier than [To Date].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M231" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M231" priority="-1"/>
  <axsl:template match="@*|node()" mode="M231" priority="-2">
    <axsl:apply-templates mode="M231" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p232-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:DeferralRelief/ct:DateDisposal" mode="M232" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="concat(translate(., '-',''),'000000') &lt;= translate(string(/hd:GovTalkMessage/hd:Header/hd:MessageDetails/hd:GatewayTimestamp),'-:T','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9711</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Deferral relief 'Date of disposal or of other chargeable event' must not be later than the date of submission.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must not be later than the date of submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M232" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M232" priority="-1"/>
  <axsl:template match="@*|node()" mode="M232" priority="-2">
    <axsl:apply-templates mode="M232" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p233-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme/ct:DeferralRelief/ct:NewDateIssue" mode="M233" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="concat(translate(., '-',''),'000000') &lt;= translate(string(/hd:GovTalkMessage/hd:Header/hd:MessageDetails/hd:GatewayTimestamp),'-:T','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9712</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Deferral relief 'Date of issue of new qualifying shares' must not be later than the date of submission.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Must not be later than the date of submission.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M233" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M233" priority="-1"/>
  <axsl:template match="@*|node()" mode="M233" priority="-2">
    <axsl:apply-templates mode="M233" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p226-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme/ct:CorporateVenturingScheme" mode="M234" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="ct:InvestmentRelief or ct:LossesOnDisposals or ct:DeferralRelief"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9700</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600G 'Corporate venturing scheme' is present so 'Investment Relief' or 'Relief for losses on disposal of shares' or 'Deferral relief' must be completed.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Corporate venturing scheme is present the following should be true: [Investment Relief] or [Losses on Disposals] or [Deferral Relief]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M234" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M234" priority="-1"/>
  <axsl:template match="@*|node()" mode="M234" priority="-2">
    <axsl:apply-templates mode="M234" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p225-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CorporateVenturingScheme" mode="M235" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600G = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9311</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600G is present so 'CT600G (Corporate Venturing Scheme)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Corporate venturing scheme is present the following should be true: [CT600G attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M235" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M235" priority="-1"/>
  <axsl:template match="@*|node()" mode="M235" priority="-2">
    <axsl:apply-templates mode="M235" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p235-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CrossBorderRoyalties/ct:Royalties/ct:DeductionAmount" mode="M236" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - (round((../ct:Amount * (translate(string(../ct:DeductionRate),'.',''))) div 100) div 100)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9750</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">All 'Amount of tax deducted from payment' amounts, must equal 'Gross Amount of Royalty paid' multiplied by 'Rate of tax deducted from payment' divided by 100, and rounded to the nearest penny (round down for factions less than half a penny, and round up for fractions of half a penny or greater).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>For each iteration, [Deduction amount] must equal [Gross amount of royalty paid] multiplied by [Deduction rate] divided by 100, and rounded to the nearest penny (round down for factions less than half a penny, and round up for fractions of half a penny or greater).</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M236" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M236" priority="-1"/>
  <axsl:template match="@*|node()" mode="M236" priority="-2">
    <axsl:apply-templates mode="M236" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p234-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:CrossBorderRoyalties" mode="M237" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600H = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9312</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600H is present so 'CT600H (Cross-border royalties)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Cross border royalties is present the following should be true: [CT600H attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M237" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M237" priority="-1"/>
  <axsl:template match="@*|node()" mode="M237" priority="-2">
    <axsl:apply-templates mode="M237" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p237-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:DisallowedFinancingCosts/ct:Total" mode="M238" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((sum(../ct:RelatedToCompany) + sum(../ct:RelatedToLossRelief)))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9802</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I4 must equal Box I2 plus Box I3.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[I4] should equal ( [I2] plus [I3] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M238" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M238" priority="-1"/>
  <axsl:template match="@*|node()" mode="M238" priority="-2">
    <axsl:apply-templates mode="M238" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p238-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:Profits" mode="M239" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not (../ct:Trade/ct:Profits = 'yes')             or (math:abs((.) - (../ct:Trade/ct:Amount + sum(../ct:DisallowedFinancingCosts/ct:Total))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9803</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If CT600I Box A is 'Yes' Box I5 must equal Box I1 plus Box I4.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [A] is 'yes' then [I5] must equal [I1] plus [I4].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not( ../ct:Trade/ct:Losses = 'yes')           or (               sum(../ct:DisallowedFinancingCosts/ct:Total) - ../ct:Trade/ct:Amount &lt;= 0             and               (math:abs((.) - (0)) &lt; 0.001)           )           or (               sum(../ct:DisallowedFinancingCosts/ct:Total) - ../ct:Trade/ct:Amount &gt; 0             and               (math:abs((.) - (sum(../ct:DisallowedFinancingCosts/ct:Total) - ../ct:Trade/ct:Amount)) &lt; 0.001)           )"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9804</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If CT600I Box B is 'Yes' Box I5 must equal Box I4 minus Box I1 or 0 (zero) if this is a negative amount.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [B] is 'yes' then [I5] must equal [I4] minus [I1] if the sum is positive, or zero otherwise.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M239" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M239" priority="-1"/>
  <axsl:template match="@*|node()" mode="M239" priority="-2">
    <axsl:apply-templates mode="M239" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p239-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:MinusLosses" mode="M240" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test=". &lt;= ../ct:Profits"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9805</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I6 must not be greater than Box I5.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[I6] should not exceed [I5]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M240" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M240" priority="-1"/>
  <axsl:template match="@*|node()" mode="M240" priority="-2">
    <axsl:apply-templates mode="M240" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p240-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:FieldAllowance" mode="M241" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2009-04-21')) div 86400)))"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9815</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I12 must not be completed if the period 'To' date is on or before the 21/04/2009</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[I12] should not be present if [AP To Date] onOrBefore 2009-04-21</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="((.) - ((../ct:Profits - sum(../ct:MinusLosses))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9816</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I12 must not be greater than Box I5 minus Box I6</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[I12] should not exceed ( [I5] minus [I6] )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M241" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M241" priority="-1"/>
  <axsl:template match="@*|node()" mode="M241" priority="-2">
    <axsl:apply-templates mode="M241" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p241-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:NetProfits" mode="M242" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(math:abs((.) - ((../ct:Profits - (sum(../ct:MinusLosses) + sum(../ct:FieldAllowance))))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9817</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I7 must equal Box I5 minus (the sum of Boxes I6 and I12)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[I7] should equal ( [I5] minus ( [I6] plus [I12] ) )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M242" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M242" priority="-1"/>
  <axsl:template match="@*|node()" mode="M242" priority="-2">
    <axsl:apply-templates mode="M242" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p242-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:Tax" mode="M243" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:CompanyTaxCalculation/ct:S501AtaxCharge and ../../ct:CompanyTaxCalculation/ct:S501AtaxCharge = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9807</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 82 must be completed and equal to Box I8.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [I8] is submitted then [82] must be present and equal to [I8].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2005-12-31')) div 86400))) or (math:abs((.) - (../ct:NetProfits * 0.1)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9808</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'To' date is on or before 31/12/2008 then Box I8 must equal Box I7 multiplied by 0.1.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP To Date] is on or before '2005-12-31' then [I8] must equal [I7] * 0.1.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space('2006-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)))              or               not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2011-03-23')) div 86400)))             or               (math:abs((.) - (../ct:NetProfits * 0.2)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9809</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'From' date is on or after 01/01/2006 and the return period 'To' date is on or before 23/03/2011 then [I8] must equal [I7] multiplied by 0.2.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or after '2006-01-01' and [AP To Date] is on or before '2011-03-23' then [I8] must equal [I7] * 0.2.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('2005-12-31')) div 86400)))          or not((round(date:seconds(normalize-space('2006-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400)))          or (math:abs((.) - ((round((round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(&quot;2005-12-31&quot;)))) div 86400) + 1) * ../ct:NetProfits div (round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1)) * 0.1) + ((../ct:NetProfits - round((round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(&quot;2005-12-31&quot;)))) div 86400) + 1) * ../ct:NetProfits div (round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1))) * 0.2))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9810</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'From' date is on or before 31/12/2005 and the return period 'To' date is on or after 01/01/2006 then part 1 must equal the number of days between the return period 'From' date and 31/12/2005 inclusive multiplied by Box I7 and divided by the number of days between the return period 'From' date and the return period 'To' date inclusive.  Part 2 must equal Box I7 minus part 1 and Box I8 must equal part 1 multiplied by 0.1 plus part 2 multiplied by 0.2.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or before '2005-12-31' and [AP To Date] is on or after '2006-01-01' then calculate as follows: part1 = number of days between [AP From Date] and '2005-12-31' inclusive multiplied by [I7] and divided by number of days between [AP From Date] and [AP To Date] inclusive; part2 = [I7] minus part1; [I8] must equal part1 * 0.1 + part2 * 0.2. To round part1: If the pence figure is equal to or greater than 50p then round part1 up, otherwise round part1 down, to the nearest whole pound.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space('2011-03-24')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400)))              or               not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400) &lt;= round(date:seconds(normalize-space('2014-12-31')) div 86400)))             or               (math:abs((.) - (../ct:NetProfits * 0.32)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9818</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'From' date is on or after 24/03/2011 and the return period 'To' date is on or before 31/12/2014 then Box I8 must equal Box I7 multiplied by 0.32.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or after '2011-03-24' and [AP To Date] is on or before '2014-12-31' then [I8] must equal [I7] * 0.32.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('2011-03-23')) div 86400)))          or not((round(date:seconds(normalize-space('2011-03-24')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400)))          or (math:abs((.) - ((round((round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(&quot;2011-03-23&quot;)))) div 86400) + 1) * ../ct:NetProfits div (round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1)) * 0.2) + ((../ct:NetProfits - round((round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(&quot;2011-03-23&quot;)))) div 86400) + 1) * ../ct:NetProfits div (round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1))) * 0.32))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9819</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'From' date is on or before 23/03/2011 and the return period 'To' date is on or after 24/03/2011 then part 1 must equal the number of days between the return period 'From' date and 23/03/2011 inclusive multiplied by Box I7 and divided by the number of days between the return period 'From' date and the return period 'To' date inclusive. Part 2 must equal Box I7 minus part 1 and Box I8 must equal part 1 multiplied by 0.2 plus part 2 multiplied by 0.32.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or before '2011-03-23' and [AP To Date] is on or after '2011-03-24' then calculate as follows: part1 = number of days between [AP From Date] and '2011-03-23' inclusive multiplied by [I7] and divided by number of days between [AP From Date] and [AP To Date] inclusive; part2 = [I7] minus part1; [I8] must equal part1 * 0.2 + part2 * 0.32. To round part1: If the pence figure is equal to or greater than 50p then round part1 up, otherwise round part1 down, to the nearest whole pound.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="(round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt; round(date:seconds(normalize-space('2015-01-01')) div 86400))             or               (math:abs((.) - (../ct:NetProfits * 0.2)) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9820</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'From' date is on or after 01/01/2015 then Box I8 must equal Box I7 multiplied by 0.2</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or after '2015-01-01' then [I8] must equal [I7] * 0.2</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)) div 86400) &lt;= round(date:seconds(normalize-space('2014-12-31')) div 86400)))          or not((round(date:seconds(normalize-space('2015-01-01')) div 86400) &lt;= round(date:seconds(normalize-space(../../ct:CompanyInformation/ct:PeriodCovered/ct:To)) div 86400)))          or (math:abs((.) - ((round((round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(&quot;2014-12-31&quot;)))) div 86400) + 1) * ../ct:NetProfits div (round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1)) * 0.32) + ((../ct:NetProfits - round((round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(&quot;2014-12-31&quot;)))) div 86400) + 1) * ../ct:NetProfits div (round(date:seconds(normalize-space(date:difference(normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:From)),normalize-space(string(../../ct:CompanyInformation/ct:PeriodCovered/ct:To))))) div 86400) + 1))) * 0.2))) &lt; 0.001)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9821</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the return period 'From' date is on or before 31/12/2014 and the return period 'To' date is on or after 01/01/2015 then part 1 must equal the number of days between the return period 'From' date and 31/12/2014 inclusive multiplied by Box I7 and divided by the number of days between the return period 'From' date and the return period 'To' date inclusive. Part 2 must equal Box I7 minus part 1 and Box I8 must equal part 1 multiplied by 0.32 plus part 2 multiplied by 0.2.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP From Date] is on or before '2014-12-31' and [AP To Date] is on or after '2015-01-01' then calculate as follows: part1 = number of days between [AP From Date] and '2014-12-31' inclusive multiplied by [I7] and divided by number of days between [AP From Date] and [AP To Date] inclusive; part2 = [I7] minus part1; [I8] must equal part1 * 0.32 + part2 * 0.2. To round part1: If the pence figure is equal to or greater than 50p then round part1 up, otherwise round part1 down, to the nearest whole pound.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M243" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M243" priority="-1"/>
  <axsl:template match="@*|node()" mode="M243" priority="-2">
    <axsl:apply-templates mode="M243" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p243-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:RingFenceCorpTaxIncluded" mode="M244" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded and ../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:RingFenceCorpTaxIncluded = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9813</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 161 must be completed and equal to Box I10.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [I10] is submitted then [161] must be present and equal to [I10].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M244" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M244" priority="-1"/>
  <axsl:template match="@*|node()" mode="M244" priority="-2">
    <axsl:apply-templates mode="M244" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p244-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade/ct:TaxUnderS501AICTA1988" mode="M245" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included and ../../ct:CompanyTaxCalculation/ct:TaxReconciliation/ct:TaxUnderS501AICTA1988included = (.)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9814</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 166 must be completed and equal to Box I11.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [I11] is submitted then [166] must be present and equal to [I11].</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M245" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M245" priority="-1"/>
  <axsl:template match="@*|node()" mode="M245" priority="-2">
    <axsl:apply-templates mode="M245" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p236-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:RingFenceTrade" mode="M246" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(ct:NetProfits &gt; 0) or ct:Tax"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9800</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I8 must be completed if Box I7 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Tax should be present if [I7] exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not((ct:Trade/ct:Losses = 'yes') and ((((ct:Trade/ct:Amount - sum(ct:DisallowedFinancingCosts/ct:RelatedToCompany))) - (0) &gt;= 0.001))) or ct:LossesArising"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9801</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box I9 must be completed if CT600I Box B is 'Yes' and Box I1 minus Box I2 is greater than 0 (zero).</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[I9] should be present if [B] equals 'yes' and ( [I1] minus [I2] ) exceeds 0</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600I = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9313</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600I is present so 'CT600I (Supplementary charge in respect of ring fence trade)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Ring fence trade is present the following should be true: [CT600I attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M246" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M246" priority="-1"/>
  <axsl:template match="@*|node()" mode="M246" priority="-2">
    <axsl:apply-templates mode="M246" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p246-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TaxAvoidanceSchemes/ct:AvoidanceSchemes/ct:AccountingPeriod" mode="M247" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="translate(.,'-','') &gt;= translate('2004-03-18','-','')"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9850</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">The last day of the 'Accounting period in which the expected advantage arises' must be on or after 18/03/2004.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>Accounting period is valid if and only if it is onOrAfter '2004-03-18'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M247" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M247" priority="-1"/>
  <axsl:template match="@*|node()" mode="M247" priority="-2">
    <axsl:apply-templates mode="M247" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p245-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:TaxAvoidanceSchemes" mode="M248" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../ct:ReturnInfoSummary/ct:SupplementaryPages/ct:CT600J = 'yes'"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9314</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">A CT600J is present so 'CT600J (Disclosure of tax avoidance schemes)' must be 'Yes'.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If Tax avoidance schemes is present the following should be true: [CT600J attached] equals 'yes'</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M248" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M248" priority="-1"/>
  <axsl:template match="@*|node()" mode="M248" priority="-2">
    <axsl:apply-templates mode="M248" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p249-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Accounts/ct:Instance/ct:EncodedInlineXBRLDocument" mode="M249" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(./../ct:EncodedInlineXBRLDocument) &lt;= 1                 or               @Filename"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9970</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not provided file name attributes for each of the pages</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of [Base 64 encoded XBRL document] are submitted, each must have a Filename attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M249" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M249" priority="-1"/>
  <axsl:template match="@*|node()" mode="M249" priority="-2">
    <axsl:apply-templates mode="M249" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p250-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Accounts/ct:Instance/ct:InlineXBRLDocument" mode="M250" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(./../ct:InlineXBRLDocument) &lt;= 1                 or               @Filename"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9970</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not provided file name attributes for each of the pages</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of [Inline XBRL document] are submitted, each must have a Filename attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M250" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M250" priority="-1"/>
  <axsl:template match="@*|node()" mode="M250" priority="-2">
    <axsl:apply-templates mode="M250" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p248-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Accounts/ct:Instance" mode="M251" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:EncodedInlineXBRLDocument) &lt; 2 or count(ct:EncodedInlineXBRLDocument[@entryPoint]) = 1"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9900</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not identified the main or primary page with an Entry Point attribute.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of EncodedInlineXBRLDocument are submitted, exactly one should have an EntryPoint attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:InlineXBRLDocument) &lt; 2 or count(ct:InlineXBRLDocument[@entryPoint]) = 1"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9901</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not identified the main or primary page with an Entry Point attribute.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of InlineXBRLDocument are submitted, exactly one should have an EntryPoint attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M251" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M251" priority="-1"/>
  <axsl:template match="@*|node()" mode="M251" priority="-2">
    <axsl:apply-templates mode="M251" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p251-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Accounts/ct:Extension" mode="M252" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:Instance/ct:RawXBRLDocument)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9902</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">An extension taxonomy must not be provided if raw XBRL is submitted. Please contact your software supplier.  </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Extension taxonomy] should not be present if [Raw XBRL document content]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M252" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M252" priority="-1"/>
  <axsl:template match="@*|node()" mode="M252" priority="-2">
    <axsl:apply-templates mode="M252" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p253-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Computation/ct:Instance/ct:EncodedInlineXBRLDocument" mode="M253" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(./../ct:EncodedInlineXBRLDocument) &lt;= 1                 or               @Filename"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9970</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not provided file name attributes for each of the pages</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of [Base 64 encoded XBRL document] are submitted, each must have a Filename attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M253" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M253" priority="-1"/>
  <axsl:template match="@*|node()" mode="M253" priority="-2">
    <axsl:apply-templates mode="M253" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p254-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Computation/ct:Instance/ct:InlineXBRLDocument" mode="M254" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(./../ct:InlineXBRLDocument) &lt;= 1                 or               @Filename"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9970</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not provided file name attributes for each of the pages</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of [Inline XBRL document] are submitted, each must have a Filename attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M254" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M254" priority="-1"/>
  <axsl:template match="@*|node()" mode="M254" priority="-2">
    <axsl:apply-templates mode="M254" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p252-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Computation/ct:Instance" mode="M255" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:EncodedInlineXBRLDocument) &lt; 2 or count(ct:EncodedInlineXBRLDocument[@entryPoint]) = 1"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9900</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not identified the main or primary page with an Entry Point attribute.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of EncodedInlineXBRLDocument are submitted, exactly one should have an EntryPoint attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="count(ct:InlineXBRLDocument) &lt; 2 or count(ct:InlineXBRLDocument[@entryPoint]) = 1"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9901</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">You have tried to submit multi page accounts or computations but have not identified the main or primary page with an Entry Point attribute.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If multiple repetitions of InlineXBRLDocument are submitted, exactly one should have an EntryPoint attribute.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M255" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M255" priority="-1"/>
  <axsl:template match="@*|node()" mode="M255" priority="-2">
    <axsl:apply-templates mode="M255" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p255-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission/ct:Computation/ct:Extension" mode="M256" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(../ct:Instance/ct:RawXBRLDocument)"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9902</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">An extension taxonomy must not be provided if raw XBRL is submitted. Please contact your software supplier.  </axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[Extension taxonomy] should not be present if [Raw XBRL document content]</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M256" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M256" priority="-1"/>
  <axsl:template match="@*|node()" mode="M256" priority="-2">
    <axsl:apply-templates mode="M256" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p247-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn/ct:AttachedFiles/ct:XBRLsubmission" mode="M257" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ReturnInfoSummary/ct:Accounts/ct:NoAccountsReason                 or                   translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt; '20100401'                 or                   translate(string(/hd:GovTalkMessage/hd:Header/hd:MessageDetails/hd:GatewayTimestamp),'-:T','') &lt; '20110401000000'                 or                   ct:Accounts"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9315</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the period 'To' date is on or after 01/04/2010 and the date of submission is on or after 01/04/2011, the Accounts must be submitted in InlineXBRL format.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP To Date] is on or after '2010-04-01' and date of submission (based on GatewayTimestamp) is on or after '2011-04-01T00:00' and [No accounts reason] is absent then the Accounts child element must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="../../ct:ReturnInfoSummary/ct:Computations/ct:NoComputationsReason                 or                   translate(../../ct:CompanyInformation/ct:PeriodCovered/ct:To,'-','') &lt; '20100401'                 or                   translate(string(/hd:GovTalkMessage/hd:Header/hd:MessageDetails/hd:GatewayTimestamp),'-:T','') &lt; '20110401000000'                 or                   ct:Computation"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9316</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">If the period 'To' date is on or after 01/04/2010 and the date of submission is on or after 01/04/2011, the Accounts must be submitted in InlineXBRL format.</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>If [AP To Date] is on or after '2010-04-01' and date of submission (based on GatewayTimestamp) is on or after '2011-04-01T00:00' and [No computations reason] is absent then the Computation child element must be present.</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M257" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M257" priority="-1"/>
  <axsl:template match="@*|node()" mode="M257" priority="-2">
    <axsl:apply-templates mode="M257" select="@*|node()"/>
  </axsl:template>

<!--PATTERN p3-->


	<!--RULE -->
<axsl:template match="/hd:GovTalkMessage/hd:Body/ct:IRenvelope/ct:CompanyTaxReturn" mode="M258" priority="4000">

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(               not(@Short)              and                ((((sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:CVSLossRelief) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:ManagementExpenses) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:InterestDistributions) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:ScheduleALosses) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:CapitalAllowances) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:NonTradeDeficits) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:NonTradingLossIntangibles) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:TradingLosses) +                   sum(ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:NonTradeCapitalAllowances))) - (0) &gt;= 0.001)               )             )            or             ct:CompanyTaxCalculation/ct:DeductionsAndReliefs/ct:Total"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9318</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 33 must be completed if the "Short" return flag does not equal 'yes' and the sum of Boxes 22, 24, 25, 26, 27, 28, 29, 30 and 32 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[33] should be present if not ( [N111] ) and ( ( The sum of [22], [24], [25], [26], [27], [28], [29], [30], and [32] ) exceeds 0 )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(not(@Short) and (ct:CompanyTaxCalculation/ct:NetCorporationTaxChargeable &gt; 0)) or ct:CompanyTaxCalculation/ct:NetCorporationTaxLiability"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9319</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 78 must be completed if the "Short" return flag does not equal 'yes' and Box 70 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[78] should be present if not ( [N111] ) and ( [70] exceeds 0 )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>

		<!--ASSERT -->
<axsl:choose>
      <axsl:when test="not(not(@Short) and (sum(ct:CompanyTaxCalculation/ct:ProfitsBeforeOtherDeductions) &gt; 0)) or ct:CompanyTaxCalculation/ct:ChargesAndReliefs/ct:ProfitsBeforeCharges"/>
      <axsl:otherwise>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="errorCode">9320</axsl:variable>
        <axsl:variable xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" name="defaultMessage">Box 34 must be completed if the "Short" return flag does not equal 'yes' and Box 21 is greater than 0 (zero)</axsl:variable>
        <err:Error xmlns:err="http://www.govtalk.gov.uk/CM/errorresponse" xmlns:dsl="http://decisionsoft.com/rim/errorExtension">
          <err:RaisedBy>ChRIS</err:RaisedBy>
          <err:Number>
            <axsl:value-of select="normalize-space($errorCode)"/>
          </err:Number>
          <err:Type>business</err:Type>
          <err:Text>
            <axsl:choose>
              <axsl:when test="normalize-space($defaultMessage)">
                <axsl:copy-of select="$defaultMessage"/>
              </axsl:when>
              <axsl:otherwise>[34] should be present if not ( [N111] ) and ( [21] exceeds 0 )</axsl:otherwise>
            </axsl:choose>
          </err:Text>
          <err:Location>
            <axsl:apply-templates mode="schematron-get-full-path" select="."/>
          </err:Location>
        </err:Error>
      </axsl:otherwise>
    </axsl:choose>
    <axsl:apply-templates mode="M258" select="@*|*|comment()|processing-instruction()"/>
  </axsl:template>
  <axsl:template match="text()" mode="M258" priority="-1"/>
  <axsl:template match="@*|node()" mode="M258" priority="-2">
    <axsl:apply-templates mode="M258" select="@*|node()"/>
  </axsl:template>
</axsl:stylesheet>
