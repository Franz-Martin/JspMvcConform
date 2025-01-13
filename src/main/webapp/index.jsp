<%-- 
    Document   : index
    Created on : 07.01.2025, 12:22:33
    Author     : trainer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="webCtrl" class="com.ibb.ctrl.WebController" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="second.jsp" method="post">
            Vorname:<input type="text" name="firstname" value="" /><br/>
             Nachname:<input type="text" name="lastname" value="" />
             <input type="submit" value="save" />
        </form>
       
      
    </body>
</html>
