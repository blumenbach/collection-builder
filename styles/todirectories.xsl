<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:uuid="java:java.util.UUID" xmlns:saxon="http://saxon.sf.net/" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="node() | @*" name="identity">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="form">
        <xsl:variable name="directory" select="uuid:randomUUID()"/>
        <xsl:value-of select="$directory" />
    <xsl:result-document href="{$directory}/data.xml"> 
        <xsl:apply-templates select="*"/>
    </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>