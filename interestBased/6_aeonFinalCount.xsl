<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>
  <xsl:strip-space elements="*"/>
  
  <!-- This stylesheet finalizes the organization of all the data to provide final counts and creates a new document aeonMssCount.xml -->

  <xsl:template match="collections">
    <xsl:result-document method="xml" href="aeonMssCount.xml">
      <collections>
        <xsl:for-each select="interest">
          <interest name="{@name}" code="{@code}">
            <xsl:for-each-group select="record" group-by="location">
              <record>
                <collection>
                  <xsl:value-of select="current-grouping-key()"/>
                </collection>
                <callnumber>
                  <xsl:value-of select="collection"/>
                </callnumber>
                <requests>
                  <xsl:value-of select="requests"/>
                </requests>
                <users>
                  <xsl:value-of select="current-group()/users"/>
                </users>
              </record>
            </xsl:for-each-group>
          </interest>
        </xsl:for-each>
      </collections>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>







