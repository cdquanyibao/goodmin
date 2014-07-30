<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 14-7-20
  Time: 下午3:35
--%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><g:message code="default.goodmin.page.login.title" /></title>

    <!-- Core CSS - Include with every page -->
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>

    <!-- SB Admin CSS - Include with every page -->
    <asset:stylesheet src="sb-admin.css"/>

</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.goodmin.page.login.title" /></h3>
                </div>
                <div class="panel-body">
                    <g:form controller="login" action="authenticate" method="POST">
                        <fieldset>
                            <g:if test="${flash.message}">
                                <div class="form-group">
                                    <div class="alert alert-danger" role="alert" style="padding: 8px"><i class="fa fa-warning"></i> ${flash.message}</div>
                                </div>
                            </g:if>
                            <div class="form-group">
                                <input class="form-control" placeholder="<g:message code='default.goodmin.page.login.loginName' />" name="loginName" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="<g:message code='default.goodmin.page.login.loginPWD' />" name="loginPWD" type="password" value="">
                            </div>
%{--                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">记住我
                                </label>
                            </div>--}%
                            <!-- Change this to a button or input when using this as a form -->
                            <g:submitButton name="submit" class="btn btn-lg btn-success btn-block" value="${message(code: 'default.goodmin.page.login.button')}" />
                            %{--<button class="btn btn-lg btn-success btn-block"><g:message code='default.goodmin.page.login.button' /></button>--}%
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Core Scripts - Include with every page -->
<asset:javascript src="jquery-1.10.2.js"/>
%{--<script src="js/jquery-1.10.2.js"></script>--}%
<asset:javascript src="bootstrap.min.js"/>
%{--<script src="js/bootstrap.min.js"></script>--}%
<asset:javascript src="plugins/metisMenu/jquery.metisMenu.js"/>
%{--<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>--}%

<!-- SB Admin Scripts - Include with every page -->
<asset:javascript src="sb-admin.js"/>
%{--<script src="js/sb-admin.js"></script>--}%

</body>


</html>