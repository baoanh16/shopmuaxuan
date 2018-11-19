<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-4">
			<article class="homes-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="wrap-partner">
								<h2>
									<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
								</h2>
								<div class="list-partners owl-carousel owl-theme">
									<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>