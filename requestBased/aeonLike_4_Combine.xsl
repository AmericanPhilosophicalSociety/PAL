<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

  <xsl:strip-space elements="*"/>


  <xsl:key name="people" match="user_records/user" use="username" />

  <xsl:template match="user_records/user" mode="name">
    <user>
      <xsl:value-of select="username"/>
    </user>
    <xsl:for-each select="callnumber">
      <xsl:copy-of select="." />
      <xsl:copy-of select="./following-sibling::*[1]"/>
      <xsl:copy-of select="./following-sibling::*[2]"/>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="collection_records">
    <xsl:result-document method="xml" href="aeonLike_d_Combined.xml">
      <collections>
        <xsl:for-each select="collection/users/username">
          <record>
            <original>
              <xsl:value-of select="../../call"/>
            </original>
            <xsl:apply-templates select="key('people', .)" mode="name" />
          </record>
        </xsl:for-each>
      </collections>
    </xsl:result-document>
  </xsl:template>

</xsl:stylesheet>
