<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/NewsList/News" mode="BigImg"></xsl:apply-templates>
            <xsl:apply-templates select="/NewsList/News" mode="SmallImg"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigImg">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <div class="col-xl-6 col-md-6 col-sm-6 item">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
                        <div class="big-img">
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
                                <div class="date">
                                    <p>
                                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                    </p>
                                </div>
                                <div class="title">
                                    <h3>
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    </h3>
                                </div>
                            </div>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImg">
        <xsl:if test="position()&gt;2 and position()&lt;9">
            <div class="col-xl-4 col-md-4 col-sm-6 item">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <figure>
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
                                <div class="date">
                                    <p>
                                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                    </p>
                                </div>
                                <div class="title">
                                    <h3>
                                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                    </h3>
                                </div>
                            </div>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>