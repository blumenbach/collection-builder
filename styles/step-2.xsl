<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="config.file" select="'config.xml'"/>
    <xsl:variable name="part3-source" select="document($config.file)/exports/part3"/>
    <xsl:variable name="part3" select="document($part3-source)"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node() | @*" name="identity">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="row">
        <xsl:variable name="join" select="kerndaten_id/text()"/>
        <xsl:copy>
            <xsl:choose>
                <xsl:when test="$part3/root/row/kd3_id=$join">
                    <xsl:for-each select="$part3/root/row[kd3_id=$join]">
                        <etikett>
                        <xsl:copy-of select="*"/>
                        </etikett>
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