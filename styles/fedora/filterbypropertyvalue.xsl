<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sv="http://www.jcp.org/jcr/sv/1.0" xmlns:functx="http://www.functx.com" xmlns:saxon="http://saxon.sf.net/" xmlns:xs="http://www.w3.org/2001/XMLSchema" extension-element-prefixes="saxon" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:variable name="count" select="03631" saxon:assignable="yes"/>
    <xsl:function name="functx:trim" as="xs:string">
        <xsl:param name="arg" as="xs:string?"/>
        <xsl:sequence select="replace(replace($arg,'\s+$',''),'^\s+','')"/>
    </xsl:function>
    <xsl:template match="sv:node/*">
        <xsl:for-each select="child::sv:property">
        <xsl:if test="./child::sv:value/text() = 'AIG'">            
            <xsl:copy-of copy-namespaces="no" select="parent::node()">
            </xsl:copy-of>
        </xsl:if>
        </xsl:for-each>    
    </xsl:template>
</xsl:stylesheet>