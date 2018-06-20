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
    <title>修改个人信息</title>

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
		<div style="opacity:1;height:50px"></div>
		<div class="staffmainIn">
			<%@include file="../element/staffLeftBar.jsp"%>
			<div style="width:900px;float:left">
				<div style="width:100%;height:20px"></div>
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px">修改个人信息</span>
					<%@include file="../element/staffLogout.jsp"%>
				</span>
				<div style="margin-top:20px;margin-left:20px" id="changePwd">
					<a onclick="skipto()" style="cursor:pointer;">个人中心</a>>><span>账户管理>>修改个人信息</span>
					<div style="margin-top:60px;margin-left:50px;text-align:center;" id="modifiedPage">
						<form class="form-horizontal">
				 			<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>工作证号：</label>
								<label class="col-xs-1 control-label">${staff.staffId }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>姓名：</label>
								<label class="col-xs-2 control-label" style="margin-left:-40px">${staff.staffName }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>部门：</label>
								<div class="col-xs-4">
									<select class="form-control " id="modifiedPart" >
										<option value="-1">请选择</option>
										<option value="1">客服部</option>
										<option value="0">采购部</option>
									</select>
								</div>
								<div class="col-xs-3 warning-errmsg" id="msg-1"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>手机号码：</label>
								<div class="col-xs-4"><input class="form-control" id="phoneNum" type="text" value="${staff.phoneNumber }"></div>
								<div class="col-xs-3 warning-errmsg" id="msg-2"></div>
							</div>
							<div class="form-group" style="padding-top:20px">
								<div class="col-xs-2 col-xs-offset-3"><button class="btn btn-info" id="backBtn" type="button"><span class="glyphicon glyphicon-chevron-left">返回</span></button></div>
								<div class="col-xs-2"><button class="btn btn-success" id="confirmChangeBtn" type="button"><span class="glyphicon glyphicon-ok">确认修改</span></button></div>
							</div>
				    	</form>
					</div>
					<div id="resultPage" style="margin-left:350px;margin-top:150px;display:none">
						<span class="glyphicon glyphicon-ok" style="color:green;font-size:16px"></span>修改成功
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
	function skipto(){
		if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex"
	}
	$("#confirmChangeBtn").click(function(){
		$("#msg-1").css("display","none");
		$("#msg-2").css("display","none");
		if($("#modifiedPart").val()=="-1"){
			$("#msg-1")[0].innerHTML="";
			$("#msg-1").css("display","");
			$("#msg-1")[0].innerHTML+="请选择您的部门！"
			return;
		}
		if($("#phoneNum").val()==""){
			$("#msg-2").css("display","");
			$("#msg-2")[0].innerHTML="";
			$("#rmsg-2")[0].innerHTML+="手机号码不能为空！"
			return;
		}
		if($("#phoneNum").val().length!=11){
			$("#msg-2").css("display","");
			$("#msg-2")[0].innerHTML="";
			$("#rmsg-2")[0].innerHTML+="请填写正确格式的手机号码！"
			return;
		}
		var Depart=$("#modifiedPart option:selected").text()
		var postData={
				"staffId":$.cookie('staffId'),
				"partment":Depart,
				"phoneNumber":$("#phoneNum").val()
		}
		$.ajax({
			method:"POST",
			url:contextPath+"/staff/personalInformation",
			contentType: "application/json",
			data:JSON.stringify(postData),
			dataType:"json",
			crossDomain: true,
			success: function(data){
				if (data.code == 1) {
					$.removeCookie("partment");
					$.cookie("partment",Depart,{path: '/'});
					$("#modifiedPage").css("display","none");
					$("#resultPage").css("display","");
			  }},
		  error: function(){
			    alert("更改失败.");
			  }
		})
	})
	$("#backBtn").click(function(){
    	if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex"
    })
    </script>
</body>

</html>
