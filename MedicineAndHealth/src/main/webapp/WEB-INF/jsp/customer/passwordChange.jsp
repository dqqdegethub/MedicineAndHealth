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
    </style>
  </head>

  <body>
    <%@include file="../element/header.jsp"%>
	<div style="width: 1024px;margin:0 auto">
		<%@include file="../element/searchBanner.jsp"%>
		
		<div style="padding-top: 10px">
			<%@include file="../element/customerLeftBar.jsp"%>
			
			<div style="width: 80%;height:450px;background-color:#f3f3f3;float:left">
				<p style="font-size: 30px;margin: 20px 20px 20px">个人中心</p>
				
				<div style="margin-top:20px;margin-left:20px">
					<a href="<%=request.getContextPath() %>/home/homePage" style="cursor:pointer;">药康网</a>>><span>我的药康网</span>
					
					<form class="col-xs-offset-1 col-xs-11 form-horizontal" style="padding-top: 30px">
						<div class="form-group ">
							<label class="col-xs-3 control-label" >姓名：</label>
							<div class="col-xs-4">
								<input class="form-control" type="text" value="${customer.userName }" readonly/>
							</div>
						</div>
						<div class="form-group ">
							<label class="col-xs-3 control-label" >电话：</label>
							<div class="col-xs-4">
								<input class="form-control" type="text" value="${customer.phoneNumber }" readonly/>
							</div>
						</div>
						<div class="form-group ">
							<label class="col-xs-3 control-label" >原密码：</label>
							<div class="col-xs-4">
								<input class="form-control" id="oldPassword" type="password" required/>
							</div>
							<span id="warning1" style="line-height: 34px;color: red"></span>
						</div>
						<div class="form-group ">
							<label class="col-xs-3 control-label" >新密码：</label>
							<div class="col-xs-4">
								<input class="form-control" id="newPassword" type="password" required/>
							</div>
						</div>
						<div class="form-group ">
							<label class="col-xs-3 control-label" >确认密码：</label>
							<div class="col-xs-4">
								<input class="form-control" id="confirmPassword" type="password" required/>
							</div>
							<span id="warning2" style="line-height: 34px;color: red"></span>
						</div>
					</form>
					
					<div class="col-xs-12 " style="padding-top: 20px">
						<div class="col-xs-offset-5 col-xs-2">
							<button id="passwordChange" class="btn btn-info" type="button">确定</button>
						</div>
					</div>
				
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
		
		$("#passwordChange").click(function(){
			if($("#newPassword").val() != $("#confirmPassword").val()){
				$("#warning2")[0].innerHTML = "确认密码与新密码不一致";
				return;
			}
			
			var postData={	requestOldPassword: $("#oldPassword").val(),
							requestNewPassword: $("#newPassword").val()};
	 		$.ajax({
	 			method:"POST",
	 			url: contextPath + "/customer/passwordChange",
	 			contentType: "application/json",
	 			data:JSON.stringify(postData),
	 			dataType:"json",
	 		 	crossDomain: true,
	 			success: function(data){
	 				if(data.code == 1){
		 				window.location.href = contextPath + "/customer/passwordChange";
	 				}else{
	 					$("#warning2")[0].innerHTML = "";
	 					$("#warning1")[0].innerHTML = "原密码错误";
	 				}
	 			},
	 			error: function(){
	 			   alert("error.");
	 			}
	 		})
		})
		

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
