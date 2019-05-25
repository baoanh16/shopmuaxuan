<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<!-- <div class="row">
			<div class="col-12 filter-wrapper">
				<div class="sort-bar">

				</div>
			</div>
		</div> -->
		<div class="row no-gutters">
			<div class="col-12 sort-bar">
				<!-- <div class="selectbox sort-filter">
					<select class="ajaxsort">
						<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
					</select>
				</div> -->
			</div>
		</div>
		<div class="ajaxresponse">
			<div class="row products-list ajaxresponsewrap">
				<div id="title"></div>
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				<xsl:if test="/ProductList/NextPageUrl!=''">
					<div class="d-flex justify-content-center w-100">
						<div class="mx-btn">
							<a href="#" class="ajaxpagerlink">
								<xsl:attribute name="href">
									<xsl:value-of select="/ProductList/NextPageUrl" />
								</xsl:attribute>
								<xsl:text>Xem thêm</xsl:text>
							</a>
						</div>
					</div>
				</xsl:if>
			</div>
		</div>
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

	<xsl:template match="Product">
		<div class="col-sm-6 col-lg-4 product__item">
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