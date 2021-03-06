<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="config.file" select="'config.xml'"/>
    <xsl:variable name="tg-source" select="document($config.file)/exports/taxongroups"/>
    <xsl:variable name="tg" select="document($tg-source)"/>
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
                <xsl:when test="$tg/root/row/kdtaxon_id=$join">
                    <xsl:for-each select="$tg/root/row[kdtaxon_id=$join]">
                        <xsl:copy-of select="*"/>
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