<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;&lt;div class="top-list"&gt;</xsl:text>
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
					</figcaption>
				</figure>
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>


		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;&lt;div class="part-list owl-carousel owl-theme"&gt;</xsl:text>
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
					</figcaption>
				</figure>
			</a>
		</xsl:if>

		<xsl:if test="position()=last()">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
					</figcaption>
				</figure>
			</a>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>