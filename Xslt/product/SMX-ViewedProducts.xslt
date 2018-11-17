<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ProductList/Product)>0">
			<div class="row">
				<div class="col-12">
					<h3><i class="far fa-clock"></i><span>
							<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
						</span></h3>
				</div>
				<div class="col-12 product-viewed-wrapper">
					<div class="product-viewed owl-carousel owl-theme">
						<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>


	<xsl:template match="Product">
		<div class="item">
			<div class="media">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				<div class="media-body">
					<div class="brand">
						<xsl:value-of select="SubTitle"></xsl:value-of></div>
					<div class="name">
						<xsl:value-of select="Title"></xsl:value-of>
					</div>
					<div class="desc">
						<xsl:value-of select="Code"></xsl:value-of>
					</div>
				</div>
			</div>
			<a class="btn btn-outline-primary" href="#!" onclick="AjaxCart.addproducttocart_catalog(this);return false;" style="cursor: pointer">
				<xsl:attribute name="data-productid">
					<xsl:value-of select="ProductId"></xsl:value-of>
				</xsl:attribute>Thêm vào giỏ hàng</a>
		</div>
	</xsl:template>
</xsl:stylesheet>