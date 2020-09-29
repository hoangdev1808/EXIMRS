<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="title acc__card">
            <h3 class="acc__title">gói khám
                <span class="material-icons mobile">keyboard_arrow_down</span>
            </h3>
        </div>
        <nav class="acnav acc__panel">
            <ul class="acnav__list">
				<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
            </ul>
        </nav>
    </xsl:template>
    <xsl:template match="Group">
        <xsl:apply-templates select="Option"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Option">
        <li class="nav-item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>
                        nav-item active
                    </xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="class">
                    <xsl:text>ajaxlink</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
