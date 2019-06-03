<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-3">
			<article class="homes-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h2 class="mx__title mx__title--gradient">
								<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
						<!-- <div class="col-lg-6">
							<figure>
								<div class="boxzoom"><img src="/Data/Sites/1/media/done.png" alt="alt"></img></div>
							</figure>
						</div> -->
						<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-6 col-lg-3 product__item">
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
					<div class="boxdetail">
						<xsl:if test="floor(ShowOption div 8) mod 2 != 1">
							<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;"
								style="cursor: pointer">
								<xsl:attribute name="data-productid">
									<xsl:value-of select="ProductId"></xsl:value-of>
								</xsl:attribute>
								<em class="mdi mdi-basket"></em>
								Cho vào giỏ hàng
							</a>
						</xsl:if>
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
					<xsl:if test="floor(ShowOption div 8) mod 2 = 1">
						<div class="no-left">
							<span>Tạm hết</span>
						</div>
					</xsl:if>
					<span class="price">
						<xsl:value-of select="Price"></xsl:value-of>
					</span>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>