
<%@ page import="com.yuyusoft.goodmin.SysRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysRole.label', default: 'SysRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">
                <div class="row">
                    <div class="col-lg-10">
                        ${sysRoleInstance?.roleName}
                    </div>
                    <div class="col-lg-2 text-right">
                        <g:link controller="sysRole" action="index" class="btn btn-link">返回<g:message code="default.list.label" args="[entityName]" /></g:link>
                    </div>
                </div>
            </h3>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <div class="row">
        <div class="col-lg-6">
            <div class="table-responsive">
                <table class="table table-hover table-bordered">
                    <tbody>
                    <g:if test="${sysRoleInstance?.roleName}">
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysRole.roleName.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysRoleInstance}" field="roleName"/></td>
                        </tr>
                    </g:if>
                    <g:if test="${sysRoleInstance?.description}">
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysRole.description.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysRoleInstance}" field="description"/></td>
                        </tr>
                    </g:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-1">
            <button type="button" class="btn btn-link" onclick="history.go(-1)">
                <i class="fa fa-angle-left"> ${message(code: 'default.goodmin.page.back')}</i>
            </button>
        </div>
        <div class="col-sm-5">
            <g:form url="[resource:sysRoleInstance, action:'delete']" method="DELETE">
                <g:link controller="opAdmin" action="edit" resource="${sysRoleInstance}" class="btn btn-primary"><g:message code="default.button.update.label" /></g:link>
                <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </g:form>
        </div>
    </div>


%{--		<a href="#show-sysRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sysRole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sysRole">
			
				<g:if test="${sysRoleInstance?.roleName}">
				<li class="fieldcontain">
					<span id="roleName-label" class="property-label"><g:message code="sysRole.roleName.label" default="Role Name" /></span>
					
						<span class="property-value" aria-labelledby="roleName-label"><g:fieldValue bean="${sysRoleInstance}" field="roleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sysRoleInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="sysRole.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${sysRoleInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sysRoleInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="sysRole.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${sysRoleInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sysRoleInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="sysRole.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${sysRoleInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sysRoleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sysRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>--}%
	</body>
</html>
