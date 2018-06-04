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
    <title>个人中心</title>

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
    .container{
    	width:1200px;
    	margin:0 auto;
    }
	.container::after {
	    clear: both;
	    content: '.';
	    display: block;
	    height: 0;
	    line-height: 0;
	    overflow: hidden;
	}
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
	<div style="background-image:url(../statics/images/staffIndex.png);background-repeat:no-repeat;min-with:1024px;min-height:650px;background-size:100% 100%;position:relative">
		<div style="height:530px;width:1100px;background-color:#EDEDED;position:absolute;top:70px;left:220px;z-index:99;">
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
				<div style="margin-left:15px">
					<img src="<%=request.getContextPath()%>/statics/images/staffIndexicon5.png" style="width:20px;margin-right:5px;"/>优秀客服
				</div>
<!-- 				<div style="margin-left:35px;margin-top:10px;">好评率：98.7%</div> -->
			</div>
			<div style="width:900px;float:left">
				<div style="width:100%;height:20px"></div>
				<span style="margin-bottom:20px">
					<span style="float:left;font-size:30px;margin-left:20px">个人中心</span>
					<button class="btn" type="button" style="background-color:#45a9c9;color:white;width:80px;margin-left:600px">注销</button>
				</span>
				
				<div id="accountManage" style="display:;border-bottom:2px solid #C4C4C4;height:30px;width:95%;margin-left:25px">
					<div id="account1" style="width:280px;height:280px;background-color:white;margin-left:-50px;margin-top:100px;float:left;text-align:center;cursor:pointer;">
						<div>
							<img src="<%=request.getContextPath()%>/statics/images/staffIndexA.png" style="padding-bottom:80px;padding-top:80px;width:60px"/>
						</div>
						<span style="">修改个人信息</span>
					</div>
					<div id="account2" style="width:280px;height:280px;background-color:white;margin-left:50px;margin-top:100px;float:left;text-align:center;cursor:pointer;">
						<div>
							<img src="<%=request.getContextPath()%>/statics/images/staffIndexP.png" style="padding-bottom:80px;padding-top:80px;width:60px"/>
						</div>
						<span style="">修改密码</span>
					</div>
				</div>
				<div id="businessManage" style="display:none;border-bottom:2px solid #C4C4C4;height:30px;width:95%;margin-left:25px">
					<div id="business1" style="width:250px;height:280px;background-color:white;margin-left:-110px;margin-top:100px;float:left;text-align:center;cursor:pointer;">
						<div style="height:250px">
							<div>
							<img src="<%=request.getContextPath()%>/statics/images/staffIndexO.png" style="padding-bottom:60px;padding-top:80px;width:60px"/>
						</div>
						<span style="">确认订单</span>
						</div>
						<div style="height:30px;background-color:#EDEDED">
							<span style="float:right;line-height:30px">已完成订单数：${orderNum }</span>
						</div>
					</div>
					<div id="business2" style="width:250px;height:250px;background-color:white;margin-left:50px;margin-top:100px;float:left;text-align:center;cursor:pointer;">
						<div>
							<img src="<%=request.getContextPath()%>/statics/images/staffIndexS.png" style="padding-bottom:60px;padding-top:80px;width:60px"/>
						</div>
						<span style="">回复客户</span>
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
		$(document).ready(function(){
			var imgpath=contextPath+"/statics/images/staff"+ $.cookie('staffId') +".png"
			$("#staffImg").attr('src',imgpath)
			$("#staffName")[0].innerHTML=$.cookie('staffName')
			if(location.href.split('?')[1].split('=')[1]=='1'){
				$("#accountManage").css("display","none")
				$("#businessManage").css("display","")
				$("#account").removeClass("showBar")
				$("#business").removeClass("unshowBar")
				$("#account").addClass("unshowBar")
				$("#business").addClass("showBar")
				var bpath=contextPath+"/statics/images/staffIndexicon3.png"
				var apath=contextPath+"/statics/images/staffIndexicon2.png"
				$("#apath").attr('src',apath)
				$("#bpath").attr('src',bpath)
			}
		})
		$("#account").click(function(){
			$("#businessManage").css("display","none")
			$("#accountManage").css("display","")
			$("#business").removeClass("showBar")
			$("#account").removeClass("unshowBar")
			$("#business").addClass("unshowBar")
			$("#account").addClass("showBar")
			var bpath=contextPath+"/statics/images/staffIndexicon1.png"
			var apath=contextPath+"/statics/images/staffIndexicon4.png"
			$("#apath").attr('src',apath)
			$("#bpath").attr('src',bpath)
		})
		$("#business").click(function(){
			$("#accountManage").css("display","none")
			$("#businessManage").css("display","")
			$("#account").removeClass("showBar")
			$("#business").removeClass("unshowBar")
			$("#account").addClass("unshowBar")
			$("#business").addClass("showBar")
			var bpath=contextPath+"/statics/images/staffIndexicon3.png"
			var apath=contextPath+"/statics/images/staffIndexicon2.png"
			$("#apath").attr('src',apath)
			$("#bpath").attr('src',bpath)
		})
		
		$("#account1").click(function(){
			
		})
		$("#account2").click(function(){
			location.href=contextPath+"/staff/changePassword"
		})
    </script>
</body>

</html>
