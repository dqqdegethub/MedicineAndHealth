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
    <title>库存查询</title>

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
					<span style="float:left;font-size:30px;margin-left:20px;margin-top:10px">库存查询</span>
					<%@include file="../element/staffLogout.jsp"%>
				</span>
				<div style="margin-top:15px;margin-left:20px" id="changePwd">
					<a id="skipto" style="cursor:pointer;">个人中心</a>>><span>业务管理>>库存查询</span>
					<div  style="margin-top:20px;">
						<div class="col-xs-4"><input class="form-control" id="medicineName" style="margin-left:5px;" type="text" placeholder="请输入药品名"></div>
						<div class="col-xs-3 warning-errmsg" id="msg-2"></div>
						<div class="col-xs-2 col-xs-offset-3"><button class=" btn btn-info" style="margin-left:-450px;" id="searchBtn" type="button"><span class="glyphicon glyphicon-chevron-left">查询</span></button></div>
					</div>
					<div style="margin-top:75px;">
						<table class="table table-bordered" id="pad" style="width:90%;margin-left:20px;margin-top:50px;min-height:300px">
							<thead>
								<tr>
									<td>药品名称</td>
									<td>生产厂家</td>
									<td>单价</td>
									<td>库存数量</td>
								</tr>
							</thead>
						</table>	
					</div>
					<div class="col-xs-12" id="noData" style="text-align: center"></div>
				</div>
			</div>
			<%@include file="../element/pageList.jsp"%>
		</div>
	</div>
	<div class="footer" style="margin-top:20px;width:100%;text-align:center;verticle:middle;">
		<dl style="">
			<dd style="font-size:14px;line-height:50px">.
				Copyright©2005-2019 药康网（北京）医药科技有限公司版权所有，并保留所有权利。互联网药品交易服务证：京C20160006号
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
    var dataSet = []
	var thead = $("#pad").html()
	var contextPath="<%=request.getContextPath()%>" 
	$("#account").removeClass("showBar");
	$("#account").addClass("unshowBar");
	$("#business").removeClass("unshowBar");
	$("#business").addClass("showBar");
	var bpath=contextPath+"/statics/images/staffIndexicon3.png"
	var apath=contextPath+"/statics/images/staffIndexicon2.png"
	$("#apath").attr('src',apath)
	$("#bpath").attr('src',bpath)
	$("#pageList").css("margin-top","5px");
	
	$("#skipto").click(function(){
    	if($.cookie('partment')=='客服部'){
     		location.href=contextPath+"/staff/supportStaffIndex"
     	}
     	else location.href=contextPath+"/staff/buyerStaffIndex"
    })
    
	function cutSet(dataSet){
 		var dataCol = []
 		var _ = []
		var ct = 0
		var flag = true
		while(flag){
			for (var i = ct*7; i < ct*7+7; i++){
				if (dataSet[i]==undefined){
				dataCol.push(_)
				return dataCol
			}
				_.push(dataSet[i])
		}
		ct++
 			dataCol.push(_)
			_ = []
 		}
	}
 	function generateInventory(inventorysearch){
		var str = 
		"<tr>" +
			"<td>" + inventorysearch.medicineName +"</td>" + 
			"<td>" + inventorysearch.producer + "</td>" + 
			"<td>" + inventorysearch.price + "</td>" +
			"<td>" + inventorysearch.amount + "</td>" +
		"</tr>"
		return str
	}
	function generateColumn(dataColumn){  
 		var _ = ""
 		dataColumn.forEach(function(row,index){
			_ += "<tbody id=\"pad-page-" + index + "\" style=\"display:none;\">"
			row.forEach(function(item,index){
				_ += generateInventory(item)
			})
			_ += "</tbody>"
		})
 		return _
	}
 	function renderPage(dataSet){   
	 	$("#pageList").html(renderPageList(cutSet(dataSet).length))
	 	$("#pad").html(thead+generateColumn(cutSet(dataSet)))
	 	$("#pad-page-0").css("display","")
	 	$("#page-list-0").addClass("page-highlightened")
 	}

 	function showPage(n){
	 	for (var i = 0;i < $("#pageList")[0].getAttribute("data-total");i++){
	 		$("#pad-page-"+i).css("display","none")
	 		$("#page-list-"+i).removeClass("page-highlightened")
	 	}
	 	$("#pad-page-"+n).css("display","")
	 	$("#page-list-"+n).addClass("page-highlightened")
 	}
 	
 	$("#searchBtn").click(function(){
 		var postData={
			"medicineName":$("#medicineName").val()
		}
		$.ajax({
 			"method" : "POST",
 			"url" : contextPath + "/staff/inventorySearch",
 			"contentType" : "application/json",
 			"data" : JSON.stringify(postData),
 			"dataType" : "json",
 			"crossDomain" : true,
 			"success" : function(data){
 				dataSet = data.obj;
	 			renderPage(dataSet);
 				list=data.obj;
 				if(list.length<1){
	 				$("#noData")[0].innerHTML = "<span style=\"line-height: 40px;font-size: 24px\">未查询到此药品库存信息！</span>";
	 			}
 				else{
 					$("#noData")[0].innerHTML = " ";
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