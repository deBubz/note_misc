<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="task-list">
        <ul>
            
            <xsl:for-each select="day">
                <li>
                    <xsl:value-of select="day-name" />
                </li>
                <ul>
                    <xsl:for-each select="todos/task">
                        <li>
                            <xsl:value-of select="." />
                        </li>
                    </xsl:for-each>
                </ul>
            </xsl:for-each>
            
        </ul>
    </xsl:template>
    
    
</xsl:stylesheet>