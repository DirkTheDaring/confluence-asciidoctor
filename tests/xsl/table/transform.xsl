<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:x="http://www.w3.org/1999/xhtml"
        exclude-result-prefixes="x"
        >

	<xsl:output indent="yes" method="xml" omit-xml-declaration="yes" />

	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
  		</xsl:copy>
	</xsl:template>


	<xsl:template match="x:table">
		<xsl:element name="table" namespace="http://www.w3.org/1999/xhtml"  >
			<xsl:attribute name="class">fixed-table wrapped</xsl:attribute>
		
		<xsl:element name="colgroup" namespace="http://www.w3.org/1999/xhtml" >
			<xsl:copy-of select="./x:colgroup/x:col"/>
		</xsl:element>

		<!-- for confluence, thead and tbody rows have to be merged into tbody
		     Additionally we need to remove the class attributes which are applied to th and td,
		     therefore we generate this out of a table -->

		<xsl:element name="tbody" namespace="http://www.w3.org/1999/xhtml" >
			<!--<xsl:copy-of select="./x:thead/x:tr"/> -->
			<!-- <xsl:copy-of select="./x:tbody/x:tr"/> -->
			<xsl:for-each select="./x:thead/x:tr">
				<xsl:element name="tr" namespace="http://www.w3.org/1999/xhtml" >
					<xsl:for-each select="./x:th">
					<xsl:element name="th" namespace="http://www.w3.org/1999/xhtml" >
							<xsl:copy-of select="node()"/>	
					</xsl:element>
					</xsl:for-each>
				</xsl:element>
			</xsl:for-each>

			<xsl:for-each select="./x:tbody/x:tr">
				<xsl:element name="tr" namespace="http://www.w3.org/1999/xhtml" >
					<xsl:for-each select="./x:td/x:p">
					<xsl:element name="td" namespace="http://www.w3.org/1999/xhtml" >
							<xsl:copy-of select="node()"/>	
					</xsl:element>
					</xsl:for-each>
				</xsl:element>
			</xsl:for-each>



		</xsl:element>

		</xsl:element>

	</xsl:template>
	


</xsl:stylesheet>
