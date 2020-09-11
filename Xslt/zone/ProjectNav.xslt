<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <div class="block-title">
            <h2>
                <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
            </h2>
        </div>
        <div class="project-nav">
            <div class="show-nav">
                <h5>Danh mục</h5>
            </div>
            <ul class="list-nav">
                <li>
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name="class">
                            <xsl:text>active</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ParentUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text>Tất cả dự án</xsl:text>
                    </a>
                </li>
                <xsl:apply-templates select="Zone"></xsl:apply-templates>
                <li id="button-filter">
                    <a href="javascript:;">
                        <em class="material-icons">search</em>
                    </a>
                </li>
            </ul>
            <div class="filter-nav">
                <ul>
                    <li>
                        <select name="ProductProvince">
                            <option>Thành phố</option>
                        </select>
                    </li>
                    <li>
                        <select name="ProductDistrict">
                            <option>Quận huyện</option>
                        </select>
                    </li>
                    <li>
                        <select name="ProductCategory">
                            <option>Chọn loại căn hộ</option>
                        </select>
                    </li>
                    <li>
                        <input name="ProductName" placeholder="Tên dự án" />
                    </li>
                    <li>
                        <a href="#">
                            <em class="material-icons">search</em>
            				Tim kiếm
            			
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a href="" class="align-items-center" style="padding: 0 10px">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img class="mr-1">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <p>
                    <xsl:value-of select="Title"></xsl:value-of>
                </p>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>