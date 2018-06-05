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
				<!-- Bootstrap -->
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
		.sign_01{
			text-align:center;
			display:block;
			font-size:x-large;
			color:orange;
		}
		.sign_02{
			text-align:center;
			display:block;
			font-size:large;
		}
		</style>	
	</head>
	
	<body>
		<%@include file="../element/header.jsp" %>
		<div class="detail">
			<%@include file="../element/searchBanner.jsp" %>
			<div style="margin-left:auto;margin-right:auto">
			    <div class="breadcrumb" id="drugType">
			    	
			    </div>
				
			</div>
			<div class="drugRList" id="select">
  			<!--	<dl>
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
  			 	<dl>
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
	 $("#leftBar").hide();
		$("#allNav").hover(function(){	
			$("#leftBar").show();
		},function(){	
			$("#leftBar").hide();
		});
	
	
	var contextPath="<%=request.getContextPath()%>" ;
	var keyWord =decodeURI(decodeURI(location.href,"UTF-8"));
	
	$(document).ready(function(){
		<!--searchBanner -->
		var str="<%=request.getContextPath()%>/home/drugSearch?seekword="
	  	     $("#searchBtn").click(function(){
	  	    	 if($("#searchtext").val()!=""){
	  	    		 location.href=encodeURI(encodeURI("<%=request.getContextPath()%>/home/drugSearch?seekword="+$("#searchtext").val()));
	  		 	 }
	  	    	 else{
	  	    		 location.href="<%=request.getContextPath()%>/home/drugSearch"
	  	    	 }
	  	     });
	  	<!--searchBanner -->
		console.log(11);
		if(location.href.split('?')[1]==undefined){
			console.log(22);
			//var seekWord=location.href.split('?')[1];
			var postData={
					"code":0, //表示没有输入搜索内容
					"medicineName":"",
					"medicineType":""
				};
				$.ajax({
					method:"POST",
					url: contextPath + "/home/drugSearch",
					contentType: "application/json",
					data:JSON.stringify(postData),
					dataType:"json",
				 	crossDomain: true,
					success: function(data){
						list=data.obj;	
						var intType=parseInt(list[0].medicineId/100000);
						var type=intType*100000;
						$("#drugType")[0].innerHTML+="<a href=\""+contextPath+"\"/home/homePage\" class=\"bold\">首页</a>"+
				    	"<b> > </b><a href=\""+contextPath+"/home/drugTypeSearch/"+type+" \" class=\"bold\">"+list[0].mCatalog+"</a>";
				    
				    	
						for(var i=0;i<list.length;i++){	
														
					    	$("#select")[0].innerHTML+="<dl>"+
        					"<a href=\""+contextPath+"/home/viewDrug/"+list[0].medicinedId+"\" style=\"text-decoration-line: none;\">"+
        					"<dt>"+
        					"<img src=\""+contextPath+"/statics/images/drug/"+list[0].medicinedId+".jpg\" class=\"drugListO\" />"+
        					"</dt>"+
        					"<dd>"+
	        					"<p>"+list[i].medicineName+"</p>"+
	    						"<span>￥"+list[i].price+"</span>"+
        					"</dd>"+
        					"</a>"+
        				"</dl>";							
						}//for
					 },
				   error: function(){
						alert("Search failed.");
					}
			});
		}
		else{
			console.log(33);
			$("#search-wrapper")[0].innerHTML="<input id=\"searchtext\" type=\"text\" value=\""+keyWord.split('?')[1].split('=')[1]+"\">" ;
			var postData={
					"code":1,//表示搜索框里有内容
					"medicineName":keyWord.split('?')[1].split('=')[1],
					"medicineType":""
				};
			$.ajax({
				method:"POST",
				url: contextPath + "/home/drugSearch",
				contentType: "application/json",
				data:JSON.stringify(postData),
				dataType:"json",
			 	crossDomain: true,
				success: function(data){
					console.log(44);
					list=data.obj;
					
					if(list.length<1){
						$("#select")[0].innerHTML+="<span class=\"sign_01\">"+
						"抱歉，没有找到相关商品"+
						"</span><span class=\"sign_01\">您可以修改关键词重新搜索或向客服咨询是否有其他同类在售商品</span><!-- ，为您推荐以下结果 -->"+
						"<ul class=\"sign_02\"><li><span>1：电话咨询   15951078533 </span></li> <li><span>2 : 将您需要的商品提供给我们<a target=\"_blank\">寻医问药</a></span></li><li><span class=\"sign_02\" >"+
							"3：在线咨询   点击进行<a  onclick=\"#\">在线咨询</a></span></li></ul>";
					}else{
						var intType=parseInt(list[0].medicineId/100000);
						var type=intType*100000;
						$("#drugType")[0].innerHTML+="<a href=\""+contextPath+"/home/homePage\" class=\"bold\">首页</a>"+
				    	"<b> > </b><a href=\""+contextPath+"/home/drugTypeSearch/"+type+" \" class=\"bold\" >"+list[0].mCatalog+"</a><span>></span>";
				    
						//DrugInformation drug;
						for(var i=0;i<list.length;i++){
							console.log(list[i].medicineName);
							$("#select")[0].innerHTML+="<dl>"+
	    					"<a href=\""+contextPath+"/home/viewDrug/"+list[i].medicineId+"\" style=\"text-decoration-line: none;\">"+
	    					"<dt>"+
	    					"<img src=\""+contextPath+"/statics/images/drug/"+list[i].medicineId+".jpg\" class=\"drugListO\" />"+
	    					"</dt>"+
	    					"<dd>"+
	    						"<p>"+list[i].medicineName+"</p>"+
	    						"<span>￥"+list[i].price+"</span>"+
	    					"</dd>"+
	    					"</a>"+
	    				"</dl>";
						}//for
						
					}
					
				  },
				 
				error: function(){
						alert("Search failed.");
					 }
			})
		}
	});
	</script>

</html>