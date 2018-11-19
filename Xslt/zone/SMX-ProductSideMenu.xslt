<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h2 class="title-line sub-title active">
			<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
		</h2>
		<div class="categories-menu hassub-menu active">
			<ul class="list-unstyled">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="hassub">
			<a class="sub-title">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<em class="mdi mdi-menu-down"></em>
			<ul class="list-unstyled hassub-menu">
				<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
			</ul>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Child">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>