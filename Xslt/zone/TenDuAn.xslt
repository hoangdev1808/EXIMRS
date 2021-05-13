<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="IsActive='true'">
            <h2>Nhận thông tin ưu đãi chi tiết &amp; Tham quan dự án</h2>
            <h1>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </h1>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>