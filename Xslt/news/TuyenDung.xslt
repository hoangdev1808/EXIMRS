<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title">
            <h2>Vị trí tuyển dụng</h2>
        </div>
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th class="text-center" scope="col">STT</th>
                    <th class="text-center" scope="col">VỊ TRÍ</th>
                    <th class="text-center" scope="col">SỐ LƯỢNG</th>
                    <th class="text-center" scope="col">KHU VỰC</th>
                    <th class="text-center" scope="col">THỜI HẠN</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="/NewsList/News" mode="desktop"></xsl:apply-templates>
            </tbody>
        </table>
        <div class="dnn-hr-v-mobile row">
            <xsl:apply-templates select="/NewsList/News" mode="mobile"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="desktop">
        <tr>
            <th class="text-center" scope="row">
                <xsl:value-of select="position()"></xsl:value-of>
            </th>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td class="text-center">
                <xsl:value-of select="SubTitle"></xsl:value-of>
            </td>
            <td class="text-center">
                <xsl:value-of select="BriefContent"></xsl:value-of>
            </td>
            <td class="text-center">
                <xsl:value-of select="EndDate"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="mobile">
        <div class="col-md-6">
            <a class="item">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <h2>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </h2>
                <p>
                    <em class="mdi mdi-account-group"></em>
                    <span>
                        <xsl:text>Số lượng: </xsl:text>
                        <xsl:value-of select="SubTitle"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-map-marker"></em>
                    <span>
                        <xsl:text>Khu vực: </xsl:text>
                        <xsl:value-of select="BriefContent"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-start"></em>
                    <span>
                        <xsl:text>Ngày bắt đầu: </xsl:text>
                        <xsl:value-of select="CreatedDate"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-end"></em>
                    <span>
                        <xsl:text>Ngày kết thúc: </xsl:text>
                        <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
                    </span>
                </p>
                <div class="btn-view">Xem chi tiết</div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>