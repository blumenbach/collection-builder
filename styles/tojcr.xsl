<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sv="http://www.jcp.org/jcr/sv/1.0" xmlns:functx="http://www.functx.com" xmlns:saxon="http://saxon.sf.net/" xmlns:xs="http://www.w3.org/2001/XMLSchema" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="count" select="03631" saxon:assignable="yes"/>
    <xsl:function name="functx:trim" as="xs:string">
        <xsl:param name="arg" as="xs:string?"/>
        <xsl:sequence select="replace(replace($arg,'\s+$',''),'^\s+','')"/>
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
    <xsl:template match="row">
        <saxon:assign name="count" select="$count+1"/>
        <xsl:variable name="uid" select="concat('blume:',format-number($count, '00000'))"/>
        <xsl:element name="sv:node">
            <xsl:attribute name="sv:name">
                <xsl:value-of select="$uid"/>
            </xsl:attribute>
            <xsl:element name="sv:property">
                <xsl:attribute name="sv:name">jcr:primaryType</xsl:attribute>
                <xsl:attribute name="sv:type">Name</xsl:attribute>
                <xsl:element name="sv:value">nt:folder</xsl:element>
            </xsl:element>
            <xsl:element name="sv:property">
                <xsl:attribute name="sv:name">jcr:mixinTypes</xsl:attribute>
                <xsl:attribute name="sv:type">Name</xsl:attribute>
                <xsl:attribute name="sv:multiple">true</xsl:attribute>
                <xsl:element name="sv:value">fedora:Container</xsl:element>
                <xsl:element name="sv:value">fedora:Resource</xsl:element>
            </xsl:element>
            <xsl:for-each select="child::node()">
                <xsl:variable name="ln">
                    <xsl:value-of select="local-name()"/>
                </xsl:variable>
                <xsl:variable name="nn" select="concat('blume:', $ln)"/>
                <xsl:element name="sv:property">
                    <xsl:attribute name="sv:name">
                        <xsl:value-of select="$nn"/>
                    </xsl:attribute>
                    <xsl:attribute name="sv:type">String</xsl:attribute>
                    <xsl:element name="sv:value">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>