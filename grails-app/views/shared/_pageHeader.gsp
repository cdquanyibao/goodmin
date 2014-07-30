
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">
            <div class="row">
                <g:hiddenField name="action" value="${actionName}"></g:hiddenField>
                <!-- if create page -->
                <g:if test="${'create' == actionName}">
                    <div class="col-lg-8">
                        <g:message code="default.create.label" args="[entityName]" />
                    </div>
                    <div class="col-lg-4 text-right">
                        <g:link controller="${controllerName}" action="index" class="btn btn-link"><g:message code="default.goodmin.page.back"/><g:message code="default.list.label" args="[entityName]" /></g:link>
                    </div>
                </g:if>

                <!-- if edit page -->
                <g:if test="${actionName in ['edit', 'update']}">
                    <div class="col-lg-8">
                        <g:message code="default.edit.label" args="[entityName]" />
                    </div>
                    <div class="col-lg-4 text-right">
                        <g:link controller="${controllerName}" action="index" class="btn btn-link"><g:message code="default.goodmin.page.back" /><g:message code="default.list.label" args="[entityName]" /></g:link>
                    </div>
                </g:if>

                <!-- if index page -->
                <g:if test="${'index' == actionName}">
                    <div class="col-lg-8">
                        <g:message code="default.list.label" args="[entityName]" />
                    </div>
                    <div class="col-lg-4 text-right">
                        <g:hasPermit uri="/${controllerName}/create">
                            <g:link controller="${controllerName}" action="create" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></g:link>
                        </g:hasPermit>
                        <button type="button" class="btn btn-success btn-outline" onclick="history.go(0)"><i class="fa fa-refresh"></i></button>
                    </div>
                </g:if>

                <!-- if show page -->
                <g:if test="${'show' == actionName}">
                    <div class="col-lg-8">
                        ${instance}
                    </div>
                    <div class="col-lg-4 text-right">
                        <g:link controller="${controllerName}" action="index" class="btn btn-link"><g:message code="default.goodmin.page.back"/><g:message code="default.list.label" args="[entityName]" /></g:link>
                    </div>
                </g:if>
            </div>
        </h3>
    </div>
</div>



