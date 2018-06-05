<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人中心</title>

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
	.showBar{
		height:50px;
		border-left:5px solid #45a9c9;
		background-color:#abc2d5;
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
		height:50px;
		background-color:#c4dbed;
	}
	.unshowBar img{
		width:20px;
		margin-left:30px;
	}
	.unshowBar span{
		line-height:50px;
		color:#6B8A8F;
		margin-left:10px;
	}
	.isHover{
		background-color: #dbe8f3;
	}
	.aStyle{
		width:240px;
		height:240px;
		background-color:white;
		float:left;
		cursor:pointer;	
	}
	.aImgStyle{
		padding-bottom:32px;
		padding-top:60px;
		width:80px
	}
    </style>
  </head>

  <body>
    <%@include file="../element/header.jsp"%>
	<div style="width: 1024px;margin:0 auto">
		<%@include file="../element/searchBanner.jsp"%>
		
		<div style="padding-top: 10px">
			<div style="width: 20%;height:450px;background-color:#c4dbed;float:left">
				<div style="width:200px;height:50px;text-align:center;">
					<label style="line-height:50px;font-size:18px">${customer.userName }</label>
				</div>
				<img id="customerImg" src="<%=request.getContextPath()%>/statics/images/customers/${customer.id }.jpeg" style="width:100px;margin-left:50px"/>
				<div class="showBar centerLeftNav" id="indent" style="margin-top:70px;">
					<img id="indentImg" src="<%=request.getContextPath()%>/statics/images/staffIndexicon4.png" />
					<span>我的清单</span>
				</div>
				<div class="unshowBar centerLeftNav" id="information">
					<img id="informationImg" src="<%=request.getContextPath()%>/statics/images/staffIndexicon1.png"/>
					<span>个人信息</span>
				</div>
				<div style="width:150px;height:10px;border-top:2px solid #4587A1;margin-top: 40px"></div>
				<div style="margin-left:15px"></div>
			</div>
			
			<div style="width: 80%;height:450px;background-color:#f1f1f1;float:left">
				<p style="font-size: 30px;margin: 20px 20px 20px">个人中心</p>
				
				<div style="margin-top:20px;margin-left:20px">
					<a href="<%=request.getContextPath() %>/home/homePage" style="cursor:pointer;">药康网</a>>><span>我的药康网</span>
					
					<div id="indent_1" class="col-xs-12" style="margin-top:40px;text-align:center;padding-left: 100px">
						<a class="col-xs-6 aStyle" href="">
							<img class="aImgStyle" src="<%=request.getContextPath()%>/statics/images/staffIndexB.png" />
							<span class="col-xs-12" style="color: black">确认订单</span>
						</a>
						
						<a class="col-xs-6 aStyle" style="margin-left:50px" href="">
							<img class="aImgStyle" src="<%=request.getContextPath()%>/statics/images/staffIndexO.png" />
							<span class="col-xs-12" style="color: black">全部订单</span>
						</a>
					</div>
					
					<div id="information_1" class="col-xs-12" style="margin-top:40px;text-align:center;padding-left: 100px">
						<a class="col-xs-6 aStyle" href="">
							<img class="aImgStyle" src="<%=request.getContextPath()%>/statics/images/staffIndexA.png" />
							<span class="col-xs-12" style="color: black">详细信息</span>
						</a>
						
						<a class="col-xs-6 aStyle" style="margin-left:50px" href="">
							<img class="aImgStyle" src="<%=request.getContextPath()%>/statics/images/staffIndexP.png" />
							<span class="col-xs-12" style="color: black">修改密码</span>
						</a>
					</div>
				</div>
					
			</div>
		</div>
	</div>
	
	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script >
	    var contextPath = "<%=request.getContextPath()%>";
	    
		$(document).ready(function(){
			$("#information_1").hide();
			
			//allNav
			$("#leftBar").hide();
			$("#allNav").hover(function(){	
				$("#leftBar").show();
			},function(){	
				$("#leftBar").hide();
			})
			
			
			//leftNav
			$(".centerLeftNav").hover(function(){
				$(this).addClass("isHover")
			},function(){
				$(this).removeClass("isHover");
			})
			
			$("#indent").click(function(){
				$("#indent_1").show();
				$("#information_1").hide();
				
				$("#information").removeClass("showBar");
				$("#information").addClass("unshowBar");
				$(this).removeClass("unshowBar");
				$(this).addClass("showBar");
				$("#indentImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon4.png');
				$("#informationImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon1.png');
			})
			$("#information").click(function(){
				$("#information_1").show();
				$("#indent_1").hide();
				
				$("#indent").removeClass("showBar");
				$("#indent").addClass("unshowBar");
				$(this).removeClass("unshowBar");
				$(this).addClass("showBar");
				$("#informationImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon3.png');
				$("#indentImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon2.png');
			})
			
		})
	</script>
	
</body>

</html>
