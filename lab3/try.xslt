<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2> Список специальностей факультета ИТ</h2>
 <table border="1">
 <tr bgcolor="#9acd32">
 <th style="text-align:center">Фамилия</th>
 <th style="text-align:center">Имя</th>
 <th style="text-align:center">Отчество</th>
 <th style="text-align:center">Средний балл</th>
 <th style="text-align:center">Дата рождения</th>
 </tr>
<xsl:for-each select="GROUP/STUDENT">
 <tr>
 <td><xsl:value-of select="LASTNAME"/></td>
 <td><xsl:value-of select="NAME"/></td>
 <td><xsl:value-of select="SECONDNAME"/></td>
 <td><xsl:value-of select="MARK"/></td>
 <td><xsl:value-of select="BIRTH"/></td>
 </tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<!-->
<xsl:choose>
 <xsl:when test="условие1">
 шаблон1
 </xsl:when>
 <xsl:when test="условие2">
 шаблон2
 </xsl:when>
 <!-- ... -->
 <xsl:when test="условиеN">
 шаблонN
 </xsl:when>
 <xsl:otherwise>
 шаблонМ
 </xsl:otherwise>
</xsl:choose>