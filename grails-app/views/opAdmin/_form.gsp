<%@ page import="com.yuyusoft.goodmin.OpAdmin; com.yuyusoft.goodmin.SysRole" %>


<div class="form-group">
    <label for="loginName" class="col-sm-1 control-label"><g:message code="opAdmin.loginName.label" default="Login Name" /></label>
    <div class="col-sm-5">
        <g:textField name="loginName" required="" value="${opAdminInstance?.loginName}" class="form-control" placeholder="" />
    </div>
</div>

<div class="form-group">
    <label for="loginPWD" class="col-sm-1 control-label"><g:message code="opAdmin.loginPWD.label" /></label>
    <div class="col-sm-5">
        <g:field name="loginPWD" type="password" required="" value="${opAdminInstance?.loginPWD}" class="form-control"/>
    </div>
</div>

<div class="form-group">
    <label for="realName" class="col-sm-1 control-label"><g:message code="opAdmin.realName.label" /></label>
    <div class="col-sm-5">
        <g:textField name="realName" required="" value="${opAdminInstance?.realName}" class="form-control"/>
    </div>
</div>

<div class="form-group">
    <label for="status" class="col-sm-1 control-label"><g:message code="opAdmin.status.label" /></label>
    <div class="col-sm-5">
        <g:select name="status" class="form-control"
                  from="${[1:'激活', 0:'未激活']}"
                  value="${opAdminInstance.status}"
                  optionKey="key" optionValue="value" />
    </div>
</div>

<div class="form-group">
    <label for="sysRole" class="col-sm-1 control-label"><g:message code="opAdmin.sysRole.label" /></label>
    <div class="col-sm-5">
        <g:select name="sysRole" class="form-control"
                  from="${SysRole.findAll()}"
                  value="${opAdminInstance.sysRole?.id}"
                  optionKey="id" optionValue="roleName"
                  noSelection="${['null':'请选择']}"
        />
    </div>
</div>


%{--
<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'loginName', 'error')} required">
	<label for="loginName">
		<g:message code="opAdmin.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginName" required="" value="${opAdminInstance?.loginName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'loginPWD', 'error')} required">
	<label for="loginPWD">
		<g:message code="opAdmin.loginPWD.label" default="Login PWD" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginPWD" required="" value="${opAdminInstance?.loginPWD}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'realName', 'error')} required">
	<label for="realName">
		<g:message code="opAdmin.realName.label" default="Real Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="realName" required="" value="${opAdminInstance?.realName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="opAdmin.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="status" type="number" value="${opAdminInstance.status}" required=""/>

</div>--}%


