
<%@ page import="com.yuyusoft.goodmin.SysPermit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysPermit.label', default: 'SysPermit')}" />
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
                    <th>${message(code: 'sysPermit.id.label', default: '#')}</th>
                    <th>${message(code: 'sysPermit.permitName.label')}</th>
                    <th>${message(code: 'sysPermit.permitUrl.label')}</th>
                    <th>${message(code: 'sysPermit.idx.label')}</th>
                    <th>${message(code: 'sysPermit.level.label')}</th>
                    <th>${message(code: 'sysPermit.parent.label')}</th>
                    <th>${message(code: 'default.goodmin.table.option.header')}</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${sysPermitInstanceList}" status="i" var="sysPermitInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>${fieldValue(bean: sysPermitInstance, field: "id")}</td>
                        <td>${fieldValue(bean: sysPermitInstance, field: "permitName")}</td>
                        <td>${fieldValue(bean: sysPermitInstance, field: "permitUrl")}</td>
                        <td>${fieldValue(bean: sysPermitInstance, field: "idx")}</td>
                        <td>${fieldValue(bean: sysPermitInstance, field: "level")}</td>
                        <td>${fieldValue(bean: sysPermitInstance, field: "parent")}</td>
                        <td><g:render template="/shared/indexOperButtons" model="[instance: sysPermitInstance]"/></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        %{--</div>--}%
    </div>
</div>

<g:render template="/shared/pageFooter" />

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready() {

    };
</script>

	</body>
</html>
