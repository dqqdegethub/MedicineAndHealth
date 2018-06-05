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
		<title>慈善援助</title>
		
		<!-- Bootstrap -->
    	<link href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css" rel="stylesheet">
    	<link href="<%=request.getContextPath()%>/statics/css/index.css" rel="stylesheet">
    	<link href="<%=request.getContextPath()%>/statics/css/homepage.css" rel="stylesheet">
		
		<style>
		.main{
			margin-left:auto;
			margin-right:auto;
			width:1024px;
		}
		.main-middle{
			margin-top:50px;
		}
		.drugdisplay{
			height:200px;
		}
		.display-left{
			float:left;
			width:510px;
		}
		.display-right{
			float:right;
			width:510px;
		}
		</style>	
	</head>
	<body>
		<%@include file="../element/header.jsp" %>
		<div class="main">
		<%@include file="../element/searchBanner.jsp" %>
			<div class="main-top">
				<img src="<%=request.getContextPath()%>/statics/images/charityTheme.jpg" style="height:300px;width:1024px;"/>
			</div>
			<div class="main-middle">
				<div style="border:1px solid grey;border-bottom:1px solid grey;height:120px;">
					<img src="<%=request.getContextPath()%>/statics/images/charity01.jpg" style="float:left;height:120px;width:300px;"/>
					<p style="float:right;font-size:20px;line-height:40px;height:120px;width:720px;margin-top:25px;">慈善项目是对低收入人群在重大疾病情况下的救助，满足并鼓励患者与疾病抗争的物质与精神需求，以帮助重大疾病患者获得更大支持。</p>
				</div>
				<div style="margin-top:50px;">
					<p style="background-color:#e53b46;color:white;font-size:40px;height:80px;line-height:80px;text-align:center;">药康网慈善援助药品目录</p>
					<div class="drugdisplay">
						<div class="display-left">
							<a href="<%=request.getContextPath()%>/home/viewDrug/101011"><img src="<%=request.getContextPath()%>/statics/images/drugcharity01.jpg" style="width:510px;height:300px;"/></a>
						</div>
						<div class="display-right">
							<a href="<%=request.getContextPath()%>/home/viewDrug/101032"><img src="<%=request.getContextPath()%>/statics/images/drugcharity02.jpg" style="width:510px;height:300px;" /></a>
						</div>
					</div>
					<div class="drugdisplay">
						<div class="display-left">
							<a href="<%=request.getContextPath()%>/home/viewDrug/101033"><img src="<%=request.getContextPath()%>/statics/images/drugcharity03.jpg" style="width:510px;height:300px;"/></a>
						</div>
						<div class="display-right">
							<a href="<%=request.getContextPath()%>/home/viewDrug/202011"><img src="<%=request.getContextPath()%>/statics/images/drugcharity04.jpg" style="width:510px;height:300px;"/></a>
						</div>
					</div>
				</div>
			</div>
			<div class="main-bottom">
				<div style="margin-top:250px;">
					<p style="background-color:#e53b46;color:white;font-size:40px;height:80px;line-height:80px;text-align:center;">慈善药品援助领取流程</p>
					<img src="<%=request.getContextPath()%>/statics/images/charity02.jpg" style="float:left;width:1028px;height:600px;"/>
					<img src="<%=request.getContextPath()%>/statics/images/charity03.jpg" style="float:left;width:1028px;height:80px;margin-top:20px;"/>
				</div>
			</div>
		</div> 
<%-- 		<%@include file="../element/footer.jsp" %> --%>
		
		
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
		</script>
		
	</body>
	</html>