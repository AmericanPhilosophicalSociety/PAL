<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

  <xsl:strip-space elements="*"/>

<!-- This stylesheet is run against aeonMssReqCount.xml to merge the data from that document with the data from aeonMssUsersCount.xml. It creates a new document aeonMssMerged.xml -->
  
  <xsl:template match="collections">
    <xsl:result-document method="xml" href="aeonMssMerged.xml">
      <collections>
        <xsl:for-each select="interest">
          <xsl:variable name="name_variable">
            <xsl:value-of select="@name"/>
          </xsl:variable>
          <interest name="{@name}" code="{@code}">
            <xsl:for-each select="record">
              <record>
                <collection>
                  <xsl:value-of select="collection"/>
                </collection>
                <location>
                  <xsl:value-of select="location"/>
                </location>
                <requests>
                  <xsl:value-of select="requests"/>
                </requests>
              </record>
            </xsl:for-each>
            <xsl:for-each select="document('aeonMssUsersCount.xml')/collections/interest[@name=$name_variable]">
              <xsl:for-each-group select="record" group-by="location">
                <record>
                  <location>
                    <xsl:value-of select="current-grouping-key()"/>
                  </location>
                  <users>
                    <xsl:value-of select="users"/>
                  </users>
                </record>
              </xsl:for-each-group>
            </xsl:for-each>
          </interest>
        </xsl:for-each>
      </collections>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>







