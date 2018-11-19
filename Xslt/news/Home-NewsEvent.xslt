<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-7">
			<article class="homes-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="col-12">
								<h2 class="mx__title mx__title--gradient">
									<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
								</h2>
							</div>
						</div>
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-md-6 col-lg-4">
			<a class="item">
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<!-- <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute> -->
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
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>