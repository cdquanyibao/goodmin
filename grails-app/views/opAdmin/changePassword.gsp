<%@ page import="com.yuyusoft.goodmin.OpAdmin" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin">
    <g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
    <title><g:message code="opAdmin.view.changePassword.label" /></title>
</head>
<body>

<g:simplePageHead content="${opAdminInstance} - ${message(code: 'opAdmin.view.changePassword.label')}" />

<g:render template="/shared/pageAlerter" model="[instance: opAdminInstance]"/>

<div class="row">
    <g:form url="[resource:opAdminInstance, action:'updatePassword']" method="PUT" class="form-horizontal">
        <g:hiddenField name="version" value="${instance?.version}" />

        <div class="form-group">
            <label for="oldPassword" class="col-sm-2 control-label"><g:message code="opAdmin.oldPassword.label" /></label>
            <div class="col-sm-4">
                <g:field name="oldPassword" type="password" required="" value="" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="newPassword" class="col-sm-2 control-label"><g:message code="opAdmin.newPassword.label" /></label>
            <div class="col-sm-4">
                <g:field name="newPassword" type="password" required="" value="" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="newPasswordConfirm" class="col-sm-2 control-label"><g:message code="opAdmin.newPasswordConfirm.label" /></label>
            <div class="col-sm-4">
                <g:field name="newPasswordConfirm" type="password" required="" value="" class="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2">
%{--                <button type="button" class="btn btn-link" onclick="history.go(-1)">
                    <i class="fa fa-angle-left"> ${message(code: 'default.goodmin.page.back')}</i>
                </button>--}%
            </div>
            <div class="col-sm-4">
                <g:submitButton name="updatePassword" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </div>
        </div>
    </g:form>
</div>

</body>
</html>