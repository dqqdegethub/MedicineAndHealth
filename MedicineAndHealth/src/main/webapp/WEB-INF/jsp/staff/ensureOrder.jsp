<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>订单确认</title>

    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/statics/css/index.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesnt work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
    .warning-errmsg
	{
		color:red;
		font-size:14px;
		line-height:34px;
		overflow: hidden;
	}
    </style>
  </head>

  <body>
<!--     <header> -->
<!--     <a>登录</a> |  -->
<!--  <div style="float:right"> -->
<!--  		欢迎来到药房网！&emsp;&emsp;&emsp;&emsp; -->
<!--     	<span>请登录&emsp;</span> -->
<!--     	<span>注册&emsp;</span> -->
<%--     	<span><img src="<%=request.getContextPath()%>/statics/images/cart.png" style="width:25px;height:25px;padding-bottom:5px"/>需求清单</span> --%>
<!--     </div> -->
<!--    </header> -->
	<div class="staffmain"><div style="width:100%;height:50px"></div>
		<div class="staffmainIn">
			<%@include file="../element/staffLeftBar.jsp"%>
			<div style="width:900px;float:left">
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px">管理订单</span>
					<button class="btn" type="button" style="background-color:#45a9c9;color:white;width:80px;margin-left:600px;margin-top:10px">注销</button>
				</span>
				<div style="margin-top:20px;margin-left:20px" id="changePwd">
					<a id="skipto" style="cursor:pointer;">个人中心</a>>><span>业务管理>>订单管理</span>
					<div style="margin-top:20px;">
						<table class="table table-bordered" id="pad" style="width:90%;margin-left:20px;margin-top:20px;min-height:300px">
							<thead>
								<tr>
									<td>序号</td>
									<td>药品名称</td>
									<td>药品数量</td>
									<td>顾客姓名</td>
									<td>操作</td>
								</tr>
							</thead>
						</table>	
					</div>
				</div>
			</div>
			<%@include file="../element/pageList.jsp"%>
		</div>
	</div>
	<div class="footer" style="margin-top:20px;width:100%;text-align:center;verticle:middle;">
			<dl style="">
				<dd style="font-size:14px;line-height:50px">.
					Copyright©2005-2019 药扛网（北京）医药科技有限公司版权所有，并保留所有权利。互联网药品交易服务证：京C20160006号
				</dd>
			</dl>
		</div>
	
	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script type="text/javascript">
    var dataSet = []
	var thead = $("#pad").html()
	var i=0;
	var contextPath="<%=request.getContextPath()%>" 
	$("#selectAllCheckbox").prop("checked",false);
	
	function cutSet(dataSet){
 		var dataCol = []
 		var _ = []
		var ct = 0
		var flag = true
		while(flag){
			for (var i = ct*5; i < ct*5+5; i++){
				if (dataSet[i]==undefined){
				dataCol.push(_)
				return dataCol
			}
				_.push(dataSet[i])
		}
		ct++
 			dataCol.push(_)
			_ = []
 		}
	}
 	function generateOrder(order){
 		i++;
		var str = 
		"<tr data-tr=\"" + order.medicineId + "\">" +
			"<td>"+ i +"</td>" + 
			"<td>" + order.medicineName + "</td>" + 
			"<td>" + order.count + "</td>" +
			"<td>" + order.customerName + "</td>" +
			"<td>" +
				"<a href=" + contextPath + "/staff/orderDetails/" + order.medicineId + ">处理</a>"
			"</td>" +
		"</tr>"
		return str
	}
	function generateColumn(dataColumn){  
 		var _ = ""
 		dataColumn.forEach(function(row,index){
			_ += "<tbody id=\"pad-page-" + index + "\" style=\"display:none;\">"
			row.forEach(function(item,index){
				_ += generateOrder(item)
			})
			_ += "</tbody>"
		})
 		return _
	}
 	function renderPage(dataSet){   
	 	$("#pageList").html(renderPageList(cutSet(dataSet).length))
	 	$("#pad").html(thead+generateColumn(cutSet(dataSet)))
	 	$("#pad-page-0").css("display","")
	 	$("#page-list-0").addClass("page-highlightened")
 	}

 	function showPage(n){
	 	for (var i = 0;i < $("#pageList")[0].getAttribute("data-total");i++){
	 		$("#pad-page-"+i).css("display","none")
	 		$("#page-list-"+i).removeClass("page-highlightened")
	 	}
	 	$("#pad-page-"+n).css("display","")
	 	$("#page-list-"+n).addClass("page-highlightened")
 	}
 	
 	$(document).ready(function(){
 		 var postData={
 				 "step":0
 		 }
 		 $.ajax({
 			 method:"POST",
 			 url: contextPath + "/staff/ensureOrder",
 			 contentType: "application/json",
 			 data:JSON.stringify(postData),
 			 dataType:"json",
 		 	 crossDomain: true,
 			 success: function(data){
 				dataSet = data.obj
 				renderPage(dataSet)
 				 },
 			 error: function(){
 				   alert("Search failed.");
 				 }
 		 })
 	})
    </script>
</body>

</html>
