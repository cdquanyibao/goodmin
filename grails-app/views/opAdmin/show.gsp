
<%@ page import="com.yuyusoft.goodmin.OpAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <g:render template="/shared/pageHeader" model="[instance: opAdminInstance]" />
    <g:render template="/shared/pageAlerter" model="[instance: opAdminInstance]"/>

        <div class="row">
            <div class="col-lg-6">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                        <tbody>
                            <g:if test="${opAdminInstance?.loginName}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.loginName.label"/></td>
                                    <td class="col-lg-5"><g:fieldValue bean="${opAdminInstance}" field="loginName"/></td>
                                </tr>
                            </g:if>
                            <g:if test="${opAdminInstance?.realName}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.realName.label"/></td>
                                    <td class="col-lg-5"><g:fieldValue bean="${opAdminInstance}" field="realName"/></td>
                                </tr>
                            </g:if>
                            <!-- status -->
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.status.label"/></td>
                                    <td class="col-lg-5">${opAdminInstance.getStatusString()}</td>
                                </tr>
                            <g:if test="${opAdminInstance?.sysRole}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.sysRole.label"/></td>
                                    <td class="col-lg-5"><g:fieldValue bean="${opAdminInstance}" field="sysRole"/></td>
                                </tr>
                            </g:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    <g:render template="/shared/pageFooter" model="[instance: opAdminInstance]"/>
	</body>
</html>
