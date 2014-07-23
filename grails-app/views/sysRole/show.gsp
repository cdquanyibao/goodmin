
<%@ page import="com.yuyusoft.goodmin.SysRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysRole.label', default: 'SysRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <g:render template="/shared/pageHeader" model="[instance: sysRoleInstance]" />
    <g:render template="/shared/pageAlerter" model="[instance: sysRoleInstance]"/>

    <div class="row">
        <div class="col-lg-6">
            <div class="table-responsive">
                <table class="table table-hover table-bordered">
                    <tbody>
                    <g:if test="${sysRoleInstance?.roleName}">
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysRole.roleName.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysRoleInstance}" field="roleName"/></td>
                        </tr>
                    </g:if>
                    <g:if test="${sysRoleInstance?.description}">
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysRole.description.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysRoleInstance}" field="description"/></td>
                        </tr>
                    </g:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <g:render template="/shared/pageFooter" model="[instance: sysRoleInstance]"/>
	</body>
</html>
