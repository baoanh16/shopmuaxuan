<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-banner-1">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
				<div class="swiper-btn swiper-button-next swiper-button-white"></div>
				<div class="swiper-btn swiper-button-prev swiper-button-white"></div>
				<div class="swiper-pagination"></div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<a class="slide-inner">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<div class="see__more">
						<p>Xem thêm</p>
					</div>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>