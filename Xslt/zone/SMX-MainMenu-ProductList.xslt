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
		<xsl:if test="count(Zone)>0">
			<xsl:attribute name="class">
				<xsl:text disable-output-escaping="yes">dd-item mobile-arrow</xsl:text>
			</xsl:attribute>
		</xsl:if>
			<div class="mega-menu-wrapper">

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
			</div>
			<xsl:if test="count(Zone)>0">
				<div class="mega">
					<xsl:apply-templates select="Zone" mode="Mega1"></xsl:apply-templates>
				</div>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Mega1">
		<div class="mega-sub">
			<h6>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
			</h6>

			<xsl:if test="count(Zone)>0">
				<ul>
					<xsl:apply-templates select="Zone" mode="Mega2"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Mega2">
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
				<xsl:attribute name="target">
					<xsl:value-of select="target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
