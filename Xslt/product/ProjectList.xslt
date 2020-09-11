<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ProductList">
		<div class="project-list">
			<div class="row">
				<xsl:apply-templates select="Product"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-xl-4 col-md-6 col-lg-4">
			<div class="item">
				<a>
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
								<h3>
									<xsl:value-of select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h3>
								<ul>
									<li>
										<span>
											<em class="ri-community-line"></em>
											<p>
												<xsl:text disable-output-escaping="yes">Quy mô: </xsl:text>
												<xsl:value-of disable-output-escaping="yes" select="BriefContent">
												</xsl:value-of>
											</p>
										</span></li>
									<li>
										<span>
											<em class="ri-artboard-2-line"></em>
											<p>
												<xsl:text disable-output-escaping="yes">Tổng diện tích: </xsl:text>
												<xsl:value-of disable-output-escaping="yes" select="FullContent">
												</xsl:value-of>
											</p>
										</span>
									</li>
								</ul>
							</div>
						</figcaption>
					</figure>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>