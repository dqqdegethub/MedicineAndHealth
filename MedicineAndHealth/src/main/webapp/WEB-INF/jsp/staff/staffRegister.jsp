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
    <title>注册</title>

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
    .container{
    	width:1200px;
    	margin:0 auto;
    }
	.container::after {
	    clear: both;
	    content: '.';
	    display: block;
	    height: 0;
	    line-height: 0;
	    overflow: hidden;
	}
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
	<div style="margin:0 auto;min-width:1200px;width:1200px;margin:0 auto">
		<div style="height:120px;margin:35px 0 0 0">
			<div style="float:left;">
				<img src="<%=request.getContextPath()%>/statics/images/logo.png" style="width:150px;height:120px;" />
			</div>
			<div style="float:right;margin-top:60px;color:#999">
				老员工，
				<a style="color:#4095d4;text-decoration: none;" href="<%=request.getContextPath()%>/staff/staffLogin">快速登录</a>
			</div>
		</div>
	</div>
	<div style="background:#45a9c9;">
		<div class="container">
			<div style="float:left;margin-left:-50px;margin-top:50px">
				<img src="<%=request.getContextPath()%>/statics/images/staffLogin.png" style="margin:25px 0 10px 10px;width:530px;height:490px"/>
			</div>
			<div style="float:right;width:550px;background:white;padding:20px 15px;margin:30px 0;min-height:337px" id="totalContent">
				<div style="margin-bottom:20px;border-bottom:2px solid #0c69ae;">
					<span style="font-size:20px;line-height:50px;height:50px;">账户注册</span>
				</div>
				<div style="" id="content">
					<form class="form-horizontal" style="padding-top:10px">
							<div class="form-group">
								<label class="col-xs-3 control-label">工作证号：</label>
								<label class="col-xs-1 control-label" id="staffId">${staffId+1 }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>真实姓名：</label>
								<div class="col-xs-5"><input class="form-control" id="realName" type="text" placeholder="请填写真实姓名"></div>
								<div class="col-xs-4 warning-errmsg" id="errmsg-1"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>账号密码：</label>
								<div class="col-xs-5"><input class="form-control" id="password" type="password" placeholder="请填写账号密码"></div>
								<div class="col-xs-4 warning-errmsg" id="errmsg-2"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>确认密码：</label>
								<div class="col-xs-5"><input class="form-control" id="confirmPassword" type="password" placeholder="请填写账号密码"></div>
								<div class="col-xs-4 warning-errmsg" id="errmsg-6"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>手机号码：</label>
								<div class="col-xs-5"><input class="form-control" id="phoneNumber" type="text" placeholder="请填写手机号码"></div>
								<div class="col-xs-4 warning-errmsg" id="errmsg-3"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>所属部门：</label>
								<div class="col-xs-5">
									<select class="form-control " id="selectPart" >
										<option value="-1">请选择</option>
										<option value="1">客服部</option>
										<option value="0">采购部</option>
									</select>
								</div>
								<div class="col-xs-4 warning-errmsg" id="msg-4"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>密保问题：</label>
								<div class="col-xs-5">
									<select class="form-control " id="selectProblem" >
										<option value="-1">请选择</option>
										<option value="0">我最喜欢的明星是？</option>
										<option value="1">我最喜欢的文学角色是？</option>
										<option value="2">我最喜欢的动漫是？</option>
										<option value="3">我最喜欢的电影是？</option>
										<option value="4">我最喜欢的歌是？</option>
									</select>
								</div>
								<div class="col-xs-4 warning-errmsg" id="errmsg-7"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"></label>
								<div class="col-xs-5"><input class="form-control" id="answer" type="text" placeholder="请填写答案"></div>
								<div class="col-xs-4 warning-errmsg" id="errmsg-5"></div>
							</div>
							<div class="form-group" style="padding-top:20px">
								<div class="col-xs-3 col-xs-offset-3"><a href="<%=request.getContextPath()%>/staff/staffLogin"><button class=" btn btn-info"><span class="glyphicon glyphicon-chevron-left">取消注册</span></button></a></div>
								<div class="col-xs-2"><button class="btn btn-success" id="confirmBtn" type="button"><span class="glyphicon glyphicon-ok">确认注册</span></button></div>
							</div>
						</form>	
				</div>
				<div id="result" style="text-align:center;font-size:20px;display:none">
					<span class="glyphicon glyphicon-ok" style="color:green;font-size:20px;margin-top:100px"></span>注册成功<br/><br/>
					<span style="margin-left:330px;font-size:14px"><a href="<%=request.getContextPath()%>/staff/staffLogin">->点我立即登录</a></span>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" style="margin-top:50px;width:100%;text-align:center;verticle:middle;">
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
		$("#confirmBtn").click(function(){
			$("div[id^='errmsg-']").each(function(){
				$(this).css("display","none");
			})
			if($("#realName").val()==""){
				$("#errmsg-1")[0].innerHTML="";
				$("#errmsg-1").css("display","");
				$("#errmsg-1")[0].innerHTML+="姓名不能为空！"
			}
			if($("#password").val()==""){
				$("#errmsg-2")[0].innerHTML="";
				$("#errmsg-2").css("display","");
				$("#errmsg-2")[0].innerHTML+="密码不能为空！"
			}
			if($("#confirmPassword").val()==""){
				$("#errmsg-6")[0].innerHTML="";
				$("#errmsg-6").css("display","");
				$("#errmsg-6")[0].innerHTML+="确认密码不能为空！"
			}
			if($("#password").val()!=$("#confirmPassword").val()){
				$("#errmsg-6")[0].innerHTML="";
				$("#errmsg-6").css("display","");
				$("#errmsg-6")[0].innerHTML+="两次密码不相同！"
			}
			if($("#phoneNumber").val()==""){
				$("#errmsg-1")[0].innerHTML="";
				$("#errmsg-1").css("display","");
				$("#errmsg-1")[0].innerHTML+="手机号码不能为空！"
			}
			if($("#selectPart").val()=="-1"){
				$("#errmsg-1")[0].innerHTML="";
				$("#errmsg-1").css("display","");
				$("#errmsg-1")[0].innerHTML+="请选择一个部门！"
			}
			if($("#selectProblem").val()=="-1"){
				$("#errmsg-7")[0].innerHTML="";
				$("#errmsg-7").css("display","");
				$("#errmsg-7")[0].innerHTML+="请选择一个问题！"
			}
			if($("#answer").val()==""){
				$("#errmsg-5")[0].innerHTML="";
				$("#errmsg-5").css("display","");
				$("#errmsg-5")[0].innerHTML+="回答不能为空！"
			}
			var postData={
				"staffId":$("#staffId")[0].innerHTML,
				"staffName":$("#realName").val(),
				"partment":$("#selectPart option:selected").text(),
				"password":$("#password").val(),
				"phoneNumber":$("#phoneNumber").val(),
				"problem":$("#selectProblem option:selected").text(),
				"answer":$("#answer").val()
			}
			$.ajax({
				method:"POST",
				url:contextPath+"/staff/staffRegister",
				contentType: "application/json",
				data:JSON.stringify(postData),
				dataType:"json",
				crossDomain: true,
				success: function(data){
					if (data.code == 1) {
						$("#content").css("display","none")
						$("#totalContent").css("margin","80px 0")
						$("#result").css("display","")
				  }},
			  error: function(){
				    alert("注册失败.");
				  }
			})
		})
    </script>
</body>

</html>
