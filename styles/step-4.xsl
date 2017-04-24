<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="config.file" select="'config.xml'"/>
    <xsl:variable name="part1-source" select="document($config.file)/exports/part1"/>
    <xsl:variable name="part1" select="document($part1-source)"/>
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
                <xsl:when test="$part1/root/row/kd1_id=$join">
                    <xsl:for-each select="$part1/root/row[kd1_id=$join]">
                        <number>
                        <xsl:copy-of select="*"/>
                        </number>
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