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

  <title>我的数据集</title>
</head>
<body>
<div id="top">
    <jsp:include page="doctorTop.jsp" flush="true"/>
</div>
<div class="content-wrapper">
  <section class="form-wrapper">
    <div class="section-title">
      <span>我的数据集</span>
    </div>
    <div class="form-content" id="app">
        <!--表格数据-->
        <div style="margin-top: 20px"></div>
        <div>
            <a href="<%=basePath%>doctor/uploadDocument">
                <el-button type="primary" icon="el-icon-circle-plus-outline">上传数据</el-button>
            </a>
        </div>
        <div style="margin-top: 20px;">
            <el-table :data="tableData.slice((currentPage-1)*pageSize,currentPage*pageSize)"
                      max-height="410" height="410" fit border style="width: 100%;">
                <el-table-column prop="title" label="标题" sortable></el-table-column>
                <el-table-column prop="category" label="类别" sortable></el-table-column>
                <el-table-column prop="status" label="处理状态" align="center" width="150px" sortable>
                    <template slot-scope="scope">
                        <el-tag
                                :type="scope.row.statusType"
                                disable-transitions>{{scope.row.statusText}}
                        </el-tag>
                    </template>
                </el-table-column>
                <el-table-column label="操作" align="center" width="150px" fixed="right">
                    <template slot-scope="scope">
                        <el-button type="primary" size="small" :disabled="scope.row.downloadStatus">下载</el-button>
                    </template>
                </el-table-column>
            </el-table>

            <div style="margin-top: 20px;margin-left: auto;margin-right: auto;text-align: center;width:100%">
                <el-pagination
                        :total="totalSize"
                        @current-change="currentChange"
                        :page-size="pageSize"
                        layout="prev, pager, next, jumper">
                </el-pagination>
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
            //换页触发的函数
            currentChange:function(currentPage){
                this.currentPage = currentPage;
            },
        },
        data: function() {
            return {
                visible: false,
                totalSize:9,
                pageSize:6,
                currentPage:1,
                tableData:[
                    {
                        title:"骨科科室1数据",
                        category:"骨科",
                        state:"已处理",
                        statusType:"success",
                        statusText:"已处理",
                        downloadStatus:false
                    },
                    {
                        title:"骨科科室2数据",
                        category:"骨科",
                        state:"已处理",
                        statusType:"success",
                        statusText:"已处理",
                        downloadStatus:false
                    },
                    {
                        title:"骨科科室3数据",
                        category:"骨科",
                        state:"未处理",
                        statusType:"danger",
                        statusText:"未处理",
                        downloadStatus:true
                    },
                    {
                        title:"肝胆外科科科室1数据",
                        category:"肝胆外科",
                        state:"已处理",
                        statusType:"success",
                        statusText:"已处理",
                        downloadStatus:false
                    },
                    {
                        title:"肝胆外科科科室2数据",
                        category:"肝胆外科",
                        state:"未处理",
                        statusType:"danger",
                        statusText:"未处理",
                        downloadStatus:true
                    },
                    {
                        title:"肝胆外科科科室3数据",
                        category:"肝胆外科",
                        state:"未处理",
                        statusType:"danger",
                        statusText:"未处理",
                        downloadStatus:true
                    },
                    {
                        title:"肝胆外科科科室2数据",
                        category:"肝胆外科",
                        state:"未处理",
                        statusType:"danger",
                        statusText:"未处理",
                        downloadStatus:true
                    },
                    {
                        title:"肝胆外科科科室2数据",
                        category:"肝胆外科",
                        state:"未处理",
                        statusType:"danger",
                        statusText:"未处理",
                        downloadStatus:true
                    },
                    {
                        title:"肝胆外科科科室2数据",
                        category:"肝胆外科",
                        state:"未处理",
                        statusType:"danger",
                        statusText:"未处理",
                        downloadStatus:true
                    }


                ]
            }
        }
    })
</script>

</html>
