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
    <title>回复详情</title> 

    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/statics/css/index.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/statics/css/summernote.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/statics/css/bootstrap-select.css" rel="stylesheet">

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
	<div class="staffmain"><div style="width:100%;height:50px"></div>
		<div class="staffmainIn">
			<%@include file="../element/staffLeftBar.jsp"%>
			<div style="width:900px;float:left">
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px;margin-top:10px">回复详情</span>
					<%@include file="../element/staffLogout.jsp"%>
				</span>
				<div style="margin-top:20px;margin-left:20px" id="changePwd">
					<a id="skipto" style="cursor:pointer;">个人中心</a>>><span>业务管理>>回复客户>>回复详情</span>
					<div style="margin-top:20px;margin-left:10px;">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-xs-2 control-label">顾客名称：</label>
								<div class="col-xs-4">
									<input class="form-control" id="newsTitle" value="${message[0].customerName }" disabled="disabled" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-xs-2 control-label">问题：</label>
								<div class="col-xs-4">
									<input class="form-control" id="newsTitle" value="${message[0].problem }" disabled="disabled" />
								</div>
							</div>
		
							<div class="form-group">
								<label class="col-xs-2 control-label"><span class="necessary">*</span>回复：</label>
								<div class="col-xs-7">
									<div class="summernote" id="answerContent"></div>
								</div>
							</div>
		
							<div class="form-group" style="">
								<div class="col-xs-3"></div>
								<div class="col-xs-2">
									<button class="btn btn-success" type="reset"><span class="glyphicon glyphicon-remove"></span> 重置</button>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-info" type="button" id="messUpdate"><span class="glyphicon glyphicon-ok"></span>确定</button>
								</div>
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
    <script src="<%=request.getContextPath()%>/statics/js/summernote.min.js"></script>
    <script src="<%=request.getContextPath()%>/statics/js/summernote-zh-CN.js"></script>  
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap-select.js"></script>
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script type="text/javascript">
    $(document).ready(function(){
   	 $('.summernote').summernote({
   			lang:"zh-CN",
   			height:150
   		})
   	})
   	
   	$("#messUpdate").click(function(){
   		var customerId="${message[0].customerId }"
   		var postData={
   				"answer":$("#answerContent").summernote('code')
   		}
   		
   		$.ajax({
			method:"POST",
			url:contextPath+"/staff/responseMessage/"+customerId,
			contentType: "application/json",
			data:JSON.stringify(postData),
			dataType:"json",
			crossDomain: true,
			success: function(data){
				location.href=contextPath+"/staff/messageList";
			  },
		  	error: function(){
			    alert("回复失败！");
			  }
			})
   	})
    </script>
</body>

</html>
