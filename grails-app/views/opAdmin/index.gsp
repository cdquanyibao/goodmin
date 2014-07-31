
<%@ page import="com.yuyusoft.goodmin.OpAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <!-- Page-Level Plugin CSS - Tables -->
        <asset:stylesheet src="plugins/dataTables/dataTables.bootstrap.css"/>
	</head>
	<body>
    <g:render template="/shared/pageHeader" />

        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                %{--<div class="panel panel-default">--}%
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'opAdmin.id.label', default: '#')}</th>
                                <th>${message(code: 'opAdmin.loginName.label', default: 'Login Name')}</th>
                                <th>${message(code: 'opAdmin.realName.label', default: 'Real Name')}</th>
                                <th>${message(code: 'opAdmin.status.label', default: 'Status')}</th>
                                <th>${message(code: 'opAdmin.sysRole.label', default: 'Role')}</th>
                                <th>${message(code: 'opAdmin.lastUpdated.label', default: 'Last Updated')}</th>
                                <th>${message(code: 'default.goodmin.table.option.header')}</th>
                                <th>${message(code: 'default.goodmin.table.option.header')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${opAdminInstanceList}" status="i" var="opAdminInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${fieldValue(bean: opAdminInstance, field: "id")}</td>
                                    <td>${fieldValue(bean: opAdminInstance, field: "loginName")}</td>
                                    <td>${fieldValue(bean: opAdminInstance, field: "realName")}</td>
                                    <td>${opAdminInstance.getStatusString()}</td>
                                    <td>${opAdminInstance.sysRole}</td>
                                    <td><g:formatDate date="${opAdminInstance.lastUpdated}" /></td>
                                    <td><g:render template="/shared/indexOperButtons" model="[instance: opAdminInstance]"/></td>
                                    <td>
                                        <g:link controller="opAdmin" action="changePassword" resource="${opAdminInstance}" class="btn btn-success btn-outline btn-xs"><g:message code="opAdmin.view.changePassword.label" /></g:link>
                                    </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                %{--</div>--}%
            </div>
        </div>

    <g:render template="/shared/pageFooter" />
	</body>
</html>
