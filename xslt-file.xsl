<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
 <html>
 <body>
  <h1 align="center">Employee Management System</h1>
   <table border="3" align="center" >
   <tr>
    <th>Emp_id</th>
    <th>Name</th>
    <th>Phone</th>
    <th>Age</th>
    <th>Salary</th>
    <th>Designation</th>
    <th>promotion</th>
   </tr>
    <xsl:for-each select="Company/employee">
   <tr>
    <td><xsl:value-of select="Emp_id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="age"/></td>
    <td><xsl:value-of select="phone"/></td>
    <td><xsl:value-of select="salary"/></td>
    <td><xsl:value-of select="designation"/></td>

    
    <td>
        <xsl:choose>
        <xsl:when test = "age >= 50">
        Associate Project Manager
        </xsl:when>
        <xsl:when test = "age >= 40">
        Team Leader
        </xsl:when>
        <xsl:when test = "age &lt; 40">
         Developer
        </xsl:when>
        </xsl:choose>
        </td>
    
    
   </tr>
    </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>