
<!-- Button trigger modal -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="font-size: xx-small">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel"><g:message code="default.goodmin.print.title" /></h4>
            </div>
            <div class="modal-body">
                <div id="print-area">
                    <div class="row text-center">
                        <h5>${entityName}</h5>
                        <hr>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>${message(code: 'sysPermit.id.label', default: '#')}</th>
                                <th>${message(code: 'sysPermit.permitName.label')}</th>
                                <th>${message(code: 'sysPermit.permitUrl.label')}</th>
                                <th>${message(code: 'sysPermit.idx.label')}</th>
                                <th>${message(code: 'sysPermit.level.label')}</th>
                                <th>${message(code: 'sysPermit.parent.label')}</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${sysPermitInstanceList}" status="i" var="sysPermitInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}"
                                    <g:if test="${(i > 0) && ((i % 10) == 0)}">style="page-break-after: always" </g:if> >
                                    <td>${fieldValue(bean: sysPermitInstance, field: "id")}</td>
                                    <td>${fieldValue(bean: sysPermitInstance, field: "permitName")}</td>
                                    <td>${fieldValue(bean: sysPermitInstance, field: "permitUrl")}</td>
                                    <td>${fieldValue(bean: sysPermitInstance, field: "idx")}</td>
                                    <td>${fieldValue(bean: sysPermitInstance, field: "level")}</td>
                                    <td>${fieldValue(bean: sysPermitInstance, field: "parent")}</td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                    <div class="row text-right">
                        <g:message code="default.goodmin.print.time" />：<u><g:dateFormat /></u> &nbsp;&nbsp;
                    <g:message code="default.goodmin.print.operator" />：<u>${session.user.realName}</u>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><g:message code="default.button.cancel.label" /></button>
                <button type="button" class="btn btn-primary" id="print-button"><g:message code="default.goodmin.print.title" /></button>
            </div>
        </div>
    </div>
</div>

<!-- Page-Level Plugin Scripts - Tables -->
<asset:javascript src="jQuery.PrintArea.js"/>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $("button#print-button").click(function() {
        $("div#print-area").printArea({
//            mode: "popup", // user for debug
//            popClose: false,
            extraCss: "/goodmin/assets/printArea.css"
        });
    });
</script>
