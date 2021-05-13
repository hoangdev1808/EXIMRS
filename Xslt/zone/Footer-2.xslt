<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="footer-title">
            <p>
                <xsl:value-of select="/ZoneList/Zone/Title" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
        <div class="footer-body footer-nav">
            <ul>
                <xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
            </ul>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <a>
                <xsl:attribute name="href">
					<xsl:text>https://eximrs.vn/gioi-thieu#about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>