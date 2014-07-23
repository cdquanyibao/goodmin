<g:form url="[resource:instance, action:'delete']" method="DELETE">
    <g:link controller="${controllerName}" action="show" resource="${instance}" class="btn btn-info btn-outline btn-xs"><g:message code="default.button.show.label" /></g:link>
    <g:link controller="${controllerName}" action="edit" resource="${instance}" class="btn btn-primary btn-outline btn-xs"><g:message code="default.button.update.label" /></g:link>
    <g:actionSubmit class="btn btn-danger btn-outline btn-xs" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
</g:form>