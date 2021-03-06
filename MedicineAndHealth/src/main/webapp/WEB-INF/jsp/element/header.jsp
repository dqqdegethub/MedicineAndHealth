<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<style>
	.head span img{
		width:25px;
		height:25px;
		padding-bottom:5px;
	}
   </style>

 	<div class="head" id="note">
      
	 	<div class="pull-right">
	 		欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;
    		<a href="<%=request.getContextPath() %>/customer/customerLogin"><span>请登录&emsp;</span></a>
    		<a href="<%=request.getContextPath() %>/customer/customerRegister" target="_blank"><span>注册&emsp;</span></a>
    		<span><img src="<%=request.getContextPath()%>/statics/images/cart.png" /><a href="<%=request.getContextPath() %>/customer/cartPage">需求清单</a></span>
    		
	 	</div>
	 	
    </div>
	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    		
    <script type="text/javascript">
    <!--返回父页面时自动刷新 刷新cookie内容 -->
    window.onunload=function(){
    	parent.location.reload();
    }
    
    $(document).ready(function(){
    <!--已登录-->
    	if($.cookie('userName')!=null){
    		$("#note")[0].innerHTML="<div style=\"float:right\"><a href=\"" + contextPath + "/customer/customerCenter\">" + $.cookie('userName')+"</a>，欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;" +
    									"<button id=\"exitLogin\">退出登录</button><span><img src=\""+ contextPath +"/statics/images/cart.png\" style=\"width:25px;height:25px;padding-bottom:5px\"/><a href=\""+contextPath+"/customer/cartPage\">需求清单</a></span></div>";   									   		
    	}   
   
    <!--退出登录-->
    $("#exitLogin").click(function(){
    	var postdata={};
    	$.ajax({
    		"type":"POST",
    		"url":contextPath+"/customer/customerLogout",
    		"contentType":"application/json",
    		"data":JSON.stringify(postdata),
    		"dataType" : "json",
    		"crossDomain":true,
    		"success":function(){   			
    			//成功退出登录
    			//parent.location.reload();  
    			//console.log("123");
    			//console.log($.cookie('userName'));
    	    	$.removeCookie("id",{path:"/"});
    			$.removeCookie("userName",{path:"/"});
    			var username=$.cookie('userName');
    	    	//$.cookie('userName', '', { expires: -1 });
    	     	//console.log($.cookie('userName'));
    	    if($.cookie('userName')==null){
    	    	$("#note")[0].innerHTML="<div style=\"float:right\">"+
		 		"欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;"+
		    	"<a href=\""+contextPath+"/customer/customerLogin\"><span>请登录&nbsp;</span> </a>"+
		    	"<a href=\""+contextPath+"/customer/customerRegister\"><span>注册</span> </a>" +
		    	"<span><img src=\""+contextPath+"/statics/images/cart.png\" style=\"width:25px;height:25px;padding-bottom:5px\"/><a href=\""+contextPath+"/customer/cartPage\">需求清单</a></span>" + 
		    "</div>";  
			location.href=contextPath+"/home/homePage";  	 
    	    //	parent.location.reload();  
    	    	
    	    }
    	    else{
    	    	console.log("移除cookie失败")
    	    }   	    	
    	},
     	"error":function(){
    		alert("error");
    	},
    	});		
    	});
    });
    </script>

