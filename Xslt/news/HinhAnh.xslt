<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/NewsList/News" mode="BigImgTop"></xsl:apply-templates>
            <div class="col-xl-6">
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News" mode="SmallImgTop"></xsl:apply-templates>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News" mode="SmallImgBot"></xsl:apply-templates>
                </div>
            </div>
            <xsl:apply-templates select="/NewsList/News" mode="BigImgTop"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigImgTop">
        <xsl:if test="position()=1">
            <div class="col-xl-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>Image</xsl:text>
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
                                <em class="fas fa-camera"></em>
                                <p>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImgTop">
        <xsl:if test="position()&gt;1 and position()&lt;6">
            <div class="col-xl-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>Image</xsl:text>
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
                                <em class="fas fa-camera"></em>
                                <p>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="BigImgBot">
        <xsl:if test="position()=10">
            <div class="col-xl-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>Image</xsl:text>
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
                                <em class="fas fa-camera"></em>
                                <p>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImgBot">
        <xsl:if test="position()&gt;5 and position()&lt;10">
            <div class="col-xl-6">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>Image</xsl:text>
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
                                <em class="fas fa-camera"></em>
                                <p>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>