<xsl:stylesheet
        version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:x="http://www.w3.org/1999/xhtml"
        xmlns:ac="http://www.atlassian.com/schema/confluence/4/ac/"
        xmlns:ri="http://www.atlassian.com/schema/confluence/4/ri/"
        exclude-result-prefixes="x"
        >

        <xsl:output indent="yes" method="xml" omit-xml-declaration="yes"  />

        <xsl:template match="/">
                <div>
                <xsl:apply-templates select="x:html/x:body/x:div[@id='content']/x:*"/>
                </div>
        </xsl:template>


        <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        </xsl:template>

        <!-- Remove namespace magic -->
        <xsl:template match="x:*">
                <xsl:element name="{local-name()}">
                        <xsl:copy-of select="namespace::*[not(. = namespace-uri(..))]"/>
                        <xsl:apply-templates select="@*|node()"/>
                </xsl:element>
        </xsl:template>

</xsl:stylesheet>
