<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:x="http://www.w3.org/1999/xhtml"
        xmlns:ac="http://www.atlassian.com/schema/confluence/4/ac/"
        xmlns:ri="http://www.atlassian.com/schema/confluence/4/ri/"
        exclude-result-prefixes="x"
        >

        <xsl:output indent="yes" method="xml" omit-xml-declaration="yes"  cdata-section-elements="ac:plain-text-body"  />

	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
  		</xsl:copy>
	</xsl:template>

        <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

	<xsl:template match="//div[div[@class='content']/pre[@class='highlight'] ]" >
		<ac:structured-macro ac:name="code" ac:schema-version="1" ac:macro-id="bcb394c5-e0b8-4630-9e1a-1c3a48076738">
			<ac:parameter ac:name="language"><xsl:value-of select="concat(translate(substring(div/pre/code/@data-lang,1,1),$lowercase,$uppercase),substring(div/pre/code/@data-lang,2))" /></ac:parameter>
			<ac:parameter ac:name="theme">Confluence</ac:parameter>
			<ac:parameter ac:name="title">Ueberschrift</ac:parameter>
			<ac:plain-text-body><xsl:value-of select="div/pre/code" /></ac:plain-text-body>
		</ac:structured-macro>
        </xsl:template>

</xsl:stylesheet>
