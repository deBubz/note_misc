# yeet xsl(t) language

theres several tings?

> - XSLT for transforming XML docs to another doc
> - XPath to navigating XML docs
> - XQuery to query XML Docs

## intro

XML doesn't have "pre-defined" tags.
- `<table>` could indicate anything, html table, piece of furniture, or anything else
- normally its done by transforming each XML element into (X)HTML element
- each attributes can be add/removed/ changed/ rearrange/tests

how
- XSLT uses Xpath part of the source doc that matched the predefined template
- when matched XSLT transform the matching part of the source document into the result document

---

## transformation

> how to transform XML into XHTML with XSLT

### style sheet declaration

> heh why stule sheet

the **root** element declares the doc to be xsl style sheet

```
<xsl:stylesheet>
or
<xsl:transform>
either can be used
```

recommended declaration way is

```xslt
<xsl:stylesheet version="1.0"
xmln:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- same with <xsl:transform> -->
```

`xmln:xsl` points to the namespace, if a namespace is used also include version attribute

### starting basic

have a look at [01_basic.xsl](01_basic.xsl) this is to change [cdcatalog.xml](cdcatalog.xml) into XHTML

after setting up [01_basic.xsl](01_basic.xsl)

> recap 
> 
> - wait so is this a style sheet just for xml
> - so far it looks like it, but this is because it is transformed into `xhtml`
> - lets keep going

---

## `<xsl:template>` element

this is to build template

- `match` attribute used to associate template with an XML element
- can also define template for the entire XML doc
- value is an `XPath` expression (`/` matches whole doc)

ok going through some `xlt` tags again
- document always begin with the xml declaration
- next `<xsl:stylesheet>` defines SXLT style sheet doc
- `<xsl:template>` defines template, containing `match` attribute (xpath) to associate the template with XML elements
- content inside `<xls:template>`defines the output?

> next part will go through `<xsl:value-of>` to select values of XML  

---

## `<xsl:value-of>` tags

use to extract of the XML element and add it to the output stream of the transformation

```xsl
<sxl:value-of select="catalog/cd/title" />
<sxl:value-of select="catalog/cd/artist" />
```

these tag contains a `select` attribute with contains a XPath expression.
with this only 1 line of data was copied to the output.

> next part look at fo-each tag

---

## `<xsl:for-each>` element

used to select every XML of a specified node-set selected by the `select` attribute. Again its value is in XPath

```xsl
<xsl:for-each select="catalog/cd">
    <p><xsl:value-of select="title"/></p>
    <p><xsl:value-of select="artist"/></p>
</xsl:for-each>
```

the path of the select elements within the for-each is relative to the parent's select attribute


### filtering the output

filtering is possible by adding the criteria to the select attribute in the for-each element

```xsl
<xsl:for-each select="catalog/cd[artist='Bob Dylan']">
```

some filter operators
- `=` equal
- `!=` not equal
- `&lt;` less than
- `&gt;` greater than

> so is this Xpath syntax

---

## `xsl:if` element

yepo conditional you know conditional, again its just syntaxes

```xsl
<xsl:if test="expression">
    <!-- do something if true -->
</xsl:if>
```

> use the conditional operators as above

---

## `xsl:choose` element

`xsl:choose` used in conjunction with `xsl:when` and `xsl:otherwise` to express multiple conditional test

> confused whether this is if-else or switch, seems like if-else more

```xsl
<xsl:choose>
    <xsl:when test="expression">
        <!-- do something -->
    </xsl:when>
    <xsl:otherwise>
        <!-- do something -->
    </xsl:otherwise>
</xsl:choose>
```

> this is `if-else`

---

## `xsl:apply-templates` element

this applies a template rule to the current element or its child nodes

- if added `select` into `xsl:apply-template`, it will process only the child elements that matches the value of the attribute
- can use `select` to specify which order the child nodes are processed.

> this looks like a away to containerized and break up chunks to make stuff more simpler and un-cluttered
> 
> one question though is using this - you dont need to use loops??
>
> see [02_apply_template_sample.xsl](02_apply_template_sample.xsl)

---

> OK break time

- so far there were some problems transforming xml into xhtml through linking the files
- the problem occurs locally when trying to open xml files in the browser
- there seems to be a solution in the [next part](https://www.w3schools.com/xml/xsl_client.asp)





