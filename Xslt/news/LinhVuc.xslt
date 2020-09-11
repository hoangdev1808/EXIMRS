<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section-child filed">
            <div class="container">
                <div class="block-title">
                    <h2>
                        <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
                <div class="filed-list">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="filed-item">
            <div class="row">
                <div class="col-xl-6 col-md-6 left">
                    <div class="img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6 right">
                    <div class="desc">
                        <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                        <p><xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of></p>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>