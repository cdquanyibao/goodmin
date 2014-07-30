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
                    <th class="col-lg-2"><g:message code="sysPermit.view.configPermits.menu.label" /></th>
                    <th><g:message code="sysPermit.view.configPermits.menu.sub.label" /></th>
                    <th><g:message code="sysPermit.view.configPermits.operation.label" /></th>
                </tr>
                </thead>
                <tbody>

                <% menuCount = 0 %>
                <g:each in="${com.yuyusoft.goodmin.SysPermit.findAllByLevel(1, [sort: 'parent'])}" var="sysPermitInstance">
                    <%
                        if (menuCount == 0) {
                            rowspan = SysPermit.countByParent(sysPermitInstance.parent)
                            level0Menu = SysPermit.findByIdx(sysPermitInstance.parent)
                        } else if (menuCount >= rowspan) {
                            menuCount = 0
                            rowspan = SysPermit.countByParent(sysPermitInstance.parent)
                            level0Menu = SysPermit.findByIdx(sysPermitInstance.parent)
                        }
                    %>
                        <tr>
                        %{--<td class="col-lg-2" rowspan="${SysPermit.countByParent(sysPermitInstance.parent)}">--}%
                            <g:if test="${menuCount == 0}">
                        <td class="col-lg-2" rowspan="${rowspan}">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="${level0Menu.idx}" name="${level0Menu.id}" <g:if test="${level0Menu in sysRoleInstance.sysPermits}">checked</g:if> >
                                    ${level0Menu.permitName}
                                </label>
                            </div>
                        </td>
                            </g:if>
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" id="${sysPermitInstance.idx}" name="${sysPermitInstance.id}" <g:if test="${sysPermitInstance in sysRoleInstance.sysPermits}">checked</g:if> >
                                    ${sysPermitInstance.permitName}
                                </label>
                            </div>
                        </td>
                        <td>
                            <g:if test="${sysPermitInstance.level == 1}">
                            <g:each in="${com.yuyusoft.goodmin.SysPermit.findAllByLevelAndParent(2, sysPermitInstance.idx)}" var="sysPermitInstance2">
                                <label class="checkbox-inline">
                                    <input type="checkbox" id="${sysPermitInstance2.idx}" name="${sysPermitInstance2.id}" <g:if test="${sysPermitInstance2 in sysRoleInstance.sysPermits}">checked</g:if> >
                                    ${sysPermitInstance2.permitName}
                                </label>
                            </g:each>
                            </g:if>
                        </td>
                        </tr>
                    <% menuCount++ %>
                    </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>

    <div class="row">
        <div class="col-sm-1">
            <g:link controller="sysRole" action="index" class="btn btn-link"><i class="fa fa-angle-left"></i> <g:message code="default.goodmin.page.back"/></g:link>
        </div>
        <div class="col-sm-5">
            <g:submitButton name="save" class="btn btn-primary" value="${message(code: 'default.button.save.label')}" />
        </div>
    </div>
</g:form>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    // checkbox click association
    $(":checkbox").click(function() {
        var cbList = $(":checkbox")

//        alert(this.id)
        var cid = this.id

        // 二位数的一级菜单点击
        if (cid < 100) {
            for (var i = 0; i < cbList.length; i++) {
                if (cbList[i].id >= 1000 && cbList[i].id.substring(0, 2) == cid) {
                    // 与点击选择项目状态相同
                    cbList[i].checked = this.checked
                }
            }
            return
        }

        // 四位数的二级菜单点击
        if (cid >= 1000 && cid < 10000) {
            for (var i = 0; i < cbList.length; i++) {
                // 对应的三级操作权限同选/不选
                if (cbList[i].id >= 100000 && cbList[i].id.substring(0, 4) == cid) {
                    cbList[i].checked = this.checked
                }
                // 如果对应的一级菜单没有选中，则选中一级
                if (cbList[i].id == cid.substring(0, 2) && cbList[i].checked == false) {
                    if (this.checked) cbList[i].checked = true
                }
            }
            return
        }

        // 六位数的三级操作选中
        if (cid >= 100000 && this.checked) {
            for (var i = 0; i < cbList.length; i++) {
                // 如果对应的一级菜单没有选中，则选中一级
                if (cbList[i].id == cid.substring(0, 2) && cbList[i].checked == false) {
                    cbList[i].checked = true
                    continue
                }
                // 如果对应的二级菜单没有选中，则选中二级
                if (cbList[i].id == cid.substring(0, 4) && cbList[i].checked == false) {
                    cbList[i].checked = true
                }
            }
            return
        }
    });
</script>

</body>
</html>