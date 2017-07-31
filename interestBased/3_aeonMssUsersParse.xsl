<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>
  <xsl:strip-space elements="*"/>

  <!-- 
This stylesheet takes the data from the exported xml file 'aeonMssUsers.xml' and organizes requests by a specified collection interest. It outputs a new xml document, 'aeonMssUsersParsed.xml' 
There is some redundancy here, but I can't see a way around that because requests may be from a user who has multiple interests, so we need to output some repetitious code
--> 

  <xsl:template match="dataroot">
    <xsl:result-document method="xml" href="aeonMssUsersParsed.xml">
      <collections>

        <interest name='Early America-Colonial History' code='EA-ColHis'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-ColHis')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-American Revolution' code ='EA-AmRev'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-AmRev')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>		

        <interest name='Early America-Early National' code='EA-EarlyNat'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-EarlyNat')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Antebellum' code='EA-Antebellum'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Antebellum')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Civil War America' code='EA-CivilWar'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-CivilWar')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Native American' code='EA-NatAm'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-NatAm')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Politics' code='EA-Pol'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Pol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	
        <interest name='Early America-Pennsylvania History' code='EA-PaHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-PaHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Philadelphia History' code='EA-PhilHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-PhilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Women and Gender' code='EA-Women'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Women')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Slavery' code='EA-Slavery'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Slavery')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Science' code='EA-Sci'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Sci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Medicine' code='EA-Med'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Med')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Reform Movements' code='EA-Reform'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Reform')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Education' code='EA-Ed'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Ed')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Business and Economics' code='EA-Bus'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Bus')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Military History' code='EA-MilHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-MilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Intellectual History' code='EA-IntHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-IntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Other' code='EA-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Native American' code='MA-NatAm'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-NatAm')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Politics' code='MA-Pol'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Pol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Pennsylvania History' code='MA-PaHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-PaHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Philadelphia History' code='MA-PhilHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-PhilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Women and Gender' code='MA-Women'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Women')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Slavery' code='MA-Slavery'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Slavery')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Science' code='MA-Sci'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Sci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Medicine' code='MA-Med'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Med')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Reform Movements' code='MA-Reform'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Reform')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Education' code='MA-Ed'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Ed')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Business and Economics' code='MA-Bus'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Bus')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Military History' code='MA-MilHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-MilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Intellectual History' code='MA-IntHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-IntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Other' code='MA-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-18th Century' code='HistSci-18C'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-18C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-19th Century' code='HistSci-19C'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-19C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-20th Century' code='HistSci-20C'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-20C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Eugenics' code='HistSci-Eug'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Eug')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Computer Science' code='HistSci-CS'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-CS')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Medicine' code='HistSci-Med'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Med')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Instruments' code='HistSci-Instr'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Instr')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Experimentation' code='HistSci-Exper'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Exper')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Science and Policy' code='HistSci-SciPol'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-SciPol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Science and Religion' code='HistSci-SciRel'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-SciRel')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-US Science' code='HistSci-USSci'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-USSci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-European Science' code='HistSci-EuroSci'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-EuroSci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Global Science' code='HistSci-GlobSci'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-GlobSci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Institutions and education' code='HistSci-InstEd'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-InstEd')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Intellectual History' code='HistSci-IntHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-IntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Women and science' code='HistSci-Women'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Women')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Discipline specific research' code='HistSci-Discip'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Discip')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Other' code='HistSci-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-18th Century' code='NatAm-18C'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-18C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-19th Century' code='NatAm-19C'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-19C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-20th Century' code='NatAm-20C'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-20C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-History of Anthropology' code='NatAm-AntHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-AntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Ethnohistory' code='NatAm-Ethno'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Ethno')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Linguistics' code='NatAm-Ling'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Ling')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Anthropological research in archives' code='NatAm-AnthRes'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-AnthRes')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Cultural Studies' code='NatAm-CultStud'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-CultStud')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Indian Policy' code='NatAm-IndPol'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-IndPol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Tribal governance' code='NatAm-TribGov'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-TribGov')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Reform movements' code='NatAm-Reform'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Reform')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Intercultural relations' code='NatAm-Intercult'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Intercult')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Tribal histories' code='NatAm-TribHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-TribHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Tribe' code='NatAm-Tribe'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Tribe')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Other' code='NatAm-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Literature' code='Lit'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'Lit')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Literature-Other' code='Lit-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'Lit-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Art History' code='ArtHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'ArtHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Art History-Other' code='ArtHist-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'ArtHist-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='European history' code='EuroHist'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EuroHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='European history-Other' code='EuroHist-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EuroHist-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

      </collections>	

    </xsl:result-document>
  </xsl:template>


</xsl:stylesheet>
