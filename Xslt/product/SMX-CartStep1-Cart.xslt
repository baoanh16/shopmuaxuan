<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="count(/ShoppingCart/CartItem)=0">
				<div class="row">
					<div class="col">
						<h3>
							<i class="fa fa-shopping-cart"></i>
							<span>Giỏ hàng của bạn </span>
							<span>
								<xsl:text>(</xsl:text>
								<xsl:value-of select="/ShoppingCart/TotalProducts"></xsl:value-of>
							</span>
							<span>sản phẩm)</span>
						</h3>
						<div class="row my-4 navi">
							<div class="col mb-3 text-center text-sm-left">
								<a class="btn btn-prev">
									<xsl:attribute name="href">
										<xsl:value-of select="/ShoppingCart/ContinueShoppingUrl"></xsl:value-of>
									</xsl:attribute>
									<i class="fa fa-chevron-left mr-2"></i>
									Tiếp tục mua hàng
								</a>
							</div>
						</div>
					</div>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="row">
					<div class="col">
						<h3>
							<i class="fa fa-shopping-cart"></i>
							<span>Giỏ hàng của bạn </span>
							<span>
								<xsl:text>(</xsl:text>
								<xsl:value-of select="/ShoppingCart/TotalProducts"></xsl:value-of>
							</span>
							<span>sản phẩm)</span>
						</h3>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="product-details">Sản phẩm</th>
									<th class="product-price">Đơn giá</th>
									<th class="product-count">Số lượng</th>
									<th class="product-result">Thành tiền</th>
								</tr>
							</thead>
							<tbody>
								<xsl:apply-templates select="/ShoppingCart/CartItem"></xsl:apply-templates>
							</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="col">
						<div class="total text-center text-sm-right">
							<div class="price">Tạm tính
								<span>
									<xsl:value-of select="/ShoppingCart/Total"></xsl:value-of>
								</span>
							</div>
							<div class="price-vat">Giá chưa bao gồm VAT</div>
						</div>
					</div>
				</div>
				<div class="row mb-4 navi">
					<div class="col mb-3 text-center text-sm-left">
						<a class="btn btn-prev">
							<xsl:attribute name="href">
								<xsl:value-of select="/ShoppingCart/ContinueShoppingUrl"></xsl:value-of>
							</xsl:attribute>
							<i class="fa fa-chevron-left mr-2"></i>
							Tiếp tục mua hàng
						</a>
					</div>
					<div class="col mb-3 text-center text-sm-right">
						<a class="btn btn-next" href="#!" id="checkout" name="checkout">
							<xsl:attribute name="onclick">
								<xsl:text>setLocation('</xsl:text>
								<xsl:value-of select="/ShoppingCart/CheckoutUrl"></xsl:value-of>
								<xsl:text>');return false;</xsl:text>
							</xsl:attribute>
							Tiến hành thanh toán
							<i class="fa fa-chevron-right ml-2"></i>
						</a>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="CartItem">
		<tr>
			<td class="product-details">
				<div class="row">
					<div class="col-12 col-md">
						<div class="media">

							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
							<div class="media-body">
								<div class="media-body">
									<div class="name">
										<xsl:value-of select="Title"></xsl:value-of>
									</div>
									<div class="desc">
										<xsl:value-of select="Code"></xsl:value-of>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- <xsl:apply-templates select="Attributes"></xsl:apply-templates> -->

					<div class="col-sm-auto mt-3 mt-md-0 px-4 px-md-0">
						<a class="del btn btn-danger btn-sm" href="javascript:void(0)" onclick="AjaxCart.removefromcart(this);return false;">
							<xsl:attribute name="data-itemguid">
								<xsl:value-of select="ItemGuid"></xsl:value-of>
							</xsl:attribute>
							<i class="fa fa-times-circle"></i>Xóa
						</a>
					</div>

				</div>
			</td>
			<td class="product-price">
				<div class="price">
					<xsl:value-of select="Price"></xsl:value-of>
				</div>
				<del class="promotion">
					<xsl:value-of select="OldPrice"></xsl:value-of>
				</del>
			</td>
			<td class="product-count">
				<div class="form-inline" id="quantity">
					<div class="form-group">
						<input type="text" maxlength="10" class="qty-input" onchange="AjaxCart.updatecart();return false;">
						<xsl:attribute name="name">
							<xsl:text>itemquantity</xsl:text>
							<xsl:value-of select="ItemGuid"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="value">
							<xsl:value-of select="Quantity"></xsl:value-of>
						</xsl:attribute>
						</input>
					</div>
				</div>
			</td>
			<td class="product-result">
				<div class="sum">
					<xsl:value-of select="ItemSubTotal"></xsl:value-of>
				</div>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>