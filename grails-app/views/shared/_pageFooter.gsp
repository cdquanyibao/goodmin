<!-- if create page -->
<g:if test="${'create' == actionName}">
    <div class="row">
        <g:form url="[resource:instance, action:'save']" class="form-horizontal">
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
</g:if>

<!-- if edit page -->
<g:if test="${actionName in ['edit', 'update']}">
    <div class="row">
        <g:form url="[resource:instance, action:'update']" method="PUT" class="form-horizontal">
            <g:hiddenField name="version" value="${instance?.version}" />
            <g:render template="form"/>
            <div class="form-group">
                <div class="col-sm-1">
                    <button type="button" class="btn btn-link" onclick="history.go(-1)">
                        <i class="fa fa-angle-left"> ${message(code: 'default.goodmin.page.back')}</i>
                    </button>
                </div>
                <div class="col-sm-5">
                    <g:submitButton name="edit" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </div>
            </div>
        </g:form>
    </div>
</g:if>

<!-- if index page -->
<g:if test="${'index' == actionName}">
    <!-- Page-Level Plugin Scripts - Tables -->
    <asset:javascript src="plugins/dataTables/jquery.dataTables.js"/>
    <asset:javascript src="plugins/dataTables/dataTables.bootstrap.js"/>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
        $(document).ready(function() {
            var t = $('#dataTables-example').dataTable({
                "lengthMenu": [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "${message(code: 'default.goodmin.page.all')}"] ],
                "pageLength": 10,
                "language": {
                    "lengthMenu": "${message(code: 'default.goodmin.table.lengthMenu')}",
                    "zeroRecords": "${message(code: 'default.goodmin.table.zeroRecords')}",
                    "info": "${message(code: 'default.goodmin.table.info')}",
                    "infoEmpty": "",
                    "infoFiltered": "",
                    "paginate": {
                        "previous": "${message(code: 'default.paginate.prev')}",
                        "next": "${message(code: 'default.paginate.next')}"
                    },
                    "search": "${message(code: 'default.goodmin.table.search')} "
                },
                "columnDefs": [ {
                    "targets": -1,
                    "orderable": false
                } ],
                "order": [
                    [ 0, "desc" ]
                ]
            });
        });
    </script>
</g:if>

<!-- if show page -->
<g:if test="${'show' == actionName}">
    <div class="row">
        <div class="col-sm-1">
            %{--            <button type="button" class="btn btn-link" onclick="history.go(-1)">
                            <i class="fa fa-angle-left"> ${message(code: 'default.goodmin.page.back')}</i>
                        </button>--}%
            <g:link controller="${controllerName}" action="index" class="btn btn-link"><i class="fa fa-angle-left"></i> <g:message code="default.goodmin.page.back"/></g:link>
        </div>
        <div class="col-sm-5">
            <g:form url="[resource:instance, action:'delete']" method="DELETE">
                <g:hasPermit uri="/${controllerName}/edit">
                    <g:link controller="${controllerName}" action="edit" resource="${instance}" class="btn btn-primary"><g:message code="default.button.update.label" /></g:link>
                </g:hasPermit>
                <g:hasPermit uri="/${controllerName}/delete">
                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:hasPermit>
            </g:form>
        </div>
    </div>
</g:if>

