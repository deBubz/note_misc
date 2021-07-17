<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1990/XSL/Transform">

<!-- match whole doc -->
<xsl:template match="/">
    <html>
    <body>
        <h2>MyCD Collection</h2>
        <xsl:apply-templates/>
    </body>
    </html>
</xsl:template>


</xsl:stylesheet>