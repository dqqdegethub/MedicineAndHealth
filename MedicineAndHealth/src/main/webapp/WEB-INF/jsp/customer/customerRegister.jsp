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

<title>用户注册</title>
</head>
<body>
	<header>
 		<div style="float:right">
 			欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;    	
 		</div>
   </header>
   <div>
	   <div style="height:150px;width:1200px">
	      <div style="float:left;margin-left:70px;margin-top:30px">
	      	<img src="<%=request.getContextPath()%>/statics/images/logo.png" style="width:150px;height:120px;" />			
	      </div>
	      <div style="float:right;margin-right:40px;margin-top:70px">
	      		我已注册，<a href="<%=request.getContextPath() %>/customer/customerLogin" style="color:#4095d4">立即登录</a></h3>
	      </div>
	   </div>
   </div>
   
   		<div class="container" style="background:#ecf5ff;width:1200px">
   			<div class="register" style="margin-top:0">
   				<div style="text-align:center">
   					<form action="" method="post" id="register">
   						 <h1><span>新用户注册</span></h1>
				          <p>
				             <label for="username">用户名：</label>
				             <!-- id和name最好同时写上 -->
				             <input id="username" name="username" type="text"  placeholder="请输入用户名" />
				         </p>         
				         <p>
				             <label for="password">登陆密码：</label>
				             <input id="password" name="password" type="password" placeholder="请输入密码" />
				         </p>
				         <p>
				             <label for="confirm_password">确认密码：</label>
				             <input id="confirm_password" name="confirm_password" type="password" placeholder="请确认密码" />
				         </p>
				          <p>
				             <label for="realname">真实姓名：</label>
				             <input id="realname" name="realname" type="text" placeholder="请输入真实姓名" />
				         </p>
				         <p>
				             <label for="phonenumber">电话号码：</label>
				             <input id="phonenumber" name="phonenumber" type="text" placeholder="请输入电话号码" />
				         </p>
				         <p>
				             <label for="address">配送地址：</label>
				             <input id="address" name="address" type="text" placeholder="请输入真实的配送地址" />
				         </p>
				         <p> 设置密保问题：你的幸运数字是？</p>
						<p>
				             <label for="answer">答案：</label>
				             <input id="answer" name="answer" type="text" placeholder="请输入密保答案" />
				         </p>
						 <p>
				             <input type="submit" value="立即注册" />                      
                    		 <button id="reset">重置</button>
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
	    	    	 required:"请输入用户名",
	    	    	 minlength:"用户名必须只少由3个字母组成"
	    	      },    	      
	    	      password: {
	    	        required: "请输入密码",
	    	        minlength: "密码长度不能小于 6 个字母",
	    	        maxlength:"密码长度不能超过12位"
	    	        
	    	      },
	    	      confirm_password: {
	    	    	required: "请输入密码",
	      	        minlength: "密码长度不能小于 6 个字母",
	      	        maxlength:"密码长度不能超过12位",
	    	        equalTo: "两次密码输入不一致"
	    	      },
	    	      realname:{
	    	    	  required:"请输入真实姓名",
	    	    	  minlength:"最小长度为2"
	    	      },
	    	      phonenumber:{
	    	    	  required:"请输入正确的电话号码",
	    	    	  digits:"输入的电话号码非法",
	    	    	  rangelength:"输入的电话号码非法"
	    	      },
	    	      address:{
	    	    	  required:"请输入真实的配送地址"
	    	      },
	    	      answer:{
	    	    	  requried:"请输入密保答案"
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
		
	})
    </script>  
    

    

</body>
</html>