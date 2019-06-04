<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="filter-group ajaxfilterresponse">
			<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
			<!-- <h2 class="title-line sub-title">Thương hiệu</h2>
			<ul class="hassub-menu">
			</ul> -->
			<div class="selectbox">
				<select class="ajaxsort">
					<xsl:apply-templates select="/ProductFilter/SortBy"></xsl:apply-templates>
				</select>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Group">
		<div class="selectbox">
			<select class="ajaxsort">
				<option value="">
					<!-- <xsl:attribute name="value">
						<xsl:value-of select="/"></xsl:value-of>
					</xsl:attribute> -->
					<xsl:attribute name="value">
						<xsl:value-of select="ClearUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:text>Tất cả</xsl:text>
				</option>
				<xsl:apply-templates select="Option" mode="Default"></xsl:apply-templates>
			</select>
		</div>
		<!-- <h2 class="title-line sub-title">
			<xsl:value-of select="Title"></xsl:value-of>
		</h2>
		<ul class="hassub-menu">
			<xsl:apply-templates select="Option" mode="Default"></xsl:apply-templates>
		</ul> -->
	</xsl:template>

	<xsl:template match="SortBy">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

	<xsl:template match="Option" mode="Default">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

</xsl:stylesheet>