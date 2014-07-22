
<%@ page import="com.yuyusoft.goodmin.OpAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

        <!-- Page-Level Plugin CSS - Tables -->
        <asset:stylesheet src="plugins/dataTables/dataTables.bootstrap.css"/>
        %{--<link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">--}%
	</head>
	<body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">
                    <div class="row">
                        <div class="col-lg-10">
                            <g:message code="default.list.label" args="[entityName]" />
                        </div>
                        <div class="col-lg-2 text-right">
                            <g:link controller="opAdmin" action="create" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></g:link>
                        </div>
                    </div>
                </h3>
            </div>
            <!-- /.col-lg-12 -->
        </div>
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
                                <th>${message(code: 'opAdmin.loginPWD.label', default: 'Login PWD')}</th>
                                <th>${message(code: 'opAdmin.realName.label', default: 'Real Name')}</th>
                                <th>${message(code: 'opAdmin.status.label', default: 'Status')}</th>
                                <th>${message(code: 'opAdmin.dateCreated.label', default: 'Date Created')}</th>
                                <th>${message(code: 'opAdmin.lastUpdated.label', default: 'Last Updated')}</th>
                                <th>${message(code: 'default.goodmin.table.option.header')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${opAdminInstanceList}" status="i" var="opAdminInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${fieldValue(bean: opAdminInstance, field: "id")}</td>
                                    <td>${fieldValue(bean: opAdminInstance, field: "loginName")}</td>
                                    <td>${fieldValue(bean: opAdminInstance, field: "loginPWD")}</td>
                                    <td>${fieldValue(bean: opAdminInstance, field: "realName")}</td>
                                    <td>${fieldValue(bean: opAdminInstance, field: "status")}</td>
                                    <td><g:formatDate date="${opAdminInstance.dateCreated}" /></td>
                                    <td><g:formatDate date="${opAdminInstance.lastUpdated}" /></td>
                                    <td>
                                        <g:form url="[resource:opAdminInstance, action:'delete']" method="DELETE">
                                            <g:link controller="opAdmin" action="show" resource="${opAdminInstance}" class="btn btn-info btn-outline btn-xs"><g:message code="default.button.show.label" /></g:link>
                                            <g:link controller="opAdmin" action="edit" resource="${opAdminInstance}" class="btn btn-primary btn-outline btn-xs"><g:message code="default.button.update.label" /></g:link>
                                            <g:actionSubmit class="btn btn-danger btn-outline btn-xs" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        </g:form>
                                    </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                %{--</div>--}%
            </div>
        </div>



		%{--<a href="#list-opAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		%{--<div id="list-opAdmin" class="content scaffold-list" role="main">--}%
			%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
				%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<table>--}%
			%{--<thead>--}%
					%{--<tr>--}%
						%{--<g:sortableColumn property="dateCreated" title="${message(code: 'opAdmin.dateCreated.label', default: 'Date Created')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="lastUpdated" title="${message(code: 'opAdmin.lastUpdated.label', default: 'Last Updated')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="loginName" title="${message(code: 'opAdmin.loginName.label', default: 'Login Name')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="loginPWD" title="${message(code: 'opAdmin.loginPWD.label', default: 'Login PWD')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="realName" title="${message(code: 'opAdmin.realName.label', default: 'Real Name')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="status" title="${message(code: 'opAdmin.status.label', default: 'Status')}" />--}%
					%{----}%
					%{--</tr>--}%
				%{--</thead>--}%
				%{--<tbody>--}%
				%{--<g:each in="${opAdminInstanceList}" status="i" var="opAdminInstance">--}%
					%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
					%{----}%
						%{--<td><g:link action="show" id="${opAdminInstance.id}">${fieldValue(bean: opAdminInstance, field: "dateCreated")}</g:link></td>--}%
					%{----}%
						%{--<td><g:formatDate date="${opAdminInstance.lastUpdated}" /></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: opAdminInstance, field: "loginName")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: opAdminInstance, field: "loginPWD")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: opAdminInstance, field: "realName")}</td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: opAdminInstance, field: "status")}</td>--}%
					%{----}%
					%{--</tr>--}%
				%{--</g:each>--}%
				%{--</tbody>--}%
			%{--</table>--}%
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${opAdminInstanceCount ?: 0}" />--}%
			%{--</div>--}%
		%{--</div>--}%

        <!-- Page-Level Plugin Scripts - Tables -->
        <asset:javascript src="plugins/dataTables/jquery.dataTables.js"/>
        %{--<script src="js/plugins/dataTables/jquery.dataTables.js"></script>--}%
        <asset:javascript src="plugins/dataTables/dataTables.bootstrap.js"/>
        %{--<script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>--}%

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function() {
                $('#dataTables-example').dataTable({
                    "language": {
                        "lengthMenu": "每页显示 _MENU_ 条记录",
                        "zeroRecords": "对不起，没有记录！",
                        "info": "第 _PAGE_ 页 / 共 _PAGES_ 页",
                        "infoEmpty": "",
                        "infoFiltered": "",
                        "paginate": {
                            "previous": "${message(code: 'default.paginate.prev')}",
                            "next": "${message(code: 'default.paginate.next')}"
                        },
                        "search": "查找 "
                    },
                    "columnDefs": [ {
                        "targets": -1,
                        "orderable": false
                    } ],
                    "order": [
                        [ 0, "desc" ]
                    ]
                });
            });
        </script>
	</body>
</html>
