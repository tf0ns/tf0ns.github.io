<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
            color: purple;
          }
          th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: right;
          }
		  
        </style>
      </head>
      <body>
        <h1>Client Accounts</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Account Total</th>
          </tr>
          <xsl:for-each select="Accounts/Client">
            <tr>
              <td><xsl:value-of select="@ID"/></td>
              <td><xsl:value-of select="Name/First"/></td>
              <td><xsl:value-of select="Name/Last"/></td>
              <td><xsl:value-of select="Phone"/></td>
              <td><xsl:value-of select="E-mail"/></td>
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="Account_Total &lt; 80000">
					<td class="bgred">
					<xsl:value-of select="Account_Total"/>
					</xsl:when>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="Account_Total"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
