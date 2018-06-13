<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
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
	.register h1{
		border-bottom: 2px solid #ccc;
		height:30px;
		text-align:left;
		margin-top:50px;
		margin-left:80px;
		padding: 0 30px;
		font-weight: normal;
		line-height:30px;
	}
	.register p{
		text-align:left;
		line-height:60px;
		fint-size:14px;
 		margin-left:160px; 
	}
	.register input{
		width:380px;
		height:40px;
	}
	.register label{
		color:#5b5b5b;
		font-weight:normal;
	}
	label.error{
		color:red;
		margin-left:20px;
	}
    </style>

<title>用户注册</title>
</head>
<body>
	<header>
 		<div style="float:right">
 			欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;    	
 		</div>
   </header>
   <div>
	   <div style="height:150px;width:1200px;margin-left:90px;">
	      <div style="float:left;margin-left:70px;margin-top:30px">
	      	<img src="<%=request.getContextPath()%>/statics/images/logo.png" style="width:150px;height:120px;" />			
	      </div>
	      <div style="float:right;margin-right:-70px;margin-top:70px">
	      		我已注册，<a href="<%=request.getContextPath() %>/customer/customerLogin" style="color:#4095d4">立即登录</a></h3>
	      </div>
	   </div>
   </div>
   
   		<div class="container" style="background:#f8fcff;;width:1200px;border: 1px solid #acd4f1;">
   			<div class="register" style="margin-top:0">
   				<div style="text-align:center">
   					<form action="" method="post" id="register">
   						 <h1><span style="border-bottom: 2px solid #0c69ae;color:#0c69ae;font-size:18px;display: inline-block;">新用户注册</span></h1>
				          <p style="margin-left:173px;margin-top:30px;">
				             <label for="username">用户名：</label>
				             <!-- id和name最好同时写上 -->
				             <input id="username" name="username" type="text"  placeholder="请输入您的用户名，3-15位字符"/>
				         </p>         
				         <p>
				             <label for="password">登录密码：</label>
				             <input id="password" name="password" type="password" placeholder="6-12位字符，可使用字母，数字" />
				         </p>
				         <p>
				             <label for="confirm_password">确认密码：</label>
				             <input id="confirm_password" name="confirm_password" type="password" placeholder="请再次输入密码" />
				         </p>
				          <p>
				             <label for="realname">真实姓名：</label>
				             <input id="realname" name="realname" type="text" placeholder="请输入您的真实姓名" />
				         </p>
				         <p>
				             <label for="phonenumber">电话号码：</label>
				             <input id="phonenumber" name="phonenumber" type="text" placeholder="请输入正确的电话号码" />
				         </p>
				         <p>
				             <label for="address">配送地址：</label>
				             <input id="address" name="address" type="text" placeholder="请输入您的配送地址" />
				         </p>
				         <p style="color:#5b5b5b;font-weight:normal;"> 设置密保问题：你的幸运数字是？</p>
						<p style="margin-left:188px;">
				             <label for="answer">答案：</label>
				             <input id="answer" name="answer" type="text" placeholder="请输入您的密保答案" />
				         </p>
						 <p style="margin-left:233px;line-height:30px;margin-top:30px;">
				             <input type="submit" value="立即注册" style="background: #1d8bd7;color:#fff;width:300px;height:40px;font-size:18px;"/>                      
                    		 <button id="reset" style="height:40px;width:50px;background:white;border:0px;color:grey;">重置</button>
                    	 </p> 
   					</form>
   				</div>
   			
   			</div>
   		</div>

	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>      
   	<script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/js-validation/jquery.validate.min.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/js-validation/messages_zh.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/js-validation/jquery.form.js"></script>
	
     <script type="text/javascript">     
     $.validator.setDefaults({
    	    submitHandler: function() {
    	      alert("注册成功！立刻去登录？");
    	      postdata = {"userName" : $("#username").val(),
      				"password" : $("#password").val(),
      				"realName":$("#realname").val(),
      				"phoneNumber":$("#phonenumber").val(),
      				"address":$("#address").val(),				
      				"answer":$("#answer").val()
    	      };
      	
      	$.ajax({
  			"method" : "POST",
  			"url" : contextPath + "/customer/customerRegister" ,
  			"contentType" : "application/json",
  			"data" : JSON.stringify(postdata),
  			"dataType" : "json",
  			"crossDomain" : true,
  			"success" : function(data){
  				if(data.code==1){
  					var cname=data.obj.name;
  					//console.log(cname)
  					//$.cookie("customerId",data.obj.id,{path:"/"})
  					//$.cookie("customerName",data.obj.name,{path:"/"})
  					window.document.location.href=contextPath+"/customer/customerLogin"
  					//window.document.location.href=contextPath+"/customer/success"
  				}
  				else{
  					alert("用户名或密码错误！请重新登录。")
  					//window.document.location.href=contextPath+"/customer/fail"
  					
  				}
  				
  				//alert(data.obj.uesrname);
  			},
  			"error" : function(){
  				alert("errored.");
  			} 
  		});
    	    }
    	});
     $().ready(function() {
    	// 在键盘按下并释放及提交后验证提交表单
	     $("#register").validate({	    	 
	    	    rules: {
	    	      username: {
	    	    	  required:true,
	    	    	  minlength:3,
	    	    	 maxlength:15
	    	    	 },   	     
	    	      password: {
	    	        required: true,
	    	        minlength:6,
	    	        maxlength:12
	    	      },
	    	      confirm_password: {
	    	        required: true,
	    	        minlength: 6,
	    	        maxlength:12,
	    	        equalTo: "#password"
	    	      },
	    	      realname:{
	    	    	  required:true,
	    	    	  minlength:2
	    	      },
	    	      phonenumber:{
	    	    	  required:true,
	    	    	  digits:true,
	    	    	  rangelength:[11,11]
	    	      },
	    	      address:{
	    	    	  required:true
	    	      },
	    	      answer:{
	    	    	  required:true
	    	      }
	    	      
	    	    },
	    	    messages: {
	    	      username: {
	    	    	 required:"",
	    	    	 minlength:"用户名格式不正确！"
	    	      },    	      
	    	      password: {
	    	        required: "",
	    	        minlength: "密码长度不能小于 6 个字母！",
	    	        maxlength:"密码长度不能超过12位！"
	    	        
	    	      },
	    	      confirm_password: {
	    	    	required: "",
	      	        minlength: "密码长度不能小于 6 个字母！",
	      	        maxlength:"密码长度不能超过12位！",
	    	        equalTo: "您两次输入的密码不一致！"
	    	      },
	    	      realname:{
	    	    	  required:"",
	    	    	  minlength:"最小长度为2！"
	    	      },
	    	      phonenumber:{
	    	    	  required:"",
	    	    	  digits:"输入的电话号码非法！",
	    	    	  rangelength:"输入的电话号码非法！"
	    	      },
	    	      address:{
	    	    	  required:""
	    	      },
	    	      answer:{
	    	    	  requried:""
	    	      }
	    	     }
	    	    });
     });
	
     </script>
     <script type="text/javascript">
	$("#reset").click(function(){		
		$("#username").val('');
		$("#password").val('');
		$("#confirm_password").val('');
		$("#realname").val('');
		$("#phonenumber").val('');
		$("#address").val('');
		$("#answer").val('');
	})
    </script>  
    

    

</body>
</html>