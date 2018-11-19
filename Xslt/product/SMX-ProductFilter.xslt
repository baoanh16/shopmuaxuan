<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="filter-item hassub ajaxfilterresponse">
			<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
			<!-- <h2 class="title-line sub-title">Thương hiệu</h2>
			<ul class="hassub-menu">
			</ul> -->
		</div>
	</xsl:template>

	<xsl:template match="Group">
		<h2 class="title-line sub-title">
			<xsl:value-of select="Title"></xsl:value-of>
		</h2>
		<ul class="hassub-menu">
			<xsl:apply-templates select="Option" mode="Default"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Option" mode="Default">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="ajaxlink">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>