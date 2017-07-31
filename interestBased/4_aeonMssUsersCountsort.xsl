<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

  <xsl:strip-space elements="*"/>

  <!-- This stylesheet takes the data from 'aeonMssUsersParsed.xml' and gets the count on number of researchers for each collection. It then outputs a new document, 'aeonMssUsersCount'. -->

  <xsl:template match="collections">
    <xsl:result-document method="xml" href="aeonMssUsersCount.xml">
      <collections>
        <xsl:for-each select="interest">
          <interest name="{@name}" code="{@code}">
            <xsl:for-each-group select="item" group-by="location">
              <xsl:sort select="count(current-group())" data-type="number" order="descending"/>
              <record>
                <location>
                  <xsl:value-of select="current-grouping-key()"/>
                </location>
                <collection>
                  <xsl:value-of select="callnumber"/>
                </collection>
                <users>
                  <xsl:value-of select="count(current-group())"/>
                </users>
              </record>
            </xsl:for-each-group>
          </interest>
        </xsl:for-each>
      </collections>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>







