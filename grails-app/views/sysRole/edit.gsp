<%@ page import="com.yuyusoft.goodmin.SysRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysRole.label', default: 'SysRole')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="/shared/pageHeader" />
        <g:render template="/shared/pageAlerter" model="[instance: sysRoleInstance]"/>
        <g:render template="/shared/pageFooter" model="[instance: sysRoleInstance]"/>
	</body>
</html>
