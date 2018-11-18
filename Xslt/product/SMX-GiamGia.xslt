<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-sale-1">
			<article class="sales-list">
				<div class="container ajaxresponse">
					<div class="row">
						<div class="col-12">
							<h2 class="mx__title mx__title--gradient">
								<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
								</h2>
						</div>
						<div class="row ajaxresponsewrap">
							<div id="title"></div>
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-sm-6 col-lg-3 product__item">
			<figure>
				<div class="boxzoom">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
					<div class="boxdetail">
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;" style="cursor: pointer">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-basket"></em>
							Cho vào giỏ hàng
						</a>
						<a class="detail">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-eye"></em>
							Xem sản phẩm
						</a>
					</div>
				</div>
				<figcaption>
					<div class="color__list">
						<ul>
							<li><span style="background-color: #298ac4"></span></li>
							<li><span style="background-color: #f6de7e"></span></li>
							<li><span style="background-color: #000000"></span></li>
							<li><span style="background-color: #dcdcd9"></span></li>
						</ul>
					</div>
					<div class="name">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</div>
					<span class="price">
						<xsl:value-of select="Price"></xsl:value-of>
					</span>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>