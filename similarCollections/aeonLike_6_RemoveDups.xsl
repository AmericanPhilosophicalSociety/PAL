<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

  <xsl:strip-space elements="*"/>

  <xsl:template match="collections">
    <xsl:result-document method="xml" href="aeonLike_f_Final.xml">
      <collections>
        <xsl:for-each select="group">
          <group name="{@name}">
            <xsl:for-each-group select="url" group-by=".">
              <xsl:sort select="./following-sibling::*[2]" data-type="number" order="descending"/>
              <xsl:if test=". != ../@name">
                <xsl:copy-of select="."/>
                <xsl:copy-of select="./following-sibling::*[1]"/>
                <xsl:copy-of select="./following-sibling::*[2]"/> 
              </xsl:if>
            </xsl:for-each-group>
          </group>
        </xsl:for-each>
      </collections>
    </xsl:result-document>
  </xsl:template>

</xsl:stylesheet>










