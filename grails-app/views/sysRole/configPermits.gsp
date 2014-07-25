<%@ page import="com.yuyusoft.goodmin.SysRole; com.yuyusoft.goodmin.SysPermit" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <g:set var="entityName" value="${message(code: 'sysRole.label', default: 'SysRole')}" />
    <title><g:message code="sysPermit.view.configPermits.label" /></title>
</head>
<body>

<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">
            <div class="row">
                <div class="col-lg-8">
                    ${sysRoleInstance.roleName} - <g:message code="sysPermit.view.configPermits.label" />
                </div>
                <div class="col-lg-4 text-right">
                    <g:link controller="sysRole" action="index" class="btn btn-link"><g:message code="default.goodmin.page.back"/><g:message code="default.list.label" args="[entityName]" /></g:link>
                </div>
            </div>
        </h3>
    </div>
</div>

<g:form url="[resource:sysRoleInstance, action:'savePermits']" method="PUT">
    <div class="row">
        <div class="col-lg-12" style="margin-bottom: 20px">
            <g:submitButton name="save" class="btn btn-primary" value="${message(code: 'default.button.save.label')}" />
        </div>
    </div>

<div class="row">
    <div class="col-lg-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed">
                <thead>
                <tr>
                    <th class="col-lg-2"><g:message code="sysPermit.idx.label" /></th>
                    <th><g:message code="sysPermit.permitName.label" /></th>
                </tr>
                </thead>
                <tbody>
                    <g:each in="${com.yuyusoft.goodmin.SysPermit.all}" var="sysPermitInstance">
                        <tr>
                        <td class="col-lg-2">${sysPermitInstance.idx}</td>
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="${sysPermitInstance.id}" <g:if test="${sysPermitInstance in sysRoleInstance.sysPermits}">checked</g:if> >
                                    <g:if test="${sysPermitInstance.level == 0}">| </g:if>
                                    <g:if test="${sysPermitInstance.level == 1}">|---- </g:if>
                                    <g:if test="${sysPermitInstance.level == 2}">|-------- </g:if>
                                    ${sysPermitInstance.permitName}
                                </label>
                            </div>
                        </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>

    <div class="row">
        <div class="col-lg-12">
            <g:submitButton name="save" class="btn btn-primary" value="${message(code: 'default.button.save.label')}" />
        </div>
    </div>
</g:form>

%{--

<!-- Page-Level Plugin Scripts - Tables -->
<asset:javascript src="bootstrap-treeview.js"/>

<script>
    function getTree() {
        var tree = [
            {
                text: "Parent 1",
                nodes: [
                    {
                        text: "Child 1",
                        nodes: [
                            {
                                text: "Grandchild 1"
                            },
                            {
                                text: "Grandchild 2"
                            }
                        ]
                    },
                    {
                        text: "Child 2"
                    }
                ]
            },
            {
                text: "Parent 2"
            },
            {
                text: "Parent 3"
            },
            {
                text: "Parent 4"
            },
            {
                text: "Parent 5"
            }
        ];
        // Some logic to retrieve, or generate tree structure
        return tree;
    }

    $(document).ready(function() {
        $('#tree').treeview({data: getTree(), showBorder: false});
    });
</script>
--}%

</body>
</html>