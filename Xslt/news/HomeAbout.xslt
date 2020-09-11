<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="main-title">
            <h1>Về chúng tôi</h1>
        </div>
        <xsl:apply-templates select="News" mode="Left"></xsl:apply-templates>
        <xsl:apply-templates select="News" mode="Right"></xsl:apply-templates>
        <div class="col-xl-7 col-md-6">
            <div class="left">
                <div class="left__content">
                    <div class="block-title">
                        <h2>Giới thiệu Bất Động Sản EXIMRS</h2>
                    </div>
                    <div class="left__content__desc">
                        <p>Là doanh nghiệp hoạt động trong lĩnh vực BĐS Eximrs cam kết cung cấp các giải pháp toàn diện cho quý khách hàng, quý đối tác bằng chuỗi dịch vụ chuyên nghiệp của mình.</p>
                        <p>Bên cạnh đó Eximrs luôn trân trọng giá trị nền tảng cho sự phát triển, đó là các cơ hội được hợp tác và chia sẻ với Quý khách hàng, Quý đối tác.</p>
                        <p>Với chuyên gia hàng đầu trong lĩnh vực BĐS bên cạnh tập thể nhân viên đoàn kết, cùng với sự ủng hộ của Quý khách hàng, Quý đối tác. Chúng tôi tin tưởng rằng Eximrs chắc chắn sẽ gặt hái được nhiều thành công hơn trên thị trường BĐScủa khách hàng.</p>
                    </div>
                    <a class="btn btn-detail" href="">về chúng tôi
								
								
						
                        <div class="icon"></div>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xl-5 col-md-6">
            <div class="right">
                <div class="right__content">
                    <div class="block-title">
                        <h2>Chia sẻ sự giàu có và hạnh phúc</h2>
                    </div>
                    <div class="right__content__img">
                        <img src="./assets/images/index/i-3.png" alt=""/>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <div class="row">
            <div class="col-xl-7 col-md-6">
                <div class="left">
                    <div class="left__content">
                        <div class="block-title">
                            <h2>Giới thiệu Bất Động Sản EXIMRS</h2>
                        </div>
                        <div class="left__content__desc">
                            <p>Là doanh nghiệp hoạt động trong lĩnh vực BĐS Eximrs cam kết cung cấp các giải pháp toàn diện cho quý khách hàng, quý đối tác bằng chuỗi dịch vụ chuyên nghiệp của mình.</p>
                            <p>Bên cạnh đó Eximrs luôn trân trọng giá trị nền tảng cho sự phát triển, đó là các cơ hội được hợp tác và chia sẻ với Quý khách hàng, Quý đối tác.</p>
                            <p>Với chuyên gia hàng đầu trong lĩnh vực BĐS bên cạnh tập thể nhân viên đoàn kết, cùng với sự ủng hộ của Quý khách hàng, Quý đối tác. Chúng tôi tin tưởng rằng Eximrs chắc chắn sẽ gặt hái được nhiều thành công hơn trên thị trường BĐScủa khách hàng.</p>
                        </div>
                        <a class="btn btn-detail" href="">về chúng tôi
								
								
						
                            <div class="icon"></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>