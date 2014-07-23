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

    <title>登录管理系统</title>

    <!-- Core CSS - Include with every page -->
    <asset:stylesheet src="bootstrap.min.css"/>
    %{--<link href="css/bootstrap.min.css" rel="stylesheet">--}%
    %{--<link href="font-awesome/css/font-awesome.css" rel="stylesheet">--}%

    <!-- SB Admin CSS - Include with every page -->
    <asset:stylesheet src="sb-admin.css"/>
    %{--<link href="css/sb-admin.css" rel="stylesheet">--}%

</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">请登录</h3>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="用户名" name="email" type="email" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="密码" name="password" type="password" value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">记住我
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <a href="/goodmin" class="btn btn-lg btn-success btn-block">登录</a>
                        </fieldset>
                    </form>
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