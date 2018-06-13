<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>订单详情</title>
   
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
	<div class="staffmain"><div style="width:100%;height:50px"></div>
		<div class="staffmainIn">
			<%@include file="../element/staffLeftBar.jsp"%>
			<div style="width:900px;float:left">
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px;margin-top:10px">确认订单</span>
					<%@include file="../element/staffLogout.jsp"%>
				</span>
				<div style="margin-top:20px;margin-left:20px" id="changePwd">
					<a id="skipto" style="cursor:pointer;">个人中心</a>>><span>业务管理>>
					<a style="cursor:pointer;" href="<%=request.getContextPath()%>/staff/ensureOrder">订单管理</a>>>确认订单</span>
					<div style="margin-top:20px;margin-left:70px;text-align:center;">
						<form class="form-horizontal" style="padding-top:20px">
							<div class="form-group" style="">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>顾客姓名：</label>
								<label class="col-xs-3 control-label" style="margin-left:-80px;line-height:32px">${order[0].customerName }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>药品名称：</label>
								<label class="col-xs-3 control-label" style="margin-left:-40px;line-height:32px">${order[0].medicineName }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>药品数量：</label>
								<label class="col-xs-2 control-label" style="margin-left:-40px;">${order[0].count }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>快递公司：</label>
								<div class="col-xs-4">
									<select class="form-control " id="company" >
										<option value="-1">请选择</option>
										<option value="1">圆通</option>
										<option value="2">韵达</option>
										<option value="3">汇通</option>
										<option value="4">顺丰</option>
									</select>
								</div>
								<div class="col-xs-3 warning-errmsg" id="msg-1"></div>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>快递编号：</label>
								<div class="col-xs-4"><input class="form-control" id="packageCode" type="text" placeholder=""></div>
								<div class="col-xs-3 warning-errmsg" id="msg-2"></div>
							</div>
							<div class="form-group" style="padding-top:20px">
								<div class="col-xs-2 col-xs-offset-3"><a href="<%=request.getContextPath()%>/staff/buyerStaffIndex"><button class=" btn btn-info"><span class="glyphicon glyphicon-chevron-left">返回</span></button></a></div>
								<div class="col-xs-2"><button class="btn btn-success" id="confirmBtn" type="button"><span class="glyphicon glyphicon-ok">确认订单</span></button></div>
							</div>
						</form>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer" style="margin-top:20px;width:100%;text-align:center;verticle:middle;">
			<dl style="">
				<dd style="font-size:14px;line-height:50px">
					Copyright©2018-2023 药康网（江苏）医药科技有限公司版权所有，并保留所有权利。互联网药品交易服务证：苏C20160006号
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
    var medicineId="${medicineId }"
    var customerId="${order[0].customerId}"
    var count="${order[0].count }"
    $("#account").removeClass("showBar");
	$("#account").addClass("unshowBar");
	$("#business").removeClass("unshowBar");
	$("#business").addClass("showBar");
	var bpath=contextPath+"/statics/images/staffIndexicon3.png"
	var apath=contextPath+"/statics/images/staffIndexicon2.png"
	$("#apath").attr('src',apath)
	$("#bpath").attr('src',bpath)
    
    $("#skipto").click(function(){
    	if($.cookie('partment')=='客服部'){
     		location.href=contextPath+"/staff/supportStaffIndex"
     	}
     	else location.href=contextPath+"/staff/buyerStaffIndex"
    })
	$("#company").change(function(){
		if($("#company").val()=="-1"){
			return;
		}
		var postData={
			"step":1,
			"companyId":$("#company").val()
		}
		$.ajax({
 			"method" : "POST",
 			"url" : contextPath + "/staff/orderDetails/" + medicineId,
 			"contentType" : "application/json",
 			"data" : JSON.stringify(postData),
 			"dataType" : "json",
 			"crossDomain" : true,
 			"success" : function(data){
 				if(data.code==1){
					$("#packageCode").val(data.obj)
	 			}
 			},
 			"error" : function(){
 				alert("search error!")
 			}
 		});
	})
	
	$("#confirmBtn").click(function(){
		var postData={
			"step":2,
			"staffId":$.cookie("staffId"),
			"medicineId":medicineId,
			"customerId":customerId,
			"companyId":$("#company").val(),
			"code":$("#packageCode").val(),
			"count":count
		}
		$.ajax({
 			"method" : "POST",
 			"url" : contextPath + "/staff/orderDetails/" + medicineId,
 			"contentType" : "application/json",
 			"data" : JSON.stringify(postData),
 			"dataType" : "json",
 			"crossDomain" : true,
 			"success" : function(data){
 				if(data.code==1){
					location.href=contextPath+"/staff/ensureOrder"
	 			}
 			},
 			"error" : function(){
 				alert("search error!")
 			}
 		});
	})
    </script>
</body>

</html>
