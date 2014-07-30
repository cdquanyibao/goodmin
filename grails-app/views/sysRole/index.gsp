
<%@ page import="com.yuyusoft.goodmin.SysRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysRole.label', default: 'SysRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

        <!-- Page-Level Plugin CSS - Tables -->
        <asset:stylesheet src="plugins/dataTables/dataTables.bootstrap.css"/>
	</head>
	<body>
    <g:render template="/shared/pageHeader" />

    <!-- table -->
    <div class="row">
        <div class="col-lg-12">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                    <tr>
                        <th>${message(code: 'sysRole.id.label', default: '#')}</th>
                        <th>${message(code: 'sysRole.roleName.label', default: 'Role Name')}</th>
                        <th>${message(code: 'sysRole.description.label', default: 'Description')}</th>
                        <th>${message(code: 'sysRole.dateCreated.label', default: 'Date Created')}</th>
                        <th>${message(code: 'sysRole.lastUpdated.label', default: 'Last Updated')}</th>
                        <th>${message(code: 'default.goodmin.table.option.header')}</th>
                        <th>${message(code: 'default.goodmin.table.option.header')}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${sysRoleInstanceList}" status="i" var="sysRoleInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td>${fieldValue(bean: sysRoleInstance, field: "id")}</td>
                            <td>${fieldValue(bean: sysRoleInstance, field: "roleName")}</td>
                            <td>${fieldValue(bean: sysRoleInstance, field: "description")}</td>
                            <td><g:formatDate date="${sysRoleInstance.dateCreated}" /></td>
                            <td><g:formatDate date="${sysRoleInstance.lastUpdated}" /></td>
                            <td><g:render template="/shared/indexOperButtons" model="[instance: sysRoleInstance]"/></td>
                            <td>
                                <g:hasPermit uri="/sysRole/configPermits">
                                    <g:link controller="sysRole" action="configPermits" resource="${sysRoleInstance}" class="btn btn-success btn-outline btn-xs"><g:message code="sysPermit.view.configPermits.label" /></g:link>
                                </g:hasPermit>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <g:render template="/shared/pageFooter" />
	</body>
</html>
