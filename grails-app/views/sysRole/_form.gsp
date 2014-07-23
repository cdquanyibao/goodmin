<%@ page import="com.yuyusoft.goodmin.SysRole" %>


<div class="form-group">
    <label for="roleName" class="col-sm-1 control-label"><g:message code="sysRole.roleName.label" /></label>
    <div class="col-sm-5">
        <g:textField name="roleName" required="" value="${sysRoleInstance?.roleName}" class="form-control" placeholder="" />
    </div>
</div>

<div class="form-group">
    <label for="description" class="col-sm-1 control-label"><g:message code="sysRole.description.label" /></label>
    <div class="col-sm-5">
        <g:textField name="description" required="" value="${sysRoleInstance?.description}" class="form-control" placeholder="" />
    </div>
</div>

%{--

<div class="fieldcontain ${hasErrors(bean: sysRoleInstance, field: 'roleName', 'error')} required">
	<label for="roleName">
		<g:message code="sysRole.roleName.label" default="Role Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roleName" maxlength="100" required="" value="${sysRoleInstance?.roleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sysRoleInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="sysRole.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${sysRoleInstance?.description}"/>

</div>
--}%

