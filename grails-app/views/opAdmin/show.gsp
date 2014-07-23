
<%@ page import="com.yuyusoft.goodmin.OpAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">
                    <div class="row">
                        <div class="col-lg-10">
                            ${opAdminInstance?.loginName}
                        </div>
                        <div class="col-lg-2 text-right">
                            <g:link controller="opAdmin" action="index" class="btn btn-link"><g:message code="default.goodmin.page.back"/><g:message code="default.list.label" args="[entityName]" /></g:link>
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
                            <g:if test="${opAdminInstance?.loginName}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.loginName.label"/></td>
                                    <td class="col-lg-5"><g:fieldValue bean="${opAdminInstance}" field="loginName"/></td>
                                </tr>
                            </g:if>
                            <g:if test="${opAdminInstance?.realName}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.realName.label"/></td>
                                    <td class="col-lg-5"><g:fieldValue bean="${opAdminInstance}" field="realName"/></td>
                                </tr>
                            </g:if>
                            <g:if test="${opAdminInstance?.status}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.status.label"/></td>
                                    <td class="col-lg-5">${opAdminInstance.getStatusString()}</td>
                                </tr>
                            </g:if>
                            <g:if test="${opAdminInstance?.sysRole}">
                                <tr>
                                    <td class="col-lg-1 text-primary"><g:message code="opAdmin.sysRole.label"/></td>
                                    <td class="col-lg-5"><g:fieldValue bean="${opAdminInstance}" field="sysRole"/></td>
                                </tr>
                            </g:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-1 text-left">
%{--                <button type="button" class="btn btn-link" onclick="history.go(-1)">
                    <i class="fa fa-angle-left"> ${message(code: 'default.goodmin.page.back')}</i>
                </button>--}%
                <g:link controller="opAdmin" action="index" class="btn btn-link"><i class="fa fa-angle-left"></i> <g:message code="default.goodmin.page.back"/></g:link>
            </div>
            <div class="col-sm-5">
                <g:form url="[resource:opAdminInstance, action:'delete']" method="DELETE">
                    <g:link controller="opAdmin" action="edit" resource="${opAdminInstance}" class="btn btn-primary"><g:message code="default.button.update.label" /></g:link>
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:form>
            </div>
        </div>


%{--
		<a href="#show-opAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opAdmin" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opAdmin">
			
				<g:if test="${opAdminInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="opAdmin.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${opAdminInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="opAdmin.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${opAdminInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.loginName}">
				<li class="fieldcontain">
					<span id="loginName-label" class="property-label"><g:message code="opAdmin.loginName.label" default="Login Name" /></span>
					
						<span class="property-value" aria-labelledby="loginName-label"><g:fieldValue bean="${opAdminInstance}" field="loginName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.loginPWD}">
				<li class="fieldcontain">
					<span id="loginPWD-label" class="property-label"><g:message code="opAdmin.loginPWD.label" default="Login PWD" /></span>
					
						<span class="property-value" aria-labelledby="loginPWD-label"><g:fieldValue bean="${opAdminInstance}" field="loginPWD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.realName}">
				<li class="fieldcontain">
					<span id="realName-label" class="property-label"><g:message code="opAdmin.realName.label" default="Real Name" /></span>
					
						<span class="property-value" aria-labelledby="realName-label"><g:fieldValue bean="${opAdminInstance}" field="realName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="opAdmin.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${opAdminInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opAdminInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opAdminInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>--}%
	</body>
</html>
