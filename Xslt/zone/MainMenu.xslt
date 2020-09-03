<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <ul class="nav-list">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <li class="nav-item">
                <xsl:if test="IsAcrive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <em class="material-icons">home</em>
                </a>
            </li>
        </xsl:if>
        <xsl:if test="position()!=1">
            <li class="nav-item">
                <xsl:if test="IsAcrive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <a class="nav-link">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
            </li>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>