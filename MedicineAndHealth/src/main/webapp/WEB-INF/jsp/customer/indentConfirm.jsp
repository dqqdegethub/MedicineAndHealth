<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人中心</title>

    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/statics/css/index.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/statics/css/homepage.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesnt work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
	.tableStyle{
		width:90%;
		margin-left:20px;
		margin-top:50px;
		min-height:300px;
		background-color:white
	}
    </style>
  </head>

  <body>
    <%@include file="../element/header.jsp"%>
	<div style="width: 1024px;margin:0 auto">
		<%@include file="../element/searchBanner.jsp"%>
		
		<div style="padding-top: 10px">
			<%@include file="../element/customerLeftBar.jsp"%>
			
			<div style="width: 80%;height:450px;background-color:#f1f1f1;float:left">
				<p style="font-size: 30px;margin: 20px 20px 20px">个人中心</p>
				
				<div style="margin-top:20px;margin-left:20px">
					<a href="<%=request.getContextPath() %>/home/homePage" style="cursor:pointer;">药康网</a>>><span>我的药康网</span>
					
					<table class="table table-bordered tableStyle">
						<thead>
							<tr>
								<th class="col-xs-3">药品名</th>
								<th class="col-xs-2">药品数量</th>
								<th class="col-xs-2">快递公司</th>
								<th class="col-xs-3">快递号</th>
								<th class="col-xs-2">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${indents }" var="indent">
								<tr>
									<td>${indent.medicineName }</td>
									<td>${indent.count }</td>
									<td>${indent.company }</td>
									<td>${indent.packagecode }</td>
									<td><a onclick="indentConfirm(${indent.medicineId })">确认收货</a></td>
								</tr>
							</c:forEach>
						
						</tbody>
					</table>
				</div>
					
			</div>
		</div>
	</div>
	
	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script >
	    var contextPath = "<%=request.getContextPath()%>";
		$(document).ready(function(){
			//allNav
			$("#leftBar").hide();
			$("#allNav").hover(function(){	
				$("#leftBar").show();
			},function(){	
				$("#leftBar").hide();
			})
			
			$(".centerLeftNav").click(function(){
				window.location.href = contextPath + "/customer/customerCenter";
			})
		})
		
		function indentConfirm(mId){
			var postData={	medicineId: mId };
	 		 $.ajax({
	 			 method:"POST",
	 			 url: contextPath + "/customer/indentConfirm",
	 			 contentType: "application/json",
	 			 data:JSON.stringify(postData),
	 			 dataType:"json",
	 		 	 crossDomain: true,
	 			 success: function(data){
	 				window.location.href = contextPath + "/customer/indentConfirm";
	 			},
	 			 error: function(){
	 				   alert("error.");
	 			}
	 		})
		}
		

		$("#indent").click(function(){
			$.removeCookie("customerLeftBar");
			$.cookie("customerLeftBar","0",{path: '/'});
		})
		$("#information").click(function(){
			$.removeCookie("customerLeftBar");
			$.cookie("customerLeftBar","1",{path: '/'});
		})
	</script>
	
</body>

</html>
