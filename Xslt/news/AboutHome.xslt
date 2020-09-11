<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="main-title">
            <h1>
                <xsl:value-of select="/NewsList/News[1]/Title" disable-output-escaping="yes"></xsl:value-of>
            </h1>
        </div>
        <div class="row">
            <div class="col-xl-7 col-md-6">
                <xsl:apply-templates select="/NewsList/News" mode="Left"></xsl:apply-templates>
            </div>
            <div class="col-xl-5 col-md-6">
                <xsl:apply-templates select="/NewsList/News" mode="Right"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <xsl:if test="position()=1">
            <div class="left">
                <div class="left__content">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="left__content__desc">
                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a class="btn btn-detail" href="/gioi-thieu">về chúng tôi
													
                    
                    
                        
                        <div class="icon"></div>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Right">
        <xsl:if test="position()=2">
            <div class="right">
                <div class="right__content">
                    <div class="block-title">
                        <h2>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="right__content__img">
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