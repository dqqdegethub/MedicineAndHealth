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
    <title>客服平台</title>

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
    .detail0{
		margin-left:auto;
		margin-right:auto;
		margin-top:10px;
		width:1024px;
		height:350px;
		background-color:#f8fafc;
		margin-top:80px;
	}
	.detail1{
		margin-left:auto;
		margin-right:auto;
		margin-top:10px;
		width:1024px;
		height:220px;
		background-color:#f8fafc;
		margin-top:80px;
	}
	.detail2{
		margin-left:auto;
		margin-right:auto;
		margin-top:10px;
		width:1024px;
		height:450px;
		background-color:#f8fafc;
		margin-top:80px;
	}
	.b-header{
		margin-left:auto;
		margin-right:auto;
		width:1024px;
	}
    .background{
		background-attachment: fixed;
		background-repeat: no-repeat;
		background-size: cover;
		position: absolute;
		height: 700px;
		width: 100%;
		margin-top:30px;
		float:left;
		left: 0;
		top: 0;
		overflow: hidden;
		background-image:url("<%=request.getContextPath()%>/statics/images/csbackground.jpg");
    }
    </style>
</head>
<body>
	<%@include file="../element/header.jsp"%>
	<div class="background">
		<div class="b-header">
			<div style="float:left;margin-top:10px;">
				<div style="float:left;font-size:40px;color:#0c69ae;">药康网</div>
				<span style="float:left;width:1px;height:40px;background-color: rgb(141, 141, 141);margin-top:10px;"></span>
				<span style="font-size:25px;color:grey;margin-left:5px;line-height:70px;">客服中心</span>
			</div>
			<div style="float:left;width:1024px;height:2px;background-color:#0c69ae;margin-top:-13px;"></div>
		</div>
		<div id="detail0" class="detail0">
			<form class="form-horizontal" style="padding-top:20px">
				<div class="form-group" style="">
					<label class="col-xs-3 control-label" style="margin-left:-100px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>用户名：</label>
					<label class="col-xs-3 control-label" id="userName0" style="margin-left:-200px;line-height:32px"></label>
				</div>
				<div class="form-group" style="">
					<label class="col-xs-3 control-label" style="margin-left:-100px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>手机号：</label>
					<label class="col-xs-3 control-label" id="phonenumber0" style="margin-left:-160px;line-height:32px"></label>
				</div>
				<div class="form-group">
					<p><label class="col-xs-3 control-label" style="margin-left:-85px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>留言内容：</label></p>
					<div style="width:400px;height:90px;margin-left:90px;margin-top:50px;"><textarea class="form-control" id="problem0" type="text" placeholder="" style=""></textarea></div>
				</div>
				<div class="form-group" style="margin-left:90px;margin-top:-10px;">
					<div>
						<button class="btn btn-success" id="confirmBtn0" style="background-color:#0c69ae;margin-left:-14px;" type="button" ><span class="glyphicon glyphicon-ok">确认提交</span></button>
						<a href="<%=request.getContextPath()%>/home/homePage"  class=" btn btn-info" style="margin-left:5px;"><span class="glyphicon glyphicon-chevron-left">返回</span></a>
					</div>
				</div>
			</form>	
		</div>
		<div id="detail1" class="detail1">
			<form class="form-horizontal" style="padding-top:20px">
				<div class="form-group" style="">
					<label class="col-xs-3 control-label" style="margin-left:-100px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>用户名：</label>
					<label class="col-xs-3 control-label" id="userName1" style="margin-left:-200px;line-height:32px"></label>
				</div>
				<div class="form-group" style="">
					<label class="col-xs-3 control-label" style="margin-left:-100px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>手机号：</label>
					<label class="col-xs-3 control-label" id="phonenumber1" style="margin-left:-160px;line-height:32px"></label>
				</div>
				<div class="form-group">
					<label style="margin-left:90px;line-height:50px;">您的留言已收到，客服正在处理中，请您耐心等待。</label>
				</div>
				<div class="form-group" style="margin-left:70px;margin-top:-25px;">
					<div>
						<a href="<%=request.getContextPath()%>/home/homePage"  class=" btn btn-info" style="margin-left:5px;"><span class="glyphicon glyphicon-chevron-left">返回</span></a>
					</div>
				</div>
			</form>	
		</div>
		<div id="detail2" class="detail2">
			<form class="form-horizontal" style="padding-top:20px">
				<div class="form-group" style="">
					<label class="col-xs-3 control-label" style="margin-left:-100px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>用户名：</label>
					<label class="col-xs-3 control-label" id="userName2" style="margin-left:-200px;line-height:32px"></label>
				</div>
				<div class="form-group" style="">
					<label class="col-xs-3 control-label" style="margin-left:-100px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>手机号：</label>
					<label class="col-xs-3 control-label" id="phonenumber2" style="margin-left:-160px;line-height:32px"></label>
				</div> 
				<div class="form-group">
					<label class="col-xs-3 control-label" style="margin-left:-85px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>留言内容：</label>
					<label class="col-xs-3 control-label" id="message" style="margin-left:-160px;line-height:32px;"></label>
				</div>
				<div class="form-group">
					<label class="col-xs-3 control-label" style="margin-left:-114px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>回复：</label>
					<label class="col-xs-3 control-label" id="feedback" style="margin-left:-160px;line-height:32px;"></label>
				</div>
				<div class="form-group">
					<p><label class="col-xs-3 control-label" style="margin-left:-85px;"><span style="color:red;font-size:18px;margin-right:2px">*</span>追加留言：</label></p>
					<div style="width:400px;height:90px;margin-left:90px;margin-top:50px;"><textarea class="form-control" id="problem2" type="text" placeholder="" style=""></textarea></div>
				</div>
				<div class="form-group" style="margin-left:90px;margin-top:-10px;">
					<div>
						<button class="btn btn-success" id="confirmBtn2" style="background-color:#0c69ae;margin-left:-15px;" type="button" ><span class="glyphicon glyphicon-ok">确认提交</span></button>
						<a href="<%=request.getContextPath()%>/home/homePage"  class=" btn btn-info" style="margin-left:5px;"><span class="glyphicon glyphicon-chevron-left">返回</span></a>
					</div>
				</div>
			</form>	
		</div>
		<div class="footer" style="margin-top:20px;width:100%;text-align:center;verticle:middle;">
			<dl style="">
				<dd style="font-size:14px;line-height:50px">.
					Copyright©2018-2023 药康网（江苏）医药科技有限公司版权所有，并保留所有权利。互联网药品交易服务证：苏C20160006号
				</dd>
			</dl>
		</div>
	</div>
	
	

	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/jqthumb.js"></script>
    
    
	<script>
	var contextPath = "<%=request.getContextPath()%>";
	<!--searchBanner -->
	var str="<%=request.getContextPath()%>/home/drugSearch?seekword="
	     $("#searchBtn").click(function(){
	    	 if($("#searchtext").val()!=""){
	    		 location.href=encodeURI(encodeURI("<%=request.getContextPath()%>/home/drugSearch?seekword="+$("#searchtext").val()))
		 	 }
	    	 else{
	    		 location.href="<%=request.getContextPath()%>/home/drugSearch"
	    	 }
	     });
    <!--searchBanner -->
	if("${drugInformation.isRx}" != "Rx"){
		$(".Rximg").hide();
	}
	if("${drugInformation.isRx}" == "Rx"){
		$("#addCart").hide();
	}
	$("#leftBar").hide();
	$("#allNav").hover(function(){	
		$("#leftBar").show();
	},function(){	
		$("#leftBar").hide();
	})
	
	$(document).ready(function(){
		var postData={
			"step":0
		}
		$.ajax({
	 		"method" : "POST",
	 		"url" : contextPath + "/customer/customerService",
	 		"contentType" : "application/json",
	 		"data" : JSON.stringify(postData),
	 		"dataType" : "json",
	 		"crossDomain" : true,
	 		"success" : function(data){
	 			if(data.obj.status==0){
	 				$("#detail1").css("display","none"),
	 				$("#detail2").css("display","none"),
	 				$("#detail0").css("display",""),
	 				$("#userName0")[0].innerHTML=data.obj.customerName,
	 				$("#phonenumber0")[0].innerHTML=data.obj.phoneNumber
	 			}
	 			else if(data.obj.status==1){
	 				$("#detail0").css("display","none"),
	 				$("#detail2").css("display","none"),
	 				$("#detail1").css("display",""),
	 				$("#userName1")[0].innerHTML=data.obj.customerName,
	 				$("#phonenumber1")[0].innerHTML=data.obj.phoneNumber
	 			} 
	 			else if(data.obj.status==2){
	 				$("#detail0").css("display","none"),
	 				$("#detail1").css("display","none"),
	 				$("#detail2").css("display",""),
	 				$("#userName2")[0].innerHTML=data.obj.customerName,
	 				$("#phonenumber2")[0].innerHTML=data.obj.phoneNumber,
	 				$("#message")[0].innerHTML=data.obj.problem,
	 				$("#feedback")[0].innerHTML=data.obj.answer
	 			}
	 		},
	 		"error" : function(){
	 			alert("error!")
	 		}
	 	});
	})
	
	$("#confirmBtn0").click(function(){
		var postData={
			"problem":$("#problem0").val(),
			"step":1
		}
		$.ajax({
 			"method" : "POST",
 			"url" : contextPath + "/customer/customerService",
 			"contentType" : "application/json",
 			"data" : JSON.stringify(postData),
 			"dataType" : "json",
 			"crossDomain" : true,
 			"success" : function(data){
 				alert("提交成功!")
 			},
 			"error" : function(){
 				alert("error!")
 			}
 		});
	})
	$("#confirmBtn2").click(function(){
		var postData={
			"problem":$("#problem2").val(),
			"step":2
		}
		$.ajax({
 			"method" : "POST",
 			"url" : contextPath + "/customer/customerService",
 			"contentType" : "application/json",
 			"data" : JSON.stringify(postData),
 			"dataType" : "json",
 			"crossDomain" : true,
 			"success" : function(data){
 				alert("提交成功!")
 			},
 			"error" : function(){
 				alert("error!")
 			}
 		});
	})
	</script>
</body>
</html>