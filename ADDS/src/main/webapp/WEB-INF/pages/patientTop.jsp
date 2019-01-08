<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>head</title>
</head>
<body>
<nav class="nav">
  <div>
      <jsp:include page="top.jsp" flush="true"/>
  </div>
  <div class="nav-wrapper clearfix">
    <div style="width: 1080px;margin: 0 auto">
      <div class="n-list">
        <ul>
          <li><a href="<%=basePath%>user/index">首页</a></li>
          <li><a href="<%=basePath%>user/hospitalOverview">医院概况</a></li>
          <li><a href="<%=basePath%>record/clinicRecord">门诊记录</a></li>
          <li><a href="<%=basePath%>record/hospitalRecordIn">住院记录</a></li>
          <li><a href="<%=basePath%>patient/ask">&nbsp;寻医问药  </a></li>
          <li style="color: black"><a  style="color: black" href="<%=basePath%>patient/uploadCase">自动诊断</a></li>
          <%--<li><a href="<%=basePath%>patient/personalizedGraphs">个性化图谱 </a></li>--%>
          <li><a href="<%=basePath%>record/basicBody">体征信息</a></li>
          <li><a href="<%=basePath%>patient/account">个人信息</a></li>         
        </ul>
      </div>
      <div class="n-search">
        <input type="text">
        <i class="iconfont">&#xe600</i>
      </div>
    </div>
  </div>
</nav>
<div class="nav-padding"></div>
</body>
</html>
