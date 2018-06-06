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
    <title>采购详情</title>
    
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
	<div class="staffmain"><div style="width:100%;height:50px"></div>
		<div class="staffmainIn">
			<%@include file="../element/staffLeftBar.jsp"%>
			<div style="width:900px;float:left">
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px;margin-top:10px">采购确认</span>
					<%@include file="../element/staffLogout.jsp"%>
				</span>
				<div style="margin-top:20px;margin-left:20px" id="changePwd">
					<a id="skipto" style="cursor:pointer;">个人中心</a>>><span>业务管理>>
					<a style="cursor:pointer;" href="<%=request.getContextPath()%>/staff/ensurePurchase">采购管理</a>>>采购确认</span>
					<div style="margin-top:20px;margin-left:70px;text-align:center;">
						<form class="form-horizontal" style="padding-top:20px">
							<div class="form-group" style="">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>员工姓名：</label>
								<label class="col-xs-3 control-label" style="margin-left:-80px;line-height:32px">${purchaseInfo[0].staffName }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>药品名称：</label>
								<label class="col-xs-3 control-label" style="margin-left:10px;line-height:32px">${purchaseInfo[0].medicineName }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>生产厂家：</label>
								<label class="col-xs-3 control-label" style="margin-left:-20px;line-height:32px">${purchaseInfo[0].producer }</label>
							</div>
							<div class="form-group">
								<label class="col-xs-3 control-label"><span style="color:red;font-size:18px;margin-right:2px">*</span>采购数量：</label>
								<div class="col-xs-4"><input class="form-control" id="quantity" type="text" placeholder=""></div>
								<div class="col-xs-3 warning-errmsg" id="msg-2"></div>
							</div>
							<div class="form-group" style="padding-top:20px">
								<div class="col-xs-2 col-xs-offset-3"><a href="<%=request.getContextPath()%>/staff/buyerStaffIndex"><button class=" btn btn-info"><span class="glyphicon glyphicon-chevron-left">返回</span></button></a></div>
								<div class="col-xs-2"><button class="btn btn-success" id="confirmBtn" type="button"><span class="glyphicon glyphicon-ok">确认修改</span></button></div>
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
    var medicineId="${medicineId}"
    var staffId="${staffId}"
    var date = new Date();
    var year = date.getFullYear(); //获取年   
    var month = date.getMonth()+1;//获取月
    var day = date.getDate(); //获取当日
    if(month<10 || day<10){
    	month="0"+month;
    	day="0"+day;
    }
    var time = year+month+day; //组合时间  
    
	$("#confirmBtn").click(function(){
		var postData={
			"staffId":$.cookie("staffId"),
			"date":time,
			"medicineId":medicineId,
			"quantity":$("#quantity").val()
		}
		$.ajax({
 			"method" : "POST",
 			"url" : contextPath + "/staff/purchaseDetails/" + medicineId,
 			"contentType" : "application/json",
 			"data" : JSON.stringify(postData),
 			"dataType" : "json",
 			"crossDomain" : true,
 			"success" : function(data){
 				if(data.code==1){
					location.href=contextPath+"/staff/ensurePurchase"
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