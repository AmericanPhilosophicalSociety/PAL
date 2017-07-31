<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>
  <xsl:strip-space elements="*"/>

  <!-- Get count of requests for each collection -->
  
  <xsl:key name="callnumbercount" match="CallNumber" use="." />

  <xsl:template match="collections">
    <xsl:result-document method="xml" href="aeonLike_b_Counted.xml">
      <root>

        <collections>
          <xsl:for-each select="aeonLikeCollections">
            <xsl:variable name="variable">
              <xsl:value-of select="CallNumber"/>
            </xsl:variable>
            <xsl:if test="((CallNumber = following-sibling::*[1]/CallNumber) or (CallNumber = preceding-sibling::*[1]/CallNumber))">
              <aeonLikeCollections>
                <CallNumber>
                  <xsl:value-of select="CallNumber"/>
                </CallNumber>
                <Username>
                  <xsl:value-of select="Username"/>
                </Username>
                <finallocation>
                  <xsl:value-of select="finallocation"/>
                </finallocation>
                <count>
                  <xsl:value-of select="count(key('callnumbercount', $variable))"/>
                </count>
              </aeonLikeCollections>
            </xsl:if>
          </xsl:for-each>
        </collections>
      </root>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>


