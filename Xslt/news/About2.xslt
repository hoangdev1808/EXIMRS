<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone" mode="Sec2"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="Sec2">
        <xsl:if test="position()=2">
            <section class="section-child a-2" id="about-2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9">
                            <div class="block-title">
                                <h2>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="desc">
                                <p>
                                    <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                            <div class="history-slide">
                                <div class="swiper-pagination"></div>
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="News" mode="LichSu"></xsl:apply-templates>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section-child a-3" id="about-3">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9">
                            <div class="block-title">
                                <h2>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-xl-4 col-md-5 col-sm-6">
                                    <div class="left">
                                        <ul>
                                            <xsl:apply-templates select="News" mode="NhanSu"></xsl:apply-templates>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-7 col-sm-6">
                                    <div class="right">
                                        <xsl:apply-templates select="News" mode="NhanSuImg"></xsl:apply-templates>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="section-child a-4" id="about-4">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9">
                            <div class="block-title">
                                <h2>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-xl-6 col-md-6">
                                    <xsl:apply-templates select="News" mode="Left"></xsl:apply-templates>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <xsl:apply-templates select="News" mode="Right"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="section-child a-5" id="about-5">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9">
                            <div class="block-title">
                                <h2>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h2>
                            </div>
                            <xsl:apply-templates select="News" mode="HeThong"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=6">
            <section class="section-child a-6" id="about-6">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9">
                            <div class="block-title">
                                <h2>
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="content">
                                <div class="row no-gutters">
                                    <xsl:apply-templates select="News" mode="DoiTac"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="LichSu">
        <div class="swiper-slide">
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
                    <div class="content">
                        <p>
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="NhanSu">
        <xsl:if test="position()&gt;0 and position()&lt;4">
            <li>
                <h3>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h3>
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="NhanSuImg">
        <xsl:if test="position()=4">
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <div class="left">
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
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Right">
        <xsl:if test="position()=3">
            <div class="right">
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
                            <h3>
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News[1]" mode="HeThong">
        <div class="row">
            <div class="col-xl-5 col-md-6">
                <div class="left">
                    <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
            <div class="col-xl-7 col-md-6">
                <div class="right">
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
    </xsl:template>
    <xsl:template match="News" mode="DoiTac">
        <xsl:if test="position()&gt;0 and position()&lt;9">
            <div class="col">
                <div class="item">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>