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
    <title>修改密码</title>

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
	<div class="staffmain">
		<div class="staffmainIn">
			<%@include file="../element/staffLeftBar.jsp"%>
			<div style="width:900px;float:left">
				<div style="width:100%;height:20px"></div>
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px">修改密码</span>
					<button class="btn" type="button" style="background-color:#45a9c9;color:white;width:80px;margin-left:600px">注销</button>
				</span>
				<div style="margin-top:20px;margin-left:20px" id="changePwd">
					<a id="skipto" style="cursor:pointer;">个人中心</a>>><span>账户管理>>修改密码</span>
					<div style="margin-top:20px;margin-left:70px;text-align:center;">
						<form class="form-horizontal" style="padding-top:50px">
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>当前密码：</label>
								<div class="col-xs-4"><input class="form-control" id="oldPassword" type="password" placeholder="请填写当前密码"></div>
								<div class="col-xs-3 warning-errmsg" id="errmsg-1"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>新密码：</label>
								<div class="col-xs-4"><input class="form-control" id="newPassword" type="password" placeholder="请填写新密码"></div>
								<div class="col-xs-3 warning-errmsg" id="errmsg-2"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>确认密码：</label>
								<div class="col-xs-4"><input class="form-control" id="confirmPassword" type="password" placeholder="请确认新密码"></div>
								<div class="col-xs-3 warning-errmsg" id="errmsg-3"></div>
							</div>
							<div class="form-group" style="padding-top:20px">
								<div class="col-xs-2 col-xs-offset-3"><a href=""><button class=" btn btn-info"><span class="glyphicon glyphicon-chevron-left">返回</span></button></a></div>
								<div class="col-xs-2"><button class="btn btn-success" id="confirmChangeBtn" type="button"><span class="glyphicon glyphicon-ok">确认修改</span></button></div>
							</div>
						</form>	
					</div>
				</div>
			</div>
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
	$(document).ready(function(){
		var imgpath=contextPath+"/statics/images/staff"+ $.cookie('staffId') +".png"
		$("#staffImg").attr('src',imgpath)
		$("#staffName")[0].innerHTML=$.cookie('staffName')
	})
	$("#account").click(function(){
		if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex"
	})
	$("#business").click(function(){
		if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex?i=1"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex?i=1"
	})
	$("#skipto").click(function(){
		if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex"
	})
	$("#confirmChangeBtn").click(function(){
		$("#errmsg-1").css("display","none");
		$("#errmsg-2").css("display","none");
		$("#errmsg-3").css("display","none");
		if($("#oldPassword").val()==""){
			$("#errmsg-1").css("display","");
			$("#errmsg-1")[0].innerHTML="";
			$("#errmsg-1")[0].innerHTML+="当前密码不能为空！"
			return;
		}
		if($("#newPassword").val()==""){
			$("#errmsg-2").css("display","");
			$("#errmsg-2")[0].innerHTML="";
			$("#errmsg-2")[0].innerHTML+="新密码不能为空！"
			return;
		}
		if($("#confirmPassword").val()==""){
			$("#errmsg-3").css("display","");
			$("#errmsg-3")[0].innerHTML="";
			$("#errmsg-3")[0].innerHTML+="确认密码不能为空！"
			return;
		}
		if($("#confirmPassword").val()!=$("#newPassword").val()){
			$("#errmsg-3").css("display","");
			$("#errmsg-3")[0].innerHTML="";
			$("#errmsg-3")[0].innerHTML+="新密码与确认密码不相同！"
			return;
		}
		var postData={
				"staffId":$.cookie('staffId'),
				"oldPwd":$("#oldPassword").val(),
				"newPwd":$("#newPassword").val()
		}
		$.ajax({
			method:"POST",
			url:contextPath+"/staff/changePassword",
			contentType: "application/json",
			data:JSON.stringify(postData),
			dataType:"json",
			crossDomain: true,
			success: function(data){
				if (data.code == 1) {
					location.href=contextPath+"/staff/staffLogin"
				} else{
					$("#stuchange-errmsg-1").css("display","");
					$("#stuchange-errmsg-1")[0].innerHTML="";
					$("#stuchange-errmsg-1")[0].innerHTML+="原密码错误！"
				}  
			  },
		  error: function(){
			    alert("更改失败.");
			  }
		})
	})
    </script>
</body>

</html>
