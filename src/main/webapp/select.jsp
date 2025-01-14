<%-- 
    Document   : select
    Created on : 14.01.2025, 11:20:36
    Author     : trainer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSTL-SQL – Example</title>
  </head>
<body>
       <sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
                          url="jdbc:mysql://localhost:3306/onlineshop"
                          user="franz"
                          password="geheim"
                          var="con"
                          scope="request" />
       <sql:query dataSource="${con}"
                  var="result"
                  maxRows="10"
                  startRow="0"
                  sql="Select * from customer" />
 <table>
 
 <tr>
   <c:forEach items="${result.columnNames}" var="column">
      <th style="border: 1px solid #000000; padding: 5px;">${column}</th>
   </c:forEach>
  </tr></th
    <c:forEach items="${result.rows}" var="currRow">
  <tr>
    <c:forEach items="${result.columnNames}" var="column">
       <td style="border: 1px solid #000000; padding: 5px;">
       ${currRow[column]}</td>
    </c:forEach>
  </tr>
    </c:forEach>
  </table>
</body>
</html>
