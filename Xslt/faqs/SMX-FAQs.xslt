<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--<FAQsList>
    <ModuleTitle>Hỏi đáp</ModuleTitle>
    <PageTitle>Hỏi đáp</PageTitle>
    <SubmitLink>Hỏi đáp</SubmitLink>
    <Culture>vi-VN</Culture>
    <FAQs>
      <Question>Câu hỏi</Question>
      <Answer>Trả lời</Answer>
      <Viewed>0</Viewed>
    </FAQs>
  </FAQsList>-->

	<xsl:template match="/">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-3">
					<div id="orderSupportSideMenu"></div>
				</div>
				<div class="col-12 col-lg-9">
					<h1 class="nth-ordersupport-2-title">
						<xsl:value-of select="/FAQsList/ZoneTitle"></xsl:value-of>
					</h1>
					<div class="nth-ordersupport-2-content">
						<xsl:apply-templates select="/FAQsList/FAQs"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="FAQs">
		<xsl:value-of select="Question" disable-output-escaping="yes"></xsl:value-of>
		<xsl:value-of select="Answer" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>