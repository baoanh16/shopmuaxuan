<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav">
			<li class="nav-item">
				<a class="nav-link">DANH MỤC SẢN PHẨM</a>
				<div class="dropdown-list">
					<ul class="dd-menu">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</ul>
				</div>
			</li>
		</ul>
	</xsl:template>


	<xsl:template match="Zone">
		<li class="dd-item">
			<img class="dd-icon">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			</img>
			<a class="dd-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>