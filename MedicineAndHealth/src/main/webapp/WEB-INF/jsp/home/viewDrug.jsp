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
		<title>药品详情</title>
		
		<!-- Bootstrap -->
    	<link href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css" rel="stylesheet">
    	<link href="<%=request.getContextPath()%>/statics/css/index.css" rel="stylesheet">
    	<link href="<%=request.getContextPath()%>/statics/css/homepage.css" rel="stylesheet">
		
		<style>
		.breadcrumb{
			padding: 10px 0;
    		font-size: 12px;
		}
		.bold{
			font-weight: bold;
		}
		.leftArea{
			float:left;
			width:330px;
			padding-top: 30px;
    		padding-right: 20px;
   		 	padding-bottom: 30px;
    		padding-left: 20px;
    		overflow-x: hidden;
    		overflow-y: hidden;
		}
		.middleArea{
			float: left;
    		width: 400px;
    		margin-left:30px;
    		border-right-width: 1px;
    		border-right-style: solid;
    		border-right-color: rgb(233, 233, 233);
		}
		.Rximg{
			height:22.22px;
			width:43.7px;
		}
		.rightArea{
			float:right;
			width:259px;
		}
		.minus{
			width: 25px;
			height: 25px;
			display: block;
			float: left;
			font-size: 16px;
			text-align: center;
			background-color:rgb(239, 239, 239);
			border: 1px solid #e9e9e9
		}
		.plus{
			width: 25px;
			height: 25px;
			display: block;
			float: left;
			font-size: 16px;
			text-align: center;
			background-color:rgb(239, 239, 239);
			border: 1px solid #e9e9e9
		}
		.num-text{
			height: 25px;
			width: 50px;
			float: left;
			text-align: center;
			font-size: 16px;
			margin-left:5px;
			margin-right:5px;
			background-color:white;
			border: 1px solid #e9e9e9;
		}
		.cart_btn1{
			float: left;
			font-size: 18px;
			font-weight: bold;
			color: #fff;
			background-color: rgb(227, 59, 62);
			width: 220px;
			height: 48px;
			line-height: 50px;
			text-align: center;
 			margin-top:10px;
 			margin-bottom:40px;
		}
		.right-h1{
			font-size:20px;
			background-color:rgb(64, 149, 212);
			font-weight: normal;
			color: #fff;
			text-align: center;
			line-height: 40px;
		}
		.detail{
			margin-left:auto;
			margin-right:auto;
			width:1024px;
		}
		.column-left{
			float: left;
			width: 210px;
		}
		.column-right{
			float: right;
    		width: 800px;
		}
		.brand-img{
			margin-bottom:20px;
		}
		.column-right-manu{
			height: 40px;
			line-height: 40px;
			font-size: 14px;
			float:inherit;
			background-color: rgb(247, 247, 247);
			border-bottom-width: 1px;
			border-bottom-style: solid;
			border-bottom-color: rgb(233, 233, 233);
		}
		.column-right-manu ul li {
			padding: 0 30px;
			float: left;
			line-height: 40px;
			height: 40px;
			text-align: center;
			color:grey;
		}
		.con{
			padding: 20px 0;
			line-height:30px;
			margin-left:10px;
		}
		</style>	
	</head>
	
	<body>
		<%@include file="../element/header.jsp" %>
		<div class="detail">
			<%@include file="../element/searchBanner.jsp" %>
			<div style="margin-left:auto;margin-right:auto">
			    <div class="breadcrumb">
			    	<a href="<%=request.getContextPath()%>/home/homePage" class="bold">首页</a>
			    	<b> > </b>
			    	<a class="bold">${drugInformation.mCatalog}</a>
			    	<b> > </b>
			    	<span>${drugInformation.medicineName} </span>
			    </div>
				<div class="leftArea">
					<div><img src="<%=request.getContextPath() %>/statics/images/drug/drug21.jpg" style="height:300px;"/></div>
					<div>
						<p>
							<span class="bold">郑重声明:</span>
							<br>
							药品监管部门提示：如发现本网站有任何直接或变相销售处方药行为，请保留证据，拨打12331举报，举报查实给予奖励。
						</p>
					</div>
				</div>
				<div class="middleArea">
					<div>
						<h1 style="font-size:24px;line-height:30px;">
						<img src="<%=request.getContextPath() %>/statics/images/Rx.jpg" class="Rximg"/>
						 ${drugInformation.medicineName}
						</h1>
						<p style="color:#CD6E00;height:auto;font-size:15px;">${drugInformation.mCatalog}</p>
						<p></p>
						<P>
							规 格：${drugInformation.mSize}
							<br><br>
							批准文号：
							<a style="color: #0c69ae;"href="http://app1.sfda.gov.cn/datasearch/face3/dir.html">${drugInformation.approvalNum}</a>
							<br><br>
							生产厂家：${drugInformation.mProducer}
							<br><br>
						</P>
						<p style="background-color:rgb(239, 239, 239);line-height: 40px;height:60px;">
								<span style="float:left;width:60px;font-size:12px;text-align:right;margin-top:12px;">会 员 价：</span>
								<strong style="color:rgb(227, 59, 62);font-size:30px;margin-top:12px;float:left;width: 294px;font-weight: normal;">￥${drugInformation.price}</strong>
						</p>
					</div>
					<div>
						<table style="margin-top:30px;">
							<tr >
								<td>数 量：</td>
								<td>
									<div style="margin-left:30px;">
										<span class="minus">-</span>
										<input id="num-text" class="num-text" value="1" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" type="text"></input>
										<span class="plus">+</span>
									</div>
								</td>
							</tr>
							<tr style="line-height:60px;">
								<td >库 存：</td>
								<td id="Kuc"><span style="margin-left:30px;">${drugInformation.stockAmount}</span></td>
							</tr>
						</table>
					</div>
					<button id="addCart" class="cart_btn1">加入购物车</button>
				</div>
				<div class="rightArea">
					<h1 class="right-h1">MedicineAndHealth</h1>
					<table style="margin:50px;">
						<tr>
							<td>
								<img src="<%=request.getContextPath() %>/statics/images/zhengpin.png" style="width:60px;height:60px;"/><br><b style="color:rgb(64, 149, 212);line-height: 40px;">正品保障</b>
							</td>
							<td>
								<img src="<%=request.getContextPath() %>/statics/images/shouquan.png" style="width:60px;height:60px;margin-left:50px;"/><br><b style="color:rgb(64, 149, 212);line-height: 40px;margin-left:50px;">官方授权</b>
							</td>
						</tr>
						<tr>
							<td>
								<img src="<%=request.getContextPath() %>/statics/images/renz.png" style="width:60px;height:60px;"/><br><b style="color:rgb(64, 149, 212);line-height: 40px;">药监认证</b>
							</td>
							<td>
								<img src="<%=request.getContextPath() %>/statics/images/dijia.png" style="width:60px;height:60px;margin-left:50px;"/><br><b style="color:rgb(64, 149, 212);line-height: 40px;margin-left:50px;">天天低价</b>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div><a><img src="<%=request.getContextPath() %>/statics/images/ad1.jpg" style="width:1024px;margin-top:30px;"/></a></div> 
			<div class="detail">
				<div class="column-left">
					<div class="brand-img">
						<a><img src="<%=request.getContextPath() %>/statics/images/brand1.jpg"/></a>
					</div>
					<div class="brand-img">
						<a><img src="<%=request.getContextPath() %>/statics/images/brand2.jpg"/></a>
					</div>
					<div class="brand-img">
						<a><img src="<%=request.getContextPath() %>/statics/images/brand3.jpg"/></a>
					</div>
				</div>
				<div class="column-right">
					<div class="column-right-manu" style="position: static; top: 1439.37px; z-index: 2; width: 800px;">
						<ul>
							<li class="">商品说明书</li>
						</ul>
					</div>
					<div class="column-right-info">
						<div class="productlist">
							<table style="border-width: 1px;border-style: solid;border-color: rgb(233, 233, 233);width:800px;">
								<tr><td colspan="2" style="font-size: 24px;color: #4095d4;text-align: center;line-height: 60px;">${drugInformation.medicineName}</td></tr>
								<tr>
									<td style="background-color: rgb(248, 248, 248);width:132px;text-align: center;">商品详情</td>
									<td style="font-size: 14px;line-height: 30px;margin-left:10px;">
										<p>
											<br>
											【药品成分】${drugInformation.mIngredient}
											<br>
											【适应症】${drugInformation.mIndication}
											<br>
											【性状】${drugInformation.mTrait}
											<br>
											【用法用量】${drugInformation.mDosage}
											<br>
											【贮藏条件】${drugInformation.mStorage}
										</p>
									</td>
								</tr>
							</table>
						</div>
						<div class="attention">
							<h1 style="font-size: 16px;line-height: 45px;height: 45px;color:#bc871f;">温馨提示</h1>
							<p style="font-size: 14px;line-height: 30px;margin-left:10px;color:grey;">
								1、商品图片信息展示仅供参考，最终包装以商品实物为准。欢迎纠错！
								<br>
								2、说明书内容仅供查阅参考，最终以商品包装内说明书为准。欢迎纠错！
								<br>
								3、使用商品时，请仔细阅读说明书，并按说明书使用；如药品，请在医师或药师指导下服用。 
							</p>
						</div>
						<div class="column-right-manu" style="margin-top:20px;">
						<ul>
							<li class="">售后说明</li>
						</ul>
						</div>
						<div class="aftersale">
							<div class="con">
								<h1 style="font-size:16px;color:#0c69ae;">售后服务</h1>
								<p>根据国家相关法律规定，此类商品属于特殊商品，一经售出，非质量问题，概不退换，请见谅！</p>
							</div>
							<div class="con">
								<h1 style="font-size:16px;color:#0c69ae;">药事网服务承诺</h1>
								<p>药房网向您保证所售商品均为正规商品，可提供机打发票，与商品一起寄送。凭质保证书及药房网发票，可享受全国联保服务，与您亲临药店选购的商品享受相同的质量保证。
                            药房网还为您提供具有竞争力的商品价格和免运费政策，请您放心购买！
                        		</p>
							</div>
							<div class="con">
								<h1 style="font-size:16px;color:#0c69ae;">声明</h1>
								<p>因厂家会在没有任何提前通知的情况下更改产品信息、包装、产地、赠品或者一些附件，本司不能确保客户收到的货物与药房网图片、
                            产地、附件说明完全一致。 只能确保为正规商品！并且保证与当时市场上同样主流商品一致。 若本商城没有及时更新，请大家谅解！
                                </p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<%-- <%@include file="../element/footer.jsp" %> --%>
	
	
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
// 		var j=${drugInformation.mIndication };
// 		for(i=0;i<j.split("。").length;i++){
// 			$("#mIndication")[0].innerHTML+=j.split("。")[i];
// 		}
	
	
// 	mIndication.split("。").forEach(function(item){
// 		$("#mIndication")[0].innerHTML+=item;
// 	})
		
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
		$("#addCart").click(function(){
			 var postData={medicineId:"${drugInformation.medicineId}",count:$("#num-text").val()};
			 $.ajax({
					"method" : "POST",
					"url" : contextPath + "/home/viewDrug",
					"contentType" : "application/json",
					"data" : JSON.stringify(postData),
					"dataType" : "json",
					"crossDomain" : true,
					"success" : function(data){
						if (data.code==1){
// 							window.location.href = contextPath + "/customer/cartPage";
						 }
					},
					"error" : function(){
						alert("errored.");
					}
				});
		});
		$("span.minus").click(function(){
			var t = $(this).parent().find('.num-text');

			  if (t.val() == "") {
			    t.val(1);
			  }
			  t.val(parseInt(t.val()) - 1);
			  if (t.val() <= 1) {
			    t.val(1);
			  }
		});
		$("input.num-text").blur(function(){
			var t = $(this).parent().find('.num-text');
			  var kuc = Number($("#Kuc").text());
			  var xianG = Number($("#kuc").text());

			  if (t.val() == "") {
			    t.val(1);
			  }
			  if (t.val() <= 1) {
			    t.val(1);
			  }
			  if (t.val() >= kuc) {
			    t.val(kuc);
			  }
			  if (xianG != 0 && t.val() >= xianG) {
			    t.val(xianG);
			  }
		});
		$("input.num-text").keyup(function onkeyup(event){
			this.value = this.value.replace(/\D/g, '')
		});
		$("span.plus").click(function(){
			var t = $(this).parent().find('.num-text');
			  var kuc = Number($("#Kuc").text());
			  var xianG = Number($("#kuc").text());

			  if (t.val() == "") {
			    t.val(1);
			  }
			  t.val(parseInt(t.val()) + 1);
			  if (t.val() <= 1) {
			    t.val(1);
			  }
			  if (t.val() >= kuc) {
			    t.val(kuc);
			  }
			  if (xianG != 0 && t.val() >= xianG) {
			    t.val(xianG);
			  }
		});
	</script>
	</body>
</html>