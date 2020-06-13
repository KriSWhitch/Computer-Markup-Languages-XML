<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2> Мои одногруппники</h2>
  <table border="1">
  <tr bgcolor="VIOLET">
  <th style="text-align:center">Ф.И.</th>
  <th style="text-align:center">Ср.балл</th>
  <th style="text-align:center">Год рождения</th>
  </tr>
	<xsl:for-each select="FACULTY/SPECIALIZATION">
	<xsl:sort select="PAGES"/>
	<xsl:choose>
		<xsl:when test="number(EXAM) &lt; 6">
			 <tr style="color:red">
				 <td><xsl:value-of select="NAME"/></td>
				 <td><xsl:value-of select="EXAM"/></td>
				 <td><xsl:value-of select="PAGES"/></td>
			  </tr>
		</xsl:when>
		<xsl:when test="number(EXAM) = 6">
			 <tr style="color:green">
				 <td><xsl:value-of select="NAME"/></td>
				 <td><xsl:value-of select="EXAM"/></td>
				 <td><xsl:value-of select="PAGES"/></td>
			  </tr>
		</xsl:when>
		<xsl:otherwise>
			<tr>
				 <td><xsl:value-of select="NAME"/></td>
				 <td><xsl:value-of select="EXAM"/></td>
				 <td><xsl:value-of select="PAGES"/></td>
			</tr>
		</xsl:otherwise>
	</xsl:choose>
	</xsl:for-each>
 </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
