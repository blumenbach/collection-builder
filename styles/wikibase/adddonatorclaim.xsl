<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sv="http://www.jcp.org/jcr/sv/1.0" xmlns:functx="http://www.functx.com" xmlns:saxon="http://saxon.sf.net/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="count" select="0" saxon:assignable="yes"/>
    <xsl:function name="functx:trim" as="xs:string">
        <xsl:param name="arg" as="xs:string?"/>
        <xsl:sequence select="replace(replace($arg, '\s+$', ''), '^\s+', '')"/>
    </xsl:function>
    <doc xmlns="http://www.oxygenxml.com/ns/doc/xsl">
        <desc>
            <p>Identity Template</p>
        </desc>
    </doc>
    <xsl:template match="node() | @*">
        
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="ROW">
        <saxon:assign name="count" select="$count + 1"/>
        <xsl:variable name="uid" select="concat('blume:', format-number($count, '00000'))"/>
        <xsl:element name="item">
            <xsl:element name="id">
                <xsl:value-of select="$uid"/>
            </xsl:element>
            <xsl:element name="body">
                <xsl:element name="entity"><xsl:value-of select="./QID"/></xsl:element>
                <xsl:element name="property">P46</xsl:element>
                <xsl:element name="value"><xsl:value-of select="./donatorQID"/></xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
