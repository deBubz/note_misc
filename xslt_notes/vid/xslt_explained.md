# number 2

> learning source [youtube vid](https://youtu.be/Rn1bvTYYsCY)

## initial key ideas

- XSL only talk to XML
- XSL must be coded hierachically (cant skip to child without referencing parent)
- typical syntax `<xsl:stuff>` 
- `<xsl:for-each select="" />` try to select the parent you want to loop the children
- `xsl:value-of select="" />`
  - only select a SPECIFIC tag, one output only

must have basic for xlt
- xsl identifier 
- sxl stylesheet declaration
- xsl template selecting the parent xml tag (remember hierachical)
- **xml** selecting the sxl stylesheet

for-each things
- `select` will ONLY picks and display one output even in a `for-each` tag

```xml
<task-list> 
    <task>eat</task>
    <task>sleep</task>
    <task>code</task>
</task-list>
```

do this
```xslt
<xsl:for-each select="task-list">
    <li><xsl:value-of select="task" /> </li>
<xsl:for-each>
```

> alright i cant just follow random videos for this, need to practice



