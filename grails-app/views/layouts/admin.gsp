<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 14-7-20
  Time: 下午4:14
--%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>管理系统 - <g:layoutTitle/></title>

    <!-- Core CSS - Include with every page -->
    <asset:stylesheet src="bootstrap.min.css"/>
    %{--<link href="css/bootstrap.min.css" rel="stylesheet">--}%
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>
    %{--<link href="${resource(dir: 'font-awesome', file: 'css/font-awesome.css')}" rel="stylesheet">--}%
    %{--<link href="font-awesome/css/font-awesome.css" rel="stylesheet">--}%

    <!-- SB Admin CSS - Include with every page -->
    <asset:stylesheet src="sb-admin.css"/>
    %{--<link href="css/sb-admin.css" rel="stylesheet">--}%

    <g:layoutHead/>
</head>

<body>

<div id="wrapper">

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">管理系统</a>
        </div>
        <!-- /.navbar-header -->
    <ul class="nav navbar-top-links navbar-right">
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-messages">
            <li>
                <a href="#">
                    <div>
                        <strong>John Smith</strong>
                        <span class="pull-right text-muted">
                            <em>Yesterday</em>
                        </span>
                    </div>
                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <strong>John Smith</strong>
                        <span class="pull-right text-muted">
                            <em>Yesterday</em>
                        </span>
                    </div>
                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <strong>John Smith</strong>
                        <span class="pull-right text-muted">
                            <em>Yesterday</em>
                        </span>
                    </div>
                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a class="text-center" href="#">
                    <strong>Read All Messages</strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </li>
        </ul>
        <!-- /.dropdown-messages -->
    </li>
    <!-- /.dropdown -->
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-tasks">
            <li>
                <a href="#">
                    <div>
                        <p>
                            <strong>Task 1</strong>
                            <span class="pull-right text-muted">40% Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">40% Complete (success)</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <p>
                            <strong>Task 2</strong>
                            <span class="pull-right text-muted">20% Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <p>
                            <strong>Task 3</strong>
                            <span class="pull-right text-muted">60% Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                <span class="sr-only">60% Complete (warning)</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <p>
                            <strong>Task 4</strong>
                            <span class="pull-right text-muted">80% Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete (danger)</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a class="text-center" href="#">
                    <strong>See All Tasks</strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </li>
        </ul>
        <!-- /.dropdown-tasks -->
    </li>
    <!-- /.dropdown -->
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-alerts">
            <li>
                <a href="#">
                    <div>
                        <i class="fa fa-comment fa-fw"></i> New Comment
                        <span class="pull-right text-muted small">4 minutes ago</span>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                        <span class="pull-right text-muted small">12 minutes ago</span>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                        <span class="pull-right text-muted small">4 minutes ago</span>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <i class="fa fa-tasks fa-fw"></i> New Task
                        <span class="pull-right text-muted small">4 minutes ago</span>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <div>
                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                        <span class="pull-right text-muted small">4 minutes ago</span>
                    </div>
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a class="text-center" href="#">
                    <strong>See All Alerts</strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </li>
        </ul>
        <!-- /.dropdown-alerts -->
    </li>
    <!-- /.dropdown -->
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-user">
            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
            </li>
            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
            </li>
            <li class="divider"></li>
            <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
            </li>
        </ul>
        <!-- /.dropdown-user -->
    </li>
    <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
%{--                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </li>--}%

                <!-- ============= Goodmin menu start ============= -->
                <g:each in="${com.yuyusoft.goodmin.SysPermit.findAllWhere(level: 0, [cache: true])}" var="sysPermitMenu">
                    <li>
                        %{--<g:if test="${session.userPermitUrls!=null && session.userPermitUrls.indexOf(sysPermitMenu.permitUrl) >= 0}">--}%
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> ${sysPermitMenu.permitName}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <g:each in="${com.yuyusoft.goodmin.SysPermit.findAllByLevelAndParent(1, sysPermitMenu.idx, [cache: true])}" var="sysPermitMenu2">
                                <g:if test="${session.userPermitUrls?.indexOf(sysPermitMenu2.permitUrl) >= 0}">
                                <li>
                                    <g:link uri="${sysPermitMenu2.permitUrl}"><i class="fa fa-user fa-fw"></i> ${sysPermitMenu2.permitName}</g:link>
                                </li>
                                </g:if>
                            </g:each>
%{--                            <li>
                                <g:link controller="opAdmin" action="index"><i class="fa fa-user fa-fw"></i> ${message(code: 'default.goodmin.menu.system.administrator')}</g:link>
                            </li>
                            <li>
                                <g:link controller="sysRole" action="index"><i class="fa fa-user fa-fw"></i> ${message(code: 'default.goodmin.menu.system.role')}</g:link>
                            </li>--}%
                        </ul>
                        %{--</g:if>--}%
                        <!-- /.nav-second-level -->
                    </li>
                </g:each>

                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> ${message(code: 'default.goodmin.menu.config')}<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <g:link controller="sysPermit" action="index"><i class="fa fa-user fa-fw"></i> ${message(code: 'default.goodmin.menu.config.permit')}</g:link>
                        </li>
                        <li>
                            <g:link controller="login" action="index"><i class="fa fa-user fa-fw"></i> ${message(code: 'default.goodmin.menu.login')}</g:link>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <!-- ============= Goodmin menu end ============= -->
            </ul>
            <!-- /#side-menu -->
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
    </nav>


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

<div id="page-wrapper">
    <g:layoutBody/>
    %{--<div class="row">--}%
        %{--<div class="col-lg-12">--}%
            %{--<h1 class="page-header">空白</h1>--}%
        %{--</div>--}%
        %{--<!-- /.col-lg-12 -->--}%
    %{--</div>--}%
    %{--<!-- /.row -->--}%
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->




</body>


</html>