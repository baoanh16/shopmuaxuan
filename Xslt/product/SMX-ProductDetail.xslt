<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="smx-product-detail-1">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-lg-5">
							<div class="product-img">
								<div class="big-thumbnail">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages">
									</xsl:apply-templates>
								</div>
								<div class="small-thumbnail">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages">
									</xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="product-info">
								<h2>
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes">
									</xsl:value-of>
								</h2>
								<h3>
									<xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
								</h3>
								<table>
									<tbody>

										<tr>
											<th>Mã sản phẩm</th>
											<td>
												<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>
											</td>
										</tr>
										<tr>
											<th>Tình trạng</th>
											<td>
												<xsl:choose>
													<xsl:when test="floor(/ProductDetail/ShowOption div 8) mod 2 = 1">
														<xsl:text>Tạm hết</xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>Còn hàng</xsl:text>
													</xsl:otherwise>
												</xsl:choose>
											</td>
										</tr>
										<tr>
											<th>Phí vận chuyển</th>
											<td>
												<xsl:choose>
													<xsl:when test="floor(/ProductDetail/ShowOption div 4) mod 2 = 1">
														<xsl:text>Miễn phí vận chuyển</xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>Có phí vận chuyển</xsl:text>
														<a href="/cuoc-phi-giao-hang">(Xem ước tính)</a>
													</xsl:otherwise>
												</xsl:choose>
											</td>
										</tr>
										<xsl:if test="count(/ProductDetail/ProductProperties)>0">
											<xsl:apply-templates select="/ProductDetail/ProductProperties">
											</xsl:apply-templates>
										</xsl:if>
										<xsl:value-of select="/ProductDetail/BriefContent"
											disable-output-escaping="yes"></xsl:value-of>
									</tbody>
								</table>
								<div class="input-and-button">
									<div class="quanlity-wrapper">
										<input type="text" value="1">
										<xsl:attribute name="name">
											<xsl:text>addtocart_</xsl:text>
											<xsl:value-of select="/ProductDetail/ProductId"
												disable-output-escaping="yes"></xsl:value-of>
											<xsl:text>.EnteredQuantity</xsl:text>
										</xsl:attribute>
										</input>
									</div>
									<xsl:if test="floor(/ProductDetail/ShowOption div 8) mod 2 != 1">
									<div class="mx-btn">
										<a href="#!" data-action="addcart" data-url=""
											onclick="AjaxCart.addproducttocart_details(this); return false;">
											<xsl:attribute name="data-productid">
												<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
											</xsl:attribute>
											Mua sản phẩm
										</a>
									</div>
									</xsl:if>
								</div>
								<div class="social-networks nav">
									<div class="nav-item">
										<div class="fb-share-button" data-href="" data-layout="button" data-size="small"
											data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank"
												href="">Chia sẻ</a></div>
									</div>
									<div class="nav-item"><a class="twitter-share-button"
											href="https://twitter.com/share" data-size="medium"
											data-text="custom share text" data-url="" data-via="twitterdev"
											data-related="twitterapi,twitter"></a></div>
									<div class="nav-item">
										<div class="g-plus" data-action="share"></div>
									</div>
									<div class="nav-item">
										<script src="//platform.linkedin.com/in.js"
											type="text/javascript">lang: en_US</script>
										<script type="IN/Share"></script>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<nav>
						<div class="row product-desc nav nav-tabs" id="productTab" role="tablist">
							<a class="col-auto active" data-toggle="tab" role="tab" aria-selected="true" href="#tab-1">
								<h2 class="mx__title--gradient title-line h4 pt-2 text-left">
									Mô tả sản phẩm
								</h2>
							</a>
							<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Nav">
							</xsl:apply-templates>
						</div>
					</nav>

					<div class="row product-desc tab-content" id="productTabContent">
						<div class="col-12 px-0 tab-pane fade show active" id="tab-1" role="tabpanel">
							<div class="product-props">
								<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes">
								</xsl:value-of>
							</div>
						</div>
						<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Panel">
						</xsl:apply-templates>
					</div>
					<!-- <nav>
						<div class="nav nav-tabs" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
							<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</a>
							<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">...</div>
						<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
						<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
					</div> -->

				</div>
			</article>
		</section>
		<section class="smx-product-detail-2">
			<article>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<h2 class="mx__title mx__title--gradient mt-3">Sản phẩm tương tự</h2>
						</div>
						<div class="col-12 px-0">
							<div class="products-list owl-carousel owl-theme">
								<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<section class="canhcam-home-8" style="margin: 0 -15px">
			<article class="homes-list">
				<div class="container">
					<div class="row h-100">
						<div class="col-sm-4 item">
							<figure class="figure">
								<div class="img-block">
									<img src="/Data/Sites/1/Banner/icon_4.png"
										alt="TẤT CẢ SẢN PHẨM 100% CHÍNH HÃNG"></img>
								</div>
								<figcaption class="figcaption">
									<h2>TẤT CẢ SẢN PHẨM 100% CHÍNH HÃNG</h2>
								</figcaption>
							</figure>
						</div>
						<div class="col-sm-4 item">
							<figure class="figure">
								<div class="img-block">
									<img src="/Data/Sites/1/Banner/icon_5.png"
										alt="GIAO HÀNG NHANH CHÓNG TRONG NGÀY"></img>
								</div>
								<figcaption class="figcaption">
									<h2>GIAO HÀNG NHANH CHÓNG TRONG NGÀY</h2>
								</figcaption>
							</figure>
						</div>
						<div class="col-sm-4 item">
							<figure class="figure">
								<div class="img-block">
									<img src="/Data/Sites/1/Banner/icon_6.png" alt="ĐA DẠNG CHỦNG LOẠI SẢN PHẨM"></img>
								</div>
								<figcaption class="figcaption">
									<h2>ĐA DẠNG CHỦNG LOẠI SẢN PHẨM</h2>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>


	<xsl:template match="ProductProperties">
		<tr>
			<th>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</th>
			<td>
				<xsl:apply-templates select="Options"></xsl:apply-templates>
			</td>
		</tr>
	</xsl:template>


	<xsl:template match="Options">
		<xsl:if test="position() > 1">
			<xsl:text>, </xsl:text>
		</xsl:if>
		<xsl:value-of select="Title"></xsl:value-of>
	</xsl:template>

	<xsl:template match="Options" mode="abc">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
	</xsl:template>


	<xsl:template match="ProductAttributes" mode="Nav">
		<a class="col-auto" role="tab" data-toggle="tab" aria-selected="false">
			<xsl:attribute name="href">
				<xsl:text>#tab-</xsl:text>
				<xsl:value-of select="position()+1"></xsl:value-of>
			</xsl:attribute>
			<h2 class="mx__title--gradient title-line h4 pt-2 text-left">
				<xsl:value-of select="Title"></xsl:value-of>
			</h2>
		</a>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Panel">
		<div class="col-12 px-0 tab-pane fade" role="tabpanel">
			<xsl:attribute name="id">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select="position()+1"></xsl:value-of>
			</xsl:attribute>
			<div class="product-props">
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="BigImages">
		<div class="item">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="SmallImages">
		<div class="item">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<!-- <xsl:template match="ProductOther">
		<div class="item">
			<div class="product-col">
				<xsl:choose>
					<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
						<div class="promotion op1">
							<span>
								<xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
							</span>
						</div>
					</xsl:when>
					<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
						<span class="promotion op2">
							<xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
						</span>
					</xsl:when>
				</xsl:choose>
				<figure>
					<a class="product-img">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<div class="product-name">
							<a class="btn-detail">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Code"></xsl:value-of>
							</a>
						</div>
						<div class="product-price">
							<xsl:if test="OldPrice != ''">
								<div class="old">
									<xsl:value-of select="OldPrice"></xsl:value-of>
								</div>
							</xsl:if>
							<xsl:if test="Price != ''">
								<div class="new">
									<xsl:value-of select="Price"></xsl:value-of>
								</div>
							</xsl:if>
						</div>
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
							</span>
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template> -->

	<xsl:template match="ProductOther">
		<div class="product__item">
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
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;"
							style="cursor: pointer">
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
