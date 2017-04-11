<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sv="http://www.jcp.org/jcr/sv/1.0" xmlns:saxon="http://saxon.sf.net/" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="persons" select="document('../xml-from-sql/2017-1-11/persons.xml')"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node() | @*" name="identity">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="ROW">
        <xsl:variable name="name" select="./a15a/text()"/>
        <xsl:copy>
            <xsl:choose>
                <xsl:when test="$persons/DATA//ROW/a15=$name">
                    <xsl:for-each select="$persons/DATA//ROW[a15=$name]">
                        <xsl:element name="donatorQID">Q<xsl:value-of select="./QID"/></xsl:element>
                    </xsl:for-each>
                    <xsl:apply-templates select="*"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="*"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>