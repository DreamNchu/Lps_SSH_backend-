<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
StringBuffer basePath = request.getRequestURL();
%>
<%-- <s:debug></s:debug> --%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>今日报表</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top" style="background-color: #555555">
      <div class="container">
        <div class="navbar-header">
          <a href="../../index2.html" class="navbar-brand"><b>小店助手</b></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>


        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="../../dzsf.html" class="dropdown-toggle" data-toggle="dropdown">工作模块<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="../../dzsf.html">点钟手发</a></li>
                <li class="divider"></li>
                <li><a href="../../pzsf.html">排钟手发</a></li>
                <li class="divider"></li>
                <li><a href="../../pzzf.html">排钟自发</a></li>
                <li class="divider"></li>
                <li><a href="../../ygzt.html">员工状态</a></li>
                <li class="divider"></li>
                <li><a href="../../cfdd.html">重发订单</a></li>
                <li class="divider"></li>
                <li><a href="../../ddqk.html">订单情况</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="../charts/grbb.html" class="dropdown-toggle" data-toggle="dropdown">员工报表<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="../charts/gjrbb.html">个人今日报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/gbzbb.html">个人本周报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/gbybb.html">个人本月报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/gqnbb.html">个人全年报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/zjrbb.html">总体今日报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/zbzbb.html">总体本周报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/zbybb.html">总体本月报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/zqnbb.html">总体全年报表</a></li>
                <li class="divider"></li>
                <li><a href="../charts/cxbb.html">查询报表</a></li>
              </ul>
            </li>
            <li class="dropdown active">
              <a href="jrpm.html" class="dropdown-toggle" data-toggle="dropdown">员工排名<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="jrpm.html">今日排名</a></li>
                <li class="divider"></li>
                <li><a href="zzpm.html">此周排名</a></li>
                <li class="divider"></li>
                <li><a href="zypm.html">这月排名</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="../tables/xxcx.html" class="dropdown-toggle" >员工管理</a>
            </li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
                <input type="submit" value="查询" class="btn btn-info" style="color: white;background-color: rebeccapurple;border: 0px">
            </div>
          </form>
        </div>
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <li class="dropdown messages-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-envelope-o"></i>
                <span class="label label-success">4</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">你有四个消息</li>
                <li>
                  <ul class="menu">
                    <li>
                      <a href="#">
                        <div class="pull-left">
                          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <h4>
                          运动
                          <small><i class="fa fa-clock-o"></i> 5分钟</small>
                        </h4>
                        <p>今天去打篮球</p>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="footer"><a href="#">我看了所有消息</a></li>
              </ul>
            </li>
            <li class="dropdown notifications-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-bell-o"></i>
                <span class="label label-warning">10</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">你有10个通知</li>
                <li>
                  <ul class="menu">
                    <li>
                      <a href="#">
                        <i class="fa fa-users text-aqua"></i> 去11号房间
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="footer"><a href="#">所有通知已读</a></li>
              </ul>
            </li>
            <li class="dropdown tasks-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-flag-o"></i>
                <span class="label label-danger">9</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">你有9个任务</li>
                <li>
                  <ul class="menu">
                    <li>
                      <a href="#">
                        <h3>
                          打扫房间
                          <small class="pull-right">20%</small>
                        </h3>
                        <div class="progress xs">
                          <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                               aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                            <span class="sr-only">20%完成</span>
                          </div>
                        </div>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="footer">
                  <a href="#">所有任务已看</a>
                </li>
              </ul>
            </li>
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                <span class="hidden-xs">你好，世界</span>
              </a>
              <ul class="dropdown-menu" style="background-color: #2e6da4">
                <li class="user-header">
                  <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                  </br>
                  <lable style="font-family: 楷体">前端工程师</lable>
                  </br>注册时间2017-12-11
                </li>
                <li class="user-body">
                  <div class="row">
                    <div class="col-xs-4 text-center">
                      <a href="#">鲜花</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">销售</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">朋友</a>
                    </div>
                  </div>
                </li>
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="#" class="btn btn-default btn-flat">人物介绍</a>
                  </div>
                  <div class="pull-right">
                    <a href="#" class="btn btn-default btn-flat">退出</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="content-wrapper">
    <div class="container">
      <section class="content-header">
        <h1>
          员工今日排名表
        </h1>
        <ol class="breadcrumb">
          <li><i class="fa fa-dashboard"></i>->2017-10-12</li>
        </ol>
      </section>

      <section class="content">
        <div class="box">
          <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
              <tr>
                <th>序号</th>
                <th>工号</th>
                <th>姓名</th>
                <th>点钟数</th>
                <th>排钟数</th>
                <th>总个数</th>
                <th>总收益</th>
              </tr>
              <tr>
                <td>183</td>
                <td>张小明</td>
                <td>0011</td>
                <td>按摩</td>
                <td>10：30</td>
                <td>12:00</td>
                <td>12:00</td>
              </tr>
              <tr>
                <td>183</td>
                <td>张小明</td>
                <td>0011</td>
                <td>按摩</td>
                <td>10：30</td>
                <td>12:00</td>
                <td>12:00</td>
              </tr>
              <tr>
                <td>183</td>
                <td>张小明</td>
                <td>0011</td>
                <td>按摩</td>
                <td>10：30</td>
                <td>12:00</td>
                <td>12:00</td>
              </tr>
              <tr>
                <td>183</td>
                <td>张小明</td>
                <td>0011</td>
                <td>按摩</td>
                <td>10：30</td>
                <td>12:00</td>
                <td>12:00</td>
              </tr>
              <tr>
                <td>183</td>
                <td>张小明</td>
                <td>0011</td>
                <td>按摩</td>
                <td>10：30</td>
                <td>12:00</td>
                <td>12:00</td>
              </tr>
            </table>
          </div>
          <div class="box-footer clearfix">
            <lable style="font-family: 仿宋;color: #4cae4c;font-size: 20px">共130条数据-共13页-当前第3页</lable>
            <ul class="pagination pagination-sm no-margin pull-right">
              <li><a href="#">&laquo;</a></li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">&raquo;</a></li>
            </ul>
          </div>
        </div>
      </section>
    </div>
  </div>

</div>



<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<script src="../../dist/js/adminlte.min.js"></script>
<script src="../../dist/js/demo.js"></script>
</body>
</html>