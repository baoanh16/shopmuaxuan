<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-8">
			<article class="homes-list">
				<div class="container">
					<div class="row h-100">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="col-sm-4 item">
			<figure class="figure">
				<div class="img-block">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption class="figcaption">
					<h2>
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>