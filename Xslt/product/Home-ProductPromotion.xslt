<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-6" bg-img="/Data/Sites/1/skins/default/img/home/home_promo_bg.png">
			<article class="homes-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h2 class="mx__title mx__title--white">
								<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
							</h2>
							<div class="list-promos owl-carousel owl-theme">
								<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="boxzoom">
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
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<div class="price">
						<span class="new">
							<xsl:value-of select="Price"></xsl:value-of>
						</span>
						<!-- <xsl:if test="Price != ''">
						</xsl:if> -->
						<span class="old">
							<xsl:value-of select="OldPrice"></xsl:value-of>
						</span>
						<!-- <xsl:if test="OldPrice != ''">
						</xsl:if> -->
						<!-- <span class="new">5.000.000 đ</span>
						<span class="old">7.000.000 đ</span> -->
					</div>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
</xsl:stylesheet>