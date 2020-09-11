<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section-child dnn-hr-detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12 col-12 dnn-hr-detail__left">
                        <div class="block-title">
                            <h1>
                                <xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
                                <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="dnn-hr-detail__left__timeline">
                            <div class="time">
                                <p>
                                    <xsl:value-of select="/NewsDetail/EndDate"></xsl:value-of>
                                </p>
                            </div>
                            <div class="icon-social">
                                <ul>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">
														https://www.facebook.com/sharer/sharer.php?u=
													</xsl:text>
                                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fab fa-facebook-f"></em>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">
													https://twitter.com/home?status=
												</xsl:text>
                                                <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fab fa-twitter"></em>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="dnn-hr-detail__left__content">
                            <xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
                        </div>
                        <div class="dnn-hr-detail__left__list">
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
                        </div>
                        <div class="box-form">
                            <h2>ứng tuyển công việc này</h2>
                            <div class="form-group">
                                <input type="text" placeholder="Họ và tên"></input>
                                <input type="text" placeholder="Số điện thoại"></input>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Email"></input>
                                <input type="text" placeholder="Tiêu đề"></input>
                            </div>
                            <div class="form-group">
                                <textarea cols="30" rows="5" placeholder="Nội dung"></textarea>
                            </div>
                            <div class="form-group frm-captcha">
                                <div class="frm-captcha-input">
                                    <input type="text" placeholder="Nhập mã hiển thị"></input>
                                </div>
                                <div class="RadCaptcha RadCaptcha_Default">
                                    <a class="rcRefreshImage" title="Hình ảnh mới" href="">
                                        <em class="material-icons">replay</em>
                                    </a>
                                    <img alt="" src="./assets/images/contact/captcha.png"/>
                                </div>
                            </div>
                            <div class="form-group frm-btnwrap">
                                <div class="frm-btn">
                                    <input class="btn btn-default frm-btn-submit" type="submit" name="" value="Gửi"></input>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12 col-12 dnn-hr-detail__right">
                        <div class="dnn-hr-detail__right__content">
                            <div class="block-title">
                                <h2>tuyển dụng khác</h2>
                            </div>
                            <ul class="dnn-hr-detail__right__content__list">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li class="dnn-hr-detail__right__content__list__item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="date">
                    <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
                </div>
                <h2>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h2>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>