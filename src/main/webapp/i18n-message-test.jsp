<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="i18n-message-test.jsp?theLocale=en_US">English (US)</a>
	<a href="i18n-message-test.jsp?theLocale=es_ES">Spanish (ES)</a>
	<a href="i18n-message-test.jsp?theLocale=de_DE">German (DE)</a>
		<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale:pageContext.request.locale}"scope="session" />
	<fmt:setLocale value="${theLocale}" />
	<fmt:setBundle basename="packagelib/mylabels_es_ES" />
	<fmt:message key="label.greeting" /> <br/><br/>
	<fmt:message key="label.firstname"/> <i>Jhon</i>
	<fmt:message key="label.lastname"/> <i>Doe</i> <br/><br/>
	<fmt:message key="label.welcome" /> </br>
</body>
</html>