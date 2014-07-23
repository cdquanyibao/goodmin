<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">
                    <div class="row">
                        <div class="col-lg-10">
                            <g:message code="default.create.label" args="[entityName]" />
                        </div>
                        <div class="col-lg-2 text-right">
                            <g:link controller="opAdmin" action="index" class="btn btn-link">返回<g:message code="default.list.label" args="[entityName]" /></g:link>
                        </div>
                    </div>
                </h3>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-12">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${opAdminInstance}">
                    <ul class="alert alert-danger" role="alert">
                        <g:eachError bean="${opAdminInstance}" var="error">
                            <li class="fa fa-warning" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>> <g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">
            <g:form url="[resource:opAdminInstance, action:'save']" class="form-horizontal">
                <g:render template="form"/>
                <div class="form-group">
                    <div class="col-sm-1">
                        <button type="button" class="btn btn-link" onclick="history.go(-1)">
                            <i class="fa fa-angle-left"> ${message(code: 'default.goodmin.page.back')}</i>
                        </button>
                    </div>
                    <div class="col-sm-5">
                        <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </div>
                </div>
            </g:form>
        </div>


%{--		<a href="#create-opAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-opAdmin" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${opAdminInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${opAdminInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:opAdminInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>--}%

	</body>
</html>
