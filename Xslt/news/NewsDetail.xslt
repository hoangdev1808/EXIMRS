<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section-child news-detail">
            <div class="container">
                <div class="block-title">
                    <h1>
                        <xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
                <div class="time-line">
                    <div class="time">
                        <p>
                            <xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <div class="icon-social">
                        <ul>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                        <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                    </xsl:attribute>
                                    <i class="ri-facebook-fill"></i>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:text>https://twitter.com/home?status=</xsl:text>
                                        <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                    </xsl:attribute>
                                    <i class="ri-twitter-fill"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content">
                    <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
            <div class="news-other">
                <div class="container">
                    <div class="block-title">
                        <h2>Tin tức khác</h2>
                    </div>
                    <div class="slider">
                        <div class="swiper-container news-list">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <figure>
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
                    <figcaption>
                        <div class="desc">
                            <div class="time">
                                <p>
                                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </div>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>