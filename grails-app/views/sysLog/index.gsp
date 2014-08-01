
<%@ page import="com.yuyusoft.goodmin.SysLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysLog.label', default: 'SysLog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <!-- Page-Level Plugin CSS - Tables -->
        <asset:stylesheet src="plugins/dataTables/dataTables.bootstrap.css"/>
	</head>
	<body>

    <g:render template="/shared/pageHeader" />

    <div class="row">
        <div class="col-lg-12">
            %{--<div class="panel panel-default">--}%
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                    <tr>
                        <th>${message(code: 'default.goodmin.id.label', default: '#')}</th>
                        <th>${message(code: 'sysLog.opAdmin.label')}</th>
                        <th>${message(code: 'sysLog.dateCreated.label')}</th>
                        <th>${message(code: 'sysLog.ip.label')}</th>
                        <th>${message(code: 'sysLog.trace.label')}</th>
                        %{--<th>${message(code: 'default.goodmin.table.option.header')}</th>--}%
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${sysLogInstanceList}" status="i" var="sysLogInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td>${fieldValue(bean: sysLogInstance, field: "id")}</td>
                            <td>${fieldValue(bean: sysLogInstance, field: "opAdmin")}</td>
                            <td><g:formatDate format="yyyy-MM-dd HH:mm:ss" date="${sysLogInstance.dateCreated}" /></td>
                            <td>${fieldValue(bean: sysLogInstance, field: "ip")}</td>
                            <td>${fieldValue(bean: sysLogInstance, field: "trace")}</td>
                            %{--<td><g:render template="/shared/indexOperButtons" model="[instance: sysLogInstance]"/></td>--}%
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
