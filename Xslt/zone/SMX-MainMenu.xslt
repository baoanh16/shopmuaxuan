<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:if test="count(Zone)>0">
					<xsl:attribute name="class">
						<xsl:text>nav-link dropdown-btn</xsl:text>
					</xsl:attribute>
				</xsl:if>

				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<!-- <xsl:if test="count(Zone)>0">
				<div class="dropdown-list">
					<ul class="dd-menu">
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</div>
			</xsl:if> -->
		</li>
	</xsl:template>


	<!-- <xsl:template match="Zone" mode="Child">
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
	</xsl:template> -->
</xsl:stylesheet>