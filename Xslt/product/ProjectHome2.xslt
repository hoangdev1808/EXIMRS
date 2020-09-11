<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-xl-4 col-md-6 col-sm-6">
            <figure>
                <a href="">
                    <div class="small-img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <figcaption>
                        <div class="desc">
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </div>
                    </figcaption>
                </a>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>