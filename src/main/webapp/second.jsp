<%-- 
    Document   : second
    Created on : 08.01.2025, 10:47:21
    Author     : trainer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ibb.model.Person"%>
<%@page   %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="webCtrl" class="com.ibb.ctrl.WebController" scope="session" />
<jsp:useBean id="person" class="com.ibb.model.Person" scope="page" />
<jsp:setProperty name="person" property="" />
<jsp:setProperty name="webCtrl" property="" />
<%
    if (person==null){
    Person person=new Person();
    }else{
    
    person=this.person;
    }
    
    person.setFirstname(request.getParameter("firstname"));
     person.setLastname(request.getParameter("lastname"));
    
    
    
  %>  


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="text" value="Hallo JSTL"/>
        <jsp:include page="header.jspf" flush="true" />
        <%@include file="header.jspf" %>
        ${text}
        <%
            
            out.print(text);
            // webCtrl.getPerson().setFirstname(request.getParameter("vorname"));
            // webCtrl.getPerson().setLastname(request.getParameter("nachname"));
            webCtrl.setPerson(person);
            webCtrl.addPerson();
            for (Person p : webCtrl.getListPerson()) {
                out.print(p.getFirstname() + " " + p.getLastname() + "</br>");

            }

            // session.invalidate();
        %>
        <a href="index.jsp">Zur Eingabe</a>
    </body>
</html>
