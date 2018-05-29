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
.countChange{
	display:inline-block;
	background-color: #f9f9f9;
	font-size: 14px;
	border:1px solid #e9e9e9
}
</style>
</head>

<body>
    <%@include file="../element/header.jsp"%>
	<div style="width: 1024px;margin:0 auto">
		<%@include file="../element/searchBanner.jsp"%>
		<div class="col-xs-12" style="padding-top: 15px;padding-bottom: 20px;">
			<span class="col-xs-2" style="font-size: 18px">我的需求清单</span>
			<div class="col-xs-10" style="margin-left: -40px">
				<span class="col-xs-2" style="color: red">全部商品(${cartCount })</span>
				<span class="col-xs-10" style="color: red">如您所选的商品包含处方药，您加入需求清单以后，展示药品信息的门店药师会与您联系，并会提醒您在购买时所需要的处方单等相关资料。</span>
			</div>
			
		</div>
		
		<div class="col-xs-12" >
			<div class="col-xs-12 cartThead" >
				<div class="col-xs-2" >
					<input id="selectAllCkb" type="checkbox"/>
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
		
		<div class="col-xs-12" id="noData" style="text-align: center"></div>
		
		<c:forEach items="${cartList }" var="drug">
			<div class="col-xs-12 " id="cart-${drug.medicineId }" data-medicineid="${drug.medicineId }" style="padding-top: 10px;height: 110px">
				<div class="col-xs-12 cartBorder" style="line-height: 70px;text-align: center">
					<div class="col-xs-5">
						<div class="col-xs-1"><input id="cartCkb-${drug.medicineId }" data-medicineid="${drug.medicineId }" type="checkbox"/></div>
						<img class="col-xs-5" style="height: 100px" src="<%= request.getContextPath()%>/statics/images/drug/drug21.jpg"/>
						<div class="col-xs-6">
							<div style="line-height: 20px;margin-top: 20px"><span>${drug.medicineName }</span></div>
							<div style="line-height: 20px"><span>${drug.size }</span></div>
						</div>
					</div>
					
					<div id="price-${drug.medicineId }" class="col-xs-1">${drug.price }</div>
					
					<div class="col-xs-2" style="margin-top: 20px;line-height: 24px;">
						<div id="minus-${drug.medicineId }" class="col-xs-3 col-xs-offset-1 countChange" onclick="countChange('minus',${drug.medicineId })">-</div>
						<input class="col-xs-4" id="count-${drug.medicineId }" style="border:1px solid #e9e9e9" type="text" value="${drug.count }"/>
						<div id="add-${drug.medicineId }" class="col-xs-3 countChange" onclick="countChange('add',${drug.medicineId })">+</div>	
					</div>
					
					<div class="col-xs-1"><span id="total-${drug.medicineId }">${drug.price * drug.count }</span></div>
					
					<div class="col-xs-2" ><span id="storageStatus-${drug.medicineId }" data-amount="${drug.stockAmount }"></span></div>
					
					<div class="col-xs-1">
						<a onclick="deleteCart(${drug.medicineId })">删除</a>
					</div>
				</div>
			</div>
		</c:forEach>
		
<!-- 		<div class="col-xs-12 " style="padding-top: 10px;height: 140px"> -->
<!-- 			<div class="col-xs-12 cartBorder" style="line-height: 70px;text-align: center"> -->
<!-- 				<div class="col-xs-5"> -->
<!-- 					<div class="col-xs-1"><input type="checkbox"/></div> -->
<%-- 					<img class="col-xs-5" style="height: 100px" src="<%= request.getContextPath()%>/statics/images/drug/drug21.jpg"/> --%>
<!-- 					<div class="col-xs-6"> -->
<!-- 						<div style="line-height: 20px;margin-top: 20px"><span>六味地黄丸</span></div> -->
<!-- 						<div style="line-height: 20px"><span>200丸</span></div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-xs-1">15.00</div> -->
<!-- 				<div class="col-xs-2" style="margin-top: 20px;line-height: 24px;"> -->
<!-- 					<span class="col-xs-3 col-xs-offset-1" style="display:inline-block;background-color: #f9f9f9;font-size: 14px;border:1px solid #e9e9e9">-</span> -->
<!-- 					<input class="col-xs-4" style="border:1px solid #e9e9e9" type="text" /> -->
<!-- 					<span class="col-xs-3" style="display:inline-block;background-color: #f9f9f9;font-size: 14px;border:1px solid #e9e9e9">+</span>	 -->
<!-- 				</div> -->
<!-- 				<div class="col-xs-1">15.00</div> -->
<!-- 				<div class="col-xs-2">有货</div> -->
<!-- 				<div class="col-xs-1"> -->
<!-- 					<a>删除</a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
		
		<div class="col-xs-12 " style="padding-top: 20px">
			<div class="col-xs-12" style="height: 48px;background-color:#f0f0f0;line-height: 48px">
				<span id="count" class="col-xs-2 col-xs-offset-5"></span>
				<span class="col-xs-2">优惠：<span style="color: red">￥${coupon }</span></span>
				<span id="total" class="col-xs-2"></span>
				<div class="col-xs-1">
					<button id="nextStep" class="btn btn-danger" type="button">下一步</button>
				</div>
			</div>
		</div>
		
	</div>
<%-- 	<%@include file="../element/footer.jsp"%> --%>
	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<%--     <script src="<%=request.getContextPath()%>/statics/js/jqthumb.js"></script> --%>
    
    <script type="text/javascript">
    	var contextPath = "<%=request.getContextPath()%>";
    	$("#leftBar").hide();
    	$("#allNav").hover(function(){	
    		$("#leftBar").show();
    	},function(){	
    		$("#leftBar").hide();
    	})
    	
    	$(document).ready(function(){
    		if("${cartCount }" == 0){
    			$("#noData")[0].innerHTML = "<span style=\"line-height: 40px;font-size: 24px\">你的购物车空空如也</span>";
    		}
    		
    		$("div[id^='cart-']").each(function(){
    			var medicineId = $(this).data("medicineid");
    			$("#storageStatus-" + medicineId)[0].innerHTML = ($("#storageStatus-" + medicineId).data("amount") > $("#count-" + medicineId).val())?"有货":"缺货";
    		})
    		showTotal();
    		
    		divHover("minus");
    		divHover("add");
    		
    		checkBoxCheck();
    	})
    	
    	function deleteCart(medicineId){
    		var postData = { medicineId : medicineId };
			$.ajax({
				"method" : "POST",
				"url" : contextPath + "/customer/deleteCart",
				"contentType" : "application/json",
				"data" : JSON.stringify(postData),
				"dataType" : "json",
				"crossDomain" : true,
				"success" : function(data){
					if (data.code==1){
						window.location.href = contextPath + "/customer/cartPage";
					 }
				},
				"error" : function(){
					alert("errored.");
				}
			});
    	}
    	
    	$("#nextStep").click(function(){
    		var cartArray = [];
    		$("input[id^='cartCkb-']").each(function(){
    			if($(this).is(":checked")){
    				medicineId = $(this).data("medicineid");
    				postData = { medicineId: medicineId,
    								count: $("#count-" + medicineId).val()};
        			cartArray.push(postData);
    			}
    		})
    		
    		var postDatas = { cartList: cartArray };
			$.ajax({
				"method" : "POST",
				"url" : contextPath + "/customer/cartPage",
				"contentType" : "application/json",
				"data" : JSON.stringify(postDatas),
				"dataType" : "json",
				"crossDomain" : true,
				"success" : function(data){
					if (data.code==1){
						window.location.href = contextPath + "/customer/cartPage";
					 }
				},
				"error" : function(){
					alert("errored.");
				}
			});
    	})
    	
     	//统计选中总数，计算总价格
    	function selectedCount(){
    		var count = [0,0];
    		$("input[id^='cartCkb-']").each(function(){
    			var medicineId = $(this).data("medicineid");
    			if($(this).is(":checked") == true){
    				count[0] += 1;
    				count[1] = count[1] + ($("#total-" + medicineId)[0].innerHTML * 1);
    			}
    		});
    		count[1] = count[1] - ("${coupon }" * 1);
    		return count;
    	}
    	
    	//+ -
    	function divHover(type){
    		$("div[id^='" + type + "-']").hover(function(){
    			$(this).css("background-color","#d9d9d9");
    		},function(){
    			$(this).css("background-color","#f9f9f9");
    		})
    	}
    	
    	function countChange(type,medicineId){
    		var count = $("#count-" + medicineId).val();
    		var price = $("#price-" + medicineId)[0].innerHTML;
    		if(count > 1 || type == "add"){
    			switch(type){
	    			case "minus": $("#count-" + medicineId).val(--count);break;
	    			case "add": $("#count-" + medicineId).val(++count);break;
    			}
    			$("#total-" + medicineId)[0].innerHTML = count * price;
    			showTotal();
    		}
    	}
    	
		//复选框
    	function checkBoxCheck(){
			$("#selectAllCkb").prop("checked", false);
			$("input[id^='cartCkb-']").prop("checked", false);
			$("#selectAllCkb").change(function(){
				$("input[id^='cartCkb-']").prop("checked",$("#selectAllCkb").is(":checked"));

				showTotal();
			});
			$("input[id^='cartCkb-']").change(function(){
				$("#selectAllCkb").prop("checked", isSelectAllCkb());

				showTotal();
			});
    	}
		//判断是否全选
    	function isSelectAllCkb(){
			var flag = 0;
			$("input[id^='cartCkb-']").each(function(){
				if($(this).is(":checked") == false){
					flag = 1;
				}
			});
			return (flag == 0)?true:false;
		}
		
		//显示底部灰条
		function showTotal(){
			var count = selectedCount();
    		$("#count")[0].innerHTML = "共<span style=\"color: red\"> " + count[0] + " </span>件商品";
    		$("#total")[0].innerHTML = "总计：<span style=\"color: red\">￥" + count[1];
		}
    </script>
</body>

</html>
