<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MedicineAndHealth.entity.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8"> 
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>药品搜索</title>
		<!-- Bootstrap  -->   
    	<link href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css" rel="stylesheet">
    	<link href="<%=request.getContextPath()%>/statics/css/index.css" rel="stylesheet">
    	<link href="<%=request.getContextPath()%>/statics/css/homepage.css" rel="stylesheet">
		<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
	    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
	    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
	    <!-- Dynamic page helper script -->
	    <script>var contextPath="<%=request.getContextPath()%>";</script>
	    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
	    <script src="<%=request.getContextPath()%>/statics/js/jqthumb.js"></script>
	    <script type="text/javascript">
		   
	    </script>
		<style>
		.drugListO{
		display:inline;
		top:0px;	
		}
		.drugListO:hover{
		display:inline;
		top:-15px;
		}
		.breadcrumb{
			padding: 10px 0;
    		font-size: 12px;
		}
		.bold{
			font-weight: bold;
		}
		.detail{
			margin-left:auto;
			margin-right:auto;
			width:1024px;
		}
		.drugRList dl {
    		float: left;
    		width: 170px;
    		text-align: center;
    		border-right: 1px solid #e9e9e9;
    		padding:0px;
    		height:192px;
		}
		</style>	
	</head>
	
	<body>
		<%@include file="../element/header.jsp" %>
		<div class="detail">
			<%@include file="../element/searchBanner.jsp" %>
			<div style="margin-left:auto;margin-right:auto">
			    <div class="breadcrumb" id="drugType">
			    	<a href="<%=request.getContextPath()%>/home/homePage" class="bold">首页</a>
			    	<b> > </b>
			    	<a class="bold" id="nowDrugType">${nowDrugType }</a>
			    	
			    </div>
				
			</div>
			<div class="drugRList" id="select">
  				<dl>
  				
  					<a href="<%=request.getContextPath()%>/home/viewDrug/201031" style="text-decoration-line: none;">
  					<dt>
  						<img src="<%=request.getContextPath()%>/statics/images/drug/201031.jpg" class="drugListO" />
  					</dt>
  					<dd>
  						<p>盐酸西卡那塞片</p>
  						<span>￥ 398.00</span>
  					</dd>
  					</a>
  				</dl>
  				<c:forEach items="${drugList}" var="item" varStatus="status">  
  				<dl>
  					
  					<a href="<%=request.getContextPath()%>/home/viewDrug/${item.medicineId}" style="text-decoration-line: none;">
  					<dt> 
  						<img src="<%=request.getContextPath()%>/statics/images/drug/${item.medicineId}.jpg" class="drugListO" />
  					</dt>
  					<dd>
  						<p> ${item.medicineName} </p>
  						<span>￥  ${item.price} </span>
  					</dd>
  					</a>
  				</dl>
			</c:forEach>
				
				
  			<!-- 	<dl>
  					<a href="<%=request.getContextPath()%>/home/viewDrug/201012" style="text-decoration-line: none;">
  					<dt>
  						<img src="<%=request.getContextPath()%>/statics/images/drug/201012.jpg" class="drugListO" />
  					</dt>
  					<dd>
  						<p>恩曲他滨替诺福韦片(舒发泰)</p>
  						<span>￥ 1980.00</span>
  					</dd>
  					</a>
  				</dl>
  			  -->
        		
        	</div>
		</div>
		
</body>
	<script type="text/javascript">
	var intType=parseInt(${id }/100000);
	var type=intType*100000;
	//var a=${id}
	$("#nowDrugType").attr("href",contextPath+"/home/drugTypeSearch/"+type);
	 $("#leftBar").hide();
		$("#allNav").hover(function(){	
			$("#leftBar").show();
		},function(){	
			$("#leftBar").hide();
		});	
	<!--searchBanner   -->
	$(document).ready(function(){
	  	     $("#searchBtn").click(function(){
	  	    	 if($("#searchtext").val()!=""){
	  	    		 location.href=encodeURI(encodeURI("<%=request.getContextPath()%>/home/drugSearch?seekword="+$("#searchtext").val()));
	  		 	 }
	  	    	 else{
	  	    		 location.href="<%=request.getContextPath()%>/home/drugSearch"
	  	    	 }
	  	     });
	});
  	<!--searchBanner -->
	
	</script>

</html>