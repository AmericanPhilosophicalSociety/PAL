<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>
  <xsl:strip-space elements="*"/>

<!-- Remove collections that only have one request -->

<xsl:template match="dataroot">
<xsl:result-document method="xml" href="aeonLike_a_Parsed.xml">
<collections>
<xsl:for-each select="aeonLikeCollections">
<xsl:if test="((CallNumber = following-sibling::*[1]/CallNumber) or (CallNumber = preceding-sibling::*[1]/CallNumber))">
<xsl:copy-of select ="."/>
</xsl:if>
</xsl:for-each>
</collections>
</xsl:result-document>
</xsl:template>

</xsl:stylesheet>


