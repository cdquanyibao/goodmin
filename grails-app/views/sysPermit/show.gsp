
<%@ page import="com.yuyusoft.goodmin.SysPermit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'sysPermit.label', default: 'SysPermit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

    <g:render template="/shared/pageHeader" model="[instance: sysPermitInstance]" />
    <g:render template="/shared/pageAlerter" model="[instance: sysPermitInstance]"/>

    <div class="row">
        <div class="col-lg-6">
            <div class="table-responsive">
                <table class="table table-hover table-bordered">
                    <tbody>
                    <g:if test="${sysPermitInstance?.permitName}">
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysPermit.permitName.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysPermitInstance}" field="permitName"/></td>
                        </tr>
                    </g:if>
                    <g:if test="${sysPermitInstance?.permitUrl}">
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysPermit.permitUrl.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysPermitInstance}" field="permitUrl"/></td>
                        </tr>
                    </g:if>

                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysPermit.idx.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysPermitInstance}" field="idx"/></td>
                        </tr>
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysPermit.level.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysPermitInstance}" field="level"/></td>
                        </tr>
                        <tr>
                            <td class="col-lg-1 text-primary"><g:message code="sysPermit.parent.label"/></td>
                            <td class="col-lg-5"><g:fieldValue bean="${sysPermitInstance}" field="parent"/></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <g:render template="/shared/pageFooter" model="[instance: sysPermitInstance]"/>

	</body>
</html>
