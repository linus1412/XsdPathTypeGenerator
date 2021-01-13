# Java XSD Path Generator

## What it does

Takes in an XSD file and generates all possible element and attribute paths 
along with the element or attribute type.

## How it does it

Internally XsdPathTypeGenerator uses [Apache's XmlBeans](https://xmlbeans.apache.org/), with some modifications.  

I couldn't quickly get XmlBeans setup as a project in IntelliJ 
or Eclipse to make my modifications (uses a convoluted Ant setup), 
so I ended up bringing XmlBeans in as a dependency and monkey patching 
the files I needed to change, which was fine for my use case.

## Limitations

Because of the above it probably needs to be run as an application,
not included in you projects as a library as you need to ensure the monkey patched
files take precedence over the corresponding XmlBeans classes.  

## Example

### XSD
```xml
<?xml version="1.0" encoding="UTF-8"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" targetNamespace="http://smitek.co.uk/example/1">
    <xsd:element name="employee">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="name" type="xsd:string"/>
                <xsd:element name="age" type="xsd:integer"/>
                <xsd:element name="started" type="xsd:date"/>
                <xsd:element name="department">
                    <xsd:complexType>
                        <xsd:sequence>
                            <xsd:element name="name" type="xsd:string"/>
                        </xsd:sequence>
                        <xsd:attribute name="code" type="xsd:integer"/>
                    </xsd:complexType>
                </xsd:element>
            </xsd:sequence>
            <xsd:attribute name="active" type="xsd:boolean"/>
        </xsd:complexType>
    </xsd:element>
</xsd:schema>
```


### Code
```java

class Example {

  void example() {
      Map<String, String> pathTypes =
          new XsdPathTypeGenerator().generateMap("employee", "/simple.xsd");
  }

}
```
### Output

A Map containing

| Path | Type |
| ---- | ---- |
| employee@active | xsd:boolean |
| employee/name | xsd:string |
| employee/age | xsd:integer |
| employee/started | xsd:date |
| employee/department@code | xsd:integer |
| employee/department/name | xsd:string |

## Examples

Have a look at the test for some more examples.  

Some examples use XSD files from [HMRC](https://www.gov.uk/government/organisations/hm-revenue-customs), the UK Tax Authority:
* [CT600](https://www.gov.uk/government/collections/corporation-tax-online-support-for-software-developers)
* [SA Trust](https://www.gov.uk/government/collections/self-assessment-online-support-for-software-developers)

I hope this helps somebody.

