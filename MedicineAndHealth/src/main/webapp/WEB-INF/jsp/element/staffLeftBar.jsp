<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<style>
	.showBar{
		width:200px;
		height:50px;
		border-left:5px solid #45a9c9;
	}
	.showBar img{
		width:20px;
		margin-left:25px;
	}
	.showBar span{
		line-height:50px;
		margin-left:10px;
	}
	.unshowBar{
		width:200px;
		height:50px;
	}
	.unshowBar img{
		width:20px;
		margin-left:30px;
	}
	.unshowBar span{
		line-height:50px;
		color:#C4C4C4;
		margin-left:10px;
	}	
   </style>

		<div style="height:530px;width:200px;background-color:#FFFFFF;float:left">
				<div style="width:200px;height:50px;text-align:center;">
					<label id="staffName" style="line-height:50px;font-size:18px"></label>
				</div>
				<img id="staffImg" src="<%=request.getContextPath()%>/statics/images/staff1.png" style="width:70px;margin-left:65px"/>
				<div class="showBar" id="account" style="cursor:pointer;margin-top:70px;">
					<img id="apath" src="<%=request.getContextPath()%>/statics/images/staffIndexicon4.png" />
					<span>账户管理</span>
				</div>
				<div class="unshowBar" id="business" style="cursor:pointer">
					<img id="bpath" src="<%=request.getContextPath()%>/statics/images/staffIndexicon1.png"/>
					<span>业务管理</span>
				</div>
				<div style="width:150px;height:10px;border-top:2px solid #C4C4C4;margin-top:110px"></div>
				<div style="margin-left:15px" id="type">
				</div>
<!-- 				<div style="margin-left:35px;margin-top:10px;">好评率：98.7%</div> -->
			</div>
    
   <!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script type="text/javascript">
    if($.cookie("partment")=='客服部'){
		$("#type")[0].innerHTML+="<img src="+ contextPath +"/statics/images/staffIndexicon5.png style=\"width:20px;margin-right:5px;\"/>优秀客服";
	}else{
		$("#type")[0].innerHTML+="<img src="+ contextPath +"/statics/images/staffIndexicon5.png style=\"width:20px;margin-right:5px;\"/>优秀采购员";
	}
    
    $("#staffName")[0].innerHTML=$.cookie("staffName")
    $("#staffImg")
    var imgpath=contextPath+"/statics/images/staff"+ $.cookie('staffId') +".png"
	$("#staffImg").attr('src',imgpath)
	
	$("#account").click(function(){
		if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex"
	})
	$("#business").click(function(){
		if($.cookie('partment')=='客服部'){
 			location.href=contextPath+"/staff/supportStaffIndex?i=1"
 		}
 		else location.href=contextPath+"/staff/buyerStaffIndex?i=1"
	})
    </script>
