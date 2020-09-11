<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone" mode="Sec1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="Sec1">
        <xsl:if test="position()=1">
            <div class="a-1__content">
                <div class="block-title">
                    <h2>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
                <xsl:apply-templates select="News"></xsl:apply-templates>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()=1">
            <div class="row">
                <div class="col-xl-6 col-md-6">
                    <div class="left">
                        <div class="desc">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6">
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
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>