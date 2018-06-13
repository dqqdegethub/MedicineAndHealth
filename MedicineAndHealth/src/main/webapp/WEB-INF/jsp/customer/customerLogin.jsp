<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta  charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
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
    </style>
  </head>

  <body> 
    <header>
<!--     <a>登录</a> |  -->
 <div style="float:right">
 		欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;    	
 </div>
   </header>
	<div style="margin:0 auto;min-width:1200px;width:1200px;margin:0 auto">
		<div style="height:120px;margin:35px 0 0 0">
			<div style="float:left;">
				<img src="<%=request.getContextPath()%>/statics/images/logo.png" style="width:150px;height:120px;" />
			</div>
			<div style="float:right;margin-top:50px;color:#999">
				新用户，
				<a href="<%=request.getContextPath() %>/customer/customerRegister" style="color:#4095d4;text-decoration: none;">快速注册</a>
			</div>
		</div>
	</div>
	<div style="background:#45a9c9;">
		<div class="container">
			<div style="float:left">
				<img src="<%=request.getContextPath()%>/statics/images/customerLogin.png" style="margin:10px 0 10px 10px;width:530px;height:490px"/>
			</div>
			<div style="float:right;width:380px;background:white;padding:25px 15px;margin:80px 0;">
				<div style="margin-bottom:20px;border-bottom:2px solid #0c69ae;">
					<span style="font-size:20px;line-height:50px">账户登录</span>
				</div>
				<div style="padding:0 20px">
					<dl>
						<dt style="height:45px;border:1px solid #cfcfcf;margin-bottom:25px;">
							<img src="<%=request.getContextPath()%>/statics/images/account.png" style="width:25px;float:left;margin-left:10px;margin-top:8px" />
							<input id="username" style="width:218px;float:left;height:40px;padding:0 10px;line-height:40px;border:none;outline:none;font-size:14px" placeholder="用户名/手机号/邮箱" type="text">
							<img id="reset-1" src="<%=request.getContextPath()%>/statics/images/reset.png" style="width:15px;float:right;margin-right:10px;margin-top:12px" />
						</dt>
					</dl>
					<dl>
						<dt style="height:45px;border:1px solid #cfcfcf;margin-bottom:25px;">
							<img src="<%=request.getContextPath()%>/statics/images/password.png" style="width:25px;float:left;margin-left:10px;margin-top:8px" />
							<input id="pwd" style="width:218px;float:left;height:40px;padding:0 10px;line-height:40px;border:none;outline:none;font-size:14px" placeholder="密码" type="password">
							<img id="reset-2" src="<%=request.getContextPath()%>/statics/images/reset.png" style="width:15px;float:right;margin-right:10px;margin-top:12px" />
						</dt>
					</dl>
					<p style="padding:5px 0">
						<a style="text-decoration:none;color:#5b5b5b;" href="<%=request.getContextPath()%>/customer/forgetPwd">忘记密码?</a>
					</p>
					<div>
						<input id="btn"  value="登录" type="button" style="margin-bottom:10px;background:#1d8bd7;text-align:center;color:#fff;height:40px;width:100%;margin-top:20px;font-size:18px;">
					</div>
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
    
    
    <script>
    $("#reset-1").click(function(){
    	$("#username").val("");
    })
    $("#reset-2").click(function(){
    	$("#pwd").val("");
    })
    
    $("#btn").click(function(){
    	//console.log(111)
    	postdata = {"userName" : $("#username").val(),
    				"password" : $("#pwd").val()	};
    	
    	$.ajax({
			"method" : "POST",
			"url" : contextPath + "/customer/customerLogin" ,
			"contentType" : "application/json",
			"data" : JSON.stringify(postdata),
			"dataType" : "json",
			"crossDomain" : true,
			"success" : function(data){
				if(data.code==1){
					var cname=data.obj.userName;
	 				$.removeCookie("id");
	 				$.removeCookie("userName");
	 				$.cookie("login","0",{path: '/'});
	 				console.log(cname);
	 				$.cookie("login","1",{path: '/'});
					$.cookie("id",data.obj.id,{path:"/"})
					$.cookie("userName",data.obj.userName,{path:"/"})
					//$()
					window.document.location.href=contextPath+"/customer/homepage"
					//window.document.location.href=contextPath+"/customer/success"
				}
				else if(data.code==0){
					alert("用户名或密码错误！请重新登录。")
					//window.document.location.href=contextPath+"/customer/fail"
					
				}							
			},
			"error" : function(){
				alert("errored.");
			} 
		});
    })
    </script>

	
</body>

</html>
