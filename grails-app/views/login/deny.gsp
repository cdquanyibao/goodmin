<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="layout" content="admin">
    <title><g:message code="default.goodmin.page.login.err.deny" /></title>
</head>
<body>

<div class="row" style="padding-top: 30px">
    <div class="col-lg-12">
        <g:if test="${flash.message}">
            <div class="alert alert-danger" role="alert"><i class="fa fa-warning"></i> ${flash.message}</div>
        </g:if>
    </div>
</div>
</body>
</html>