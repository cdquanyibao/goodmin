<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="/shared/pageHeader" />
        <g:render template="/shared/pageAlerter" model="[instance: opAdminInstance]"/>
        <g:render template="/shared/pageFooter" model="[instance: opAdminInstance]"/>
	</body>
</html>
