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
    <title>购物车</title>

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
.cartThead{
	background-color:#f0f0f0;
	height: 40px;	
	line-height: 40px;
	text-align: center;
}
.cartBorder{
	border: 1px solid #a7d5f4;
}
</style>
</head>

<body>
    <%@include file="../element/header.jsp"%>
	<div style="width: 1024px;margin:0 auto">
		<%@include file="../element/searchBanner.jsp"%>
		<div class="col-xs-12" style="padding-top: 15px;padding-bottom: 20px;">
			<span class="col-xs-2" style="font-size: 18px">我的需求清单</span>
			<span class="col-xs-10" style="color: red">全部商品（？）  如您所选的商品包含处方药，您加入需求清单以后，展示药品信息的门店药师会与您联系，并会提醒您在购买时所需要的处方单等相关资料。</span>
		</div>
		
		<div class="col-xs-12" >
			<div class="col-xs-12 cartThead" >
				<div class="col-xs-2" >
					<input type="checkbox"/>
					<span>  全选</span>
				</div>
				<div class="col-xs-3">商品信息</div>
				<div class="col-xs-1">单价</div>
				<div class="col-xs-2">数量</div>
				<div class="col-xs-1">小计</div>
				<div class="col-xs-2">库存状态</div>
				<div class="col-xs-1">操作</div>
			</div>
		</div>
		
		<div class="col-xs-12 " style="padding-top: 10px;height: 140px">
			<div class="col-xs-12 cartBorder" style="background-color: #f2f9fe;height: 30px">
				<input type="checkbox"/>
				<span>  ****分店</span>
			</div>
			<div class="col-xs-12 cartBorder" style="line-height: 70px;text-align: center">
				<div class="col-xs-5">
					<div class="col-xs-1"><input type="checkbox"/></div>
					<img class="col-xs-5" style="height: 100px" src="<%= request.getContextPath()%>/statics/images/drug/drug21.jpg"/>
					<div class="col-xs-6">
						<div style="line-height: 20px;margin-top: 20px"><span>六味地黄丸</span></div>
						<div style="line-height: 20px"><span>200丸</span></div>
					</div>
				</div>
				<div class="col-xs-1">15.00</div>
				<div class="col-xs-2" style="margin-top: 20px;line-height: 24px;">
					<span class="col-xs-3 col-xs-offset-1" style="display:inline-block;background-color: #f9f9f9;font-size: 14px;border:1px solid #e9e9e9">-</span>
					<input class="col-xs-4" style="border:1px solid #e9e9e9" type="text" />
					<span class="col-xs-3" style="display:inline-block;background-color: #f9f9f9;font-size: 14px;border:1px solid #e9e9e9">+</span>	
				</div>
				<div class="col-xs-1">15.00</div>
				<div class="col-xs-2">有货</div>
				<div class="col-xs-1">
					<a>删除</a>
				</div>
			</div>
		</div>
		
		<div class="col-xs-12 " style="padding-top: 10px;height: 140px">
			<div class="col-xs-12 cartBorder" style="background-color: #f2f9fe;height: 30px">
				<input type="checkbox"/>
				<span>  ****分店</span>
			</div>
			<div class="col-xs-12 cartBorder" style="line-height: 70px;text-align: center">
				<div class="col-xs-5">
					<div class="col-xs-1"><input type="checkbox"/></div>
					<img class="col-xs-5" style="height: 100px" src="<%= request.getContextPath()%>/statics/images/drug/drug21.jpg"/>
					<div class="col-xs-6">
						<div style="line-height: 20px;margin-top: 20px"><span>六味地黄丸</span></div>
						<div style="line-height: 20px"><span>200丸</span></div>
					</div>
				</div>
				<div class="col-xs-1">15.00</div>
				<div class="col-xs-2" style="margin-top: 20px;line-height: 24px;">
					<span class="col-xs-3 col-xs-offset-1" style="display:inline-block;background-color: #f9f9f9;font-size: 14px;border:1px solid #e9e9e9">-</span>
					<input class="col-xs-4" style="border:1px solid #e9e9e9" type="text" />
					<span class="col-xs-3" style="display:inline-block;background-color: #f9f9f9;font-size: 14px;border:1px solid #e9e9e9">+</span>	
				</div>
				<div class="col-xs-1">15.00</div>
				<div class="col-xs-2">有货</div>
				<div class="col-xs-1">
					<a>删除</a>
				</div>
			</div>
		</div>
		
	</div>
<%-- 	<%@include file="../element/footer.jsp"%> --%>
	
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
    	$("#leftBar").hide();
    </script>
</body>

</html>
