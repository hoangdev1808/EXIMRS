<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <section class="section-child pro-detail" id="pro-1">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3">
                        <div id="sidebar-wrapper">
                            <div class="tool-ctrl">
                                <em class="material-icons">api</em>
                            </div>
                            <ul id="sideBar">
                                <xsl:apply-templates select="Zone" mode="Nav"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-9 content">
                        <xsl:apply-templates select="Zone[1]" mode="Zone-1"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
        <xsl:apply-templates select="Zone" mode="List-2"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="Nav">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#pro-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone-1">
        <xsl:apply-templates select="News" mode="ZoneNews-1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="List-2">
        <xsl:if test="position() = 2">
            <section class="section-child pro-detail-2" id="pro-2">
                <div class="container">
                    <div class="row">
						<div class="col-xl-3"></div>
                        <div class="col-xl-9 content">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="News/Title"></xsl:value-of>
                                <xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h2>
                            <div class="desc">
                                <xsl:value-of disable-output-escaping="yes" select="News/BriefContent"></xsl:value-of>
                            </div>
                            <div class="img">
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="News/ImageUrl"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="News/Title"></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section-child pro-detail-3" id="pro-3">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9 content">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <div class="slide">
                                <div class="swiper-container slide-utilities">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="News" mode="ZoneNews-2"></xsl:apply-templates>
                                    </div>
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="section-child pro-detail-4" id="pro-4">
                <div class="container">
                    <div class="row">
						<div class="col-xl-3"></div>
                        <div class="col-xl-9 content">
                            <h2>Mặt bằng</h2>
                            <div class="tab-panels">
                                <ul class="tabs">
                                    <xsl:apply-templates select="Zone" mode="Zone-4-Child"></xsl:apply-templates>
                                </ul>
                                <div class="img mt-4">
                                    <img id="planImage" >
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="Zone[1]/News[1]/ImageUrl"></xsl:value-of>
                                        </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 5">
            <section class="section-child pro-detail-5" id="pro-5">
                <div class="container">
                    <div class="row">
						<div class="col-xl-3"></div>
                        <div class="col-xl-9 content">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <div class="slider">
                                <div class="swiper-container slider-images">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="News/NewsImages" mode="News-1"></xsl:apply-templates>
                                    </div>
                                    <div class="swiper-button-next"></div>
                                    <div class="swiper-button-prev"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <section class="section-child pro-detail-6" id="pro-6">
                <div class="container">
                    <div class="row">
						<div class="col-xl-3"></div>
                        <div class="col-xl-9 content">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <div class="img">
                                <xsl:value-of disable-output-escaping="yes" select="News/BriefContent"></xsl:value-of>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 7">
            <section class="section-child pro-detail-7" id="pro-7">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3"></div>
                        <div class="col-xl-9 content">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <div class="slide">
                                <div class="swiper-container slide-utilities">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="News" mode="ZoneNews-7"></xsl:apply-templates>
                                    </div>
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone-4-Child">
        <li>
            <div class="dropdown show">
                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" style="background-color: transparent; color: #999;">
                    <xsl:attribute name="id">
                        <xsl:text disable-output-escaping="yes">project-dropdown-</xsl:text>
                        <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
                <div class="dropdown-menu">
                    <xsl:attribute name="aria-labelledby">
                        <xsl:text disable-output-escaping="yes">project-dropdown-</xsl:text>
                        <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:apply-templates select="News" mode="ZoneNews-4"></xsl:apply-templates>
                </div>
            </div>
        </li>
    </xsl:template>
    <xsl:template match="News" mode="ZoneNews-1">
        <h2>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </h2>
        <div class="desc">
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </div>
        <div class="slide">
            <div class="swiper-container gallery-top">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="NewsImages" mode="News-1"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-container-thumbs gallery-thumbs">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="NewsImages" mode="News-1"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <div class="table">
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            <div class="show-more">
                <a class="view-more" href="">
                    <xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
                    <em class="ri-arrow-drop-down-line"></em>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="ZoneNews-2">
        <div class="swiper-slide">
            <figure>
                <div class="img">
                    <img>
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
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="ZoneNews-4">
        <a class="dropdown-item" href="javascript:;">
            <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </a>
    </xsl:template>
    <xsl:template match="News" mode="ZoneNews-7">
        <div class="swiper-slide">
            <a href="">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <figure>
                    <div class="img">
                        <img>
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
                            <span class="time">
                                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                            </span>
                            <p class="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </p>
                        </div>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="News-1">
        <div class="swiper-slide">
            <div class="img">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>