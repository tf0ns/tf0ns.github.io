<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>List of Clients</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Phone</th>
            <th>E-mail</th>
            <th>Account Total</th>
          </tr>
          <xsl:for-each select="Accounts/Client">
              <td><xsl:value-of select="Name/First"/></td>
			   <td><xsl:value-of select="Name/Last"/></td>
              <td><xsl:value-of select="Phone"/></td>
              <td><xsl:value-of select="E-mail"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="Account_Total > 79999">
                    <span class="bgred">
                      <xsl:value-of select="Account_Total"/>
                    </span>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="Account_Total"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>





