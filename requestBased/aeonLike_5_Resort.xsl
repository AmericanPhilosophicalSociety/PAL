<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

  <xsl:strip-space elements="*"/>


  <xsl:template match="/*">
    <xsl:result-document method="xml" href="aeonLike_e_Group.xml">
      <collections>
        <xsl:for-each-group select="record" group-by="original">
          <group name="{current-grouping-key()}">
            <xsl:for-each select="current-group()/callnumber">
              <xsl:copy-of select="./following-sibling::*[1]"/>
              <xsl:copy-of select="."/>
              <xsl:copy-of select="./following-sibling::*[2]"/>
            </xsl:for-each>
          </group>
        </xsl:for-each-group>
      </collections>
    </xsl:result-document> 
  </xsl:template>

</xsl:stylesheet>








