<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<a class="btn-viewcart">
			<xsl:attribute name="href">
				<xsl:value-of select="/ShoppingCart/CartPageUrl"></xsl:value-of>
			</xsl:attribute>

			<span class="mdi mdi-basket"></span>
		</a>
	</xsl:template>
</xsl:stylesheet>