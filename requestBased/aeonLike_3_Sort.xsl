<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

  <xsl:strip-space elements="*"/>


  <xsl:template match="collections">
    <xsl:result-document method="xml" href="aeonLike_c_Sorted.xml">
      <records>
        <!-- Sort on Collections -->
        <collection_records>
          <xsl:for-each-group select="aeonLikeCollections" group-by="CallNumber">
            <collection>
              <call>
                <xsl:value-of select="CallNumber"/>
              </call>
              <users>
                <xsl:for-each select="current-group()">
                  <username>
                    <xsl:value-of select="Username"/>
                  </username>
                </xsl:for-each>
              </users>
            </collection>
          </xsl:for-each-group>
        </collection_records>
        <!-- Sort on Users -->
        <user_records>
          <xsl:for-each-group select="aeonLikeCollections" group-by="Username">
            <user>
              <username>
                <xsl:value-of select="Username"/>
              </username>
              <xsl:for-each select="current-group()">
                <callnumber>
                  <xsl:value-of select="CallNumber"/>
                  <xsl:text> - </xsl:text>
                  <xsl:value-of select="finallocation"/>
                </callnumber>
                <url>
                  <xsl:value-of select="CallNumber"/>
                </url>
                <count>
                  <xsl:value-of select="count"/>
                </count>
              </xsl:for-each>
            </user>
          </xsl:for-each-group>
        </user_records>
      </records>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>


