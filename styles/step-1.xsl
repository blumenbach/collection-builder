<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sv="http://www.jcp.org/jcr/sv/1.0" xmlns:saxon="http://saxon.sf.net/" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="kd" select="document('../xml-from-sql/2017-04-06/kerndaten.xml')"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node() | @*" name="identity">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="row">
        <xsl:variable name="join" select="kd2_id/text()"/>
        <xsl:copy>
            <xsl:choose>
                <xsl:when test="$kd/root/row/kerndaten_id=$join">
                    <xsl:for-each select="$kd/root/row[kerndaten_id=$join]">
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