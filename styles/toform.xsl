<xsl:stylesheet xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/" xmlns:xs="http://www.w3.org/2001/XMLSchema" extension-element-prefixes="saxon" version="2.0" 
    xmlns:gvp="http://vocab.getty.edu/ontology#" xmlns:wgs="http://www.w3.org/2003/01/geo/wgs84_pos#">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node() | @*" name="identity">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="row">
        <form>
            <section-1>
                <a0>
                    <xsl:value-of select="a0"/>
                </a0>
                <a8>
                    <xsl:value-of select="a8"/>
                </a8>
                <a2>
                    <xsl:value-of select="a2"/>
                </a2>
                <xsl:choose>
                    <xsl:when test="b12">
                            <a3>
                                <xsl:value-of select="b12"/>
                            </a3>
                            <b12a>
                                <xsl:value-of select="a3"/>
                            </b12a>                                             
                    </xsl:when>
                    <xsl:otherwise>
                        <a3>
                            <xsl:value-of select="a3"/>
                        </a3>
                    </xsl:otherwise>
                </xsl:choose>
                <a5>
                    <xsl:value-of select="a5"/>
                </a5>
                <a6>
                    <xsl:value-of select="a6"/>
                </a6>
            </section-1>
            <section-2>
                <z1>
                    <xsl:value-of select="class"/>
                </z1>
                <a1>
                    <xsl:value-of select="a1"/>
                </a1>
                <a7a>
                    <xsl:value-of select="a7a"/>
                </a7a>
                <a7b>
                    <xsl:value-of select="a7b"/>
                </a7b>
                <a9a>
                    <xsl:value-of select="a9a"/>
                </a9a>
                <a9b>
                    <xsl:value-of select="a9b"/>
                </a9b>
                <a9c>
                    <xsl:value-of select="a9c"/>
                </a9c>
                <a26>
                    <xsl:value-of select="a26"/>
                </a26>
            </section-2>
            <section-3>
                <a12a>
                    <xsl:value-of select="a12a"/>
                </a12a>
                <a12aa>
                    <xsl:value-of select="a12aa"/>
                </a12aa>
                <a12b>
                    <xsl:value-of select="a12b"/>
                </a12b>
                <a12c>
                    <xsl:value-of select="a12c"/>
                </a12c>
                <a12d>
                    <xsl:value-of select="a12d"/>
                </a12d>
            </section-3>
            <section-4>
                <a13a>
                    <xsl:value-of select="a13a"/>
                </a13a>
                <a13b>
                    <xsl:value-of select="a13b"/>
                </a13b>
                <a13c>
                    <xsl:choose>
                        <xsl:when test="string(a13c)">
                            <xsl:value-of select="a13c"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="a13d"/>
                        </xsl:otherwise>
                    </xsl:choose>                    
                </a13c>             
                <skos:prefLabel>
                    <xsl:value-of select="label"/>
                </skos:prefLabel>
                <xml:lang>
                    <xsl:value-of select="label/@xml:lang"/>
                </xml:lang>               
                <gvp:parentString>
                    <xsl:value-of select="parentString"/>
                </gvp:parentString>
                <wgs:lat>
                    <xsl:value-of select="lat"/>
                </wgs:lat>
                <wgs:long>
                    <xsl:value-of select="long"/>
                </wgs:long>
            </section-4>            
            <section-41>
                <a14a>
                    <xsl:value-of select="a14a"/>
                </a14a>
                <a14aa>
                    <xsl:value-of select="a14aa"/>
                </a14aa>
                <a14b>
                    <xsl:value-of select="a14b"/>
                </a14b>
                <a14ba>
                    <xsl:value-of select="a14ba"/>
                </a14ba>
                <a15a>
                    <xsl:value-of select="a15a"/>
                </a15a>
                <a15aa>
                    <xsl:value-of select="a15aa"/>
                </a15aa>
                <a15b>
                    <xsl:value-of select="a15b"/>
                </a15b>
                <a15ba>
                    <xsl:value-of select="a15ba"/>
                </a15ba>
                <a16a>
                    <xsl:value-of select="a16a"/>
                </a16a>
                <a16b>
                    <xsl:value-of select="a16b"/>
                </a16b>
                <a17>
                    <xsl:value-of select="a17"/>
                </a17>
                <a12e>
                    <xsl:value-of select="a12e"/>
                </a12e>
                <a12f>
                    <xsl:value-of select="a12f"/>
                </a12f>
                <a12g>
                    <xsl:value-of select="a12g"/>
                </a12g>
                <a12h>
                    <xsl:value-of select="a12h"/>
                </a12h>
                <a12i>
                    <xsl:value-of select="a12i"/>
                </a12i>
            </section-41>
            <section-5>
                <original-lit-grid>
                    <original-lit-grid-iteration>
                        <a18><xsl:value-of select="a18"/></a18>
                    </original-lit-grid-iteration>
                </original-lit-grid>
                <original-desc-grid>
                    <original-desc-grid-iteration>
                        <a19><xsl:value-of select="a19"/></a19>
                    </original-desc-grid-iteration>
                </original-desc-grid>
                <original-image-grid>
                    <original-image-grid-iteration>
                        <a20><xsl:value-of select="a20"/></a20>
                    </original-image-grid-iteration>
                </original-image-grid>
                <secondary-lit-grid>
                    <secondary-lit-grid-iteration>
                        <a22><xsl:value-of select="a22"/></a22>
                        <a23><xsl:value-of select="a23"/></a23>
                    </secondary-lit-grid-iteration>
                </secondary-lit-grid>
                <brief-mentioned-grid>
                    <brief-mentioned-grid-iteration>
                        <f4><xsl:value-of select="f4"/></f4>
                    </brief-mentioned-grid-iteration>
                </brief-mentioned-grid>
                <f5>
                    <xsl:value-of select="f5"/>
                </f5>
                <f8>
                    <xsl:value-of select="f8"/>
                </f8>
            </section-5>
            <section-6>
                <mineral-authority-grid>
                    <mineral-authority-grid-iteration>
                        <a9d>
                    <xsl:value-of select="a9d"/>
                        </a9d>
                    </mineral-authority-grid-iteration>
                </mineral-authority-grid>
            </section-6>
            <section-7>
                <a24a>
                    <xsl:value-of select="a24a"/>
                </a24a>
                <a24b>
                    <xsl:value-of select="a24b"/>
                </a24b>
                <a27>
                    <xsl:value-of select="a27"/>
                </a27>
                <a28>
                    <xsl:value-of select="a28"/>
                </a28>
                <f2a>
                    <xsl:value-of select="f2a"/>
                </f2a>
                <f2b>
                    <xsl:value-of select="f2b"/>
                </f2b>
                <f3a>
                    <xsl:value-of select="f3a"/>
                </f3a>
                <f3b>
                    <xsl:value-of select="f3b"/>
                </f3b>
            </section-7>
            <section-8> 
                <b1>
                    <xsl:value-of select="b1"/>
                </b1>
                <b2>
                    <xsl:value-of select="b2"/>
                </b2>
                <b3b>
                    <xsl:value-of select="b3b"/>
                </b3b>
                <b3d>
                    <xsl:value-of select="b3d"/>
                </b3d>
                <b4a>
                    <xsl:value-of select="b4a"/>
                </b4a>
                <b4aa>
                    <xsl:value-of select="b4aa"/>
                </b4aa>
                <b4b>
                    <xsl:value-of select="b4b"/>
                </b4b>
                <b4c>
                    <xsl:value-of select="b4c"/>
                </b4c>
                <b4ca>
                    <xsl:value-of select="b4ca"/>
                </b4ca>
                <b4d>
                    <xsl:value-of select="b4d"/>
                </b4d>
                <b5>
                    <xsl:value-of select="b5"/>
                </b5>
                <b6>
                    <xsl:value-of select="b6"/>
                </b6>
                <b7a>
                    <xsl:value-of select="b7a"/>
                </b7a>
                <b8>
                    <xsl:value-of select="b8"/>
                </b8>
                <a21>
                    <xsl:value-of select="a21"/>
                </a21>
            </section-8>
            <section-9>
                <f1>
                    <xsl:value-of select="f1"/>
                </f1>
                <b9a>
                    <xsl:value-of select="b9a"/>
                </b9a>
                <b9b>
                    <xsl:value-of select="b9b"/>
                </b9b>
                <b10a>
                    <xsl:value-of select="b10a"/>
                </b10a>
                <b10b>
                    <xsl:value-of select="b10b"/>
                </b10b>
                <b11a>
                    <xsl:value-of select="b11a"/>
                </b11a>
                <b11b>
                    <xsl:value-of select="b11b"/>
                </b11b>
                <b11c>
                    <xsl:value-of select="b11c"/>
                </b11c>
            </section-9>
            <section-10>
                <c1>
                    <xsl:value-of select="c1"/>
                </c1>
                <c2>
                    <xsl:value-of select="c2"/>
                </c2>
                <xsl:for-each select="etikett">
                <etikett-grid1>
                    <a10>
                        <xsl:value-of select="a10"/>
                    </a10>
                    <c3>
                        <xsl:value-of select="c3"/>
                    </c3>
                    <c4>
                        <xsl:value-of select="c4"/>
                    </c4>
                    <c5>
                        <xsl:value-of select="c5"/>
                    </c5>
                    <c6a>
                        <xsl:value-of select="c6a"/>
                    </c6a>
                    <c6b>
                        <xsl:value-of select="c6b"/>
                    </c6b>
                    <c7a>
                        <xsl:value-of select="c7a"/>
                    </c7a>
                </etikett-grid1>
                </xsl:for-each>
            </section-10>
            <section-11>
                <xsl:for-each select="textonobject">
                <objekttext-grid1>
                    <a11>
                        <xsl:value-of select="a11"/>
                    </a11>
                    <d1>
                        <xsl:value-of select="d1"/>
                    </d1>
                    <d2>
                        <xsl:value-of select="d2"/>
                    </d2>
                    <d3a>
                        <xsl:value-of select="d3a"/>
                    </d3a>
                    <d3b>
                        <xsl:value-of select="d3b"/>
                    </d3b>
                </objekttext-grid1>
                </xsl:for-each>
            </section-11>
            <section-12>
                <xsl:for-each select="number">
                <number-grid1>
                    <a4>
                        <xsl:value-of select="a4"/>
                    </a4>
                    <e1>
                        <xsl:value-of select="e1"/>
                    </e1>
                    <e2>
                        <xsl:value-of select="e2"/>
                    </e2>
                    <e3>
                        <xsl:value-of select="e3"/>
                    </e3>
                    <e4a>
                        <xsl:value-of select="e4a"/>
                    </e4a>
                    <e4b>
                        <xsl:value-of select="e4b"/>
                    </e4b>
                    <e5a>
                        <xsl:value-of select="e5a"/>
                    </e5a>
                </number-grid1>
                </xsl:for-each>
            </section-12>
        </form>
    </xsl:template>
</xsl:stylesheet>
