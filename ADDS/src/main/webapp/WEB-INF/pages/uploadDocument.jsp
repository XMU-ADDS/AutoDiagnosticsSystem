<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
   <title>上传数据</title>
</head>
<body>
<div id="top">
    <jsp:include page="doctorTop.jsp" flush="true"/>
</div>
<div class="content-wrapper">
  <section class="form-wrapper">
    <div class="section-title">
      <span>上传数据集</span>
    </div>
    <div class="form-content" id="app">
        <!--表格数据-->
        <div style="margin-top: 20px"></div>
        <div style="padding: 30px">
            <div>
                <label for="name">数据集名称：</label>
                <input id="name" type="text"><br>
            </div>
            <div style="margin-top: 20px">
                <label for="type">数据集类别：</label>
                <select id="type" style="padding: 5px">
                    <option value ="骨科">骨科</option>
                    <option value ="肝胆外科">肝胆外科</option>
                </select><br>
            </div>
            <div style="margin-top: 20px">
                <label for="upload">上传文件：&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input id="upload" type="file"><br>
            </div>
            <div style="margin-top: 20px">
                <label for="t" style="vertical-align: top">数据集描述：</label>
                <textarea id="t" rows="4" cols="40" style="vertical-align: top"></textarea>
            </div>
            <div style="width: 100%;margin-left: 110px;margin-top: 50px">
                <el-button icon="el-icon-circle-check-outline">提交</el-button>
                <a href="<%=basePath%>doctor/documentList">
                    <el-button icon="el-icon-d-arrow-right">返回</el-button>
                </a>
            </div>


        </div>

    </div>
   </section>
 </div>
<div id="footer">
  <jsp:include page="footer.jsp" flush="true"/>
</div>
</body>

<!-- import Vue before Element -->
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<!-- import JavaScript -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
    new Vue({
        el: '#app',
        methods:{

        },
        data: function() {
            return {
                visible: false

            }
        }
    })
</script>

</html>
