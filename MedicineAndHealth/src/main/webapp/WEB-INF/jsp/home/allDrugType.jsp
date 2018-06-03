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
    <title>全部分类</title>

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
	a{
		text-decoration: none;
	}
	.drugList{
		padding-bottom: 15px;
	}
	.drugListTil{
		line-height: 36px;
		font-weight: bold;
		font-size: 20px;
		border-bottom: 3px solid #0c69ae;
		display: inline-block;
		padding-right:30px;
		position: relative;
		top: 2px;
	}
	.drugList img{
		width: 28px;
		margin-right: 10px;
		margin-left: 10px;
		margin-bottom: 8px;
	}
	.drugListCont{
		border-top: 3px solid #ccc;
		padding-top: 10px;
	}
	.drugListCont dl{
		margin-bottom: 10px;
		border-bottom: 1px solid #e7e7e7;
	}
	.drugListCont dl::after{
		clear: both;
		content: '.';
		display: block;
		height: 0;
		line-height: 0;
		overflow: hidden;
	}
	.drugListCont dl dt{
		width: 120px;
		text-align: right;
		float: left;
		margin-right: 5px;
		font-size: 14px;
		font-weight: bold;
		line-height: 30px;
	}
	.drugListCont dl dd{
		float: left;
		width: 750px;
		line-height: 30px;
		margin-left: 10px;
	}
	.drugListCont dl dd a{
		font-size: 14px;
		color: #5b5b5b;
	}
	.drugListCont dl dd a::before{
		background: #ccc;
 		height: 10px;
 		width: 1px;
		display: inline-block;
		vertical-align: middle;
		margin: -2px 5px 0 5px;
		content: " ";
	}
    </style>
  </head>

  <body>
    <header>
<!--     <a>登录</a> |  -->
 <div id="note"style="float:right">
 		欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;
    	<a href="<%=request.getContextPath() %>/customer/customerLogin"><span>请登录&nbsp;</span> </a>
    	<a href="<%=request.getContextPath() %>/customer/customerRegister" target="_blank"><span>注册</span> </a>
    	<span><img src="<%=request.getContextPath()%>/statics/images/cart.png" style="width:25px;height:25px;padding-bottom:5px"/><a href="<%=request.getContextPath() %>/customer/cartPage">需求清单</a></span>
    </div>
   </header>
	<div style="width:1024px;margin:0 auto;">
		<div id="headerImg" style="float:left;height:110px;width:110px">
				<img src="<%=request.getContextPath()%>/statics/images/logo.png" style="height:120px;margin-top:15px;width:150px;margin-left:27.5px;"/>
		</div>
		<div id="medicineSearch" style="float:left;margin:30px 0px 0px 150px;">
			<div id="searchBorder" style="width:499px;height:50px;border:3px solid #0c69ae">
				<div id="search-wrapper" style="width:420px;float:left;background:white">
					<input id="searchtext" style="width:445px;height:46px;line-height:33px;padding-left:12px;border:white" type="text">
				</div>
				<div id="searchBtn" style="float:left;width:75px;height:46px;lin-height:46px;background:#0c69ae;margin-right:-15px">
					<input value="搜索" style="background:none;width:75px;height:46px;border:#0c69ae;text-align:center;color:white">
				</div>
			</div>
			<div id="searchMore">
				<a href="<%=request.getContextPath()%>/home/viewDrug/401011" style="color:grey;text-decoration-line: none;">牛黄解毒丸</a>
				<a href="<%=request.getContextPath()%>/home/viewDrug/301041" style="padding-left:12px;color:grey;text-decoration-line: none;">六味地黄丸</a>
				<a href="<%=request.getContextPath()%>/home/viewDrug/302042" style="padding-left:12px;color:grey;text-decoration-line: none;">丹参片</a>
				<a href="<%=request.getContextPath()%>/home/viewDrug/401012" style="padding-left:12px;color:grey;text-decoration-line: none;">四季感冒片</a>
				<a href="<%=request.getContextPath()%>/home/viewDrug/402031" style="padding-left:12px;color:grey;text-decoration-line: none;">叶酸片</a>
			</div>
		</div>
		<div id="headerImg" style="float:left;height:70px;width:70px;padding-left:90px;padding-top:35px">
				<ul>
					<li style="width:200px;height:70px">
						<img src="<%=request.getContextPath()%>/statics/images/phone.png" style="height:40px;float:left"/>
						<span style="font-size:16px;top:20px">客户投诉电话<b style="color:#efb336">15951078533</b>
						</span>
					</li>
				</ul>
		</div>
		
		<div class="header-wrapper" style="clear:both">
			<div class="headerNavMain">
				<div class="nav-all">
					<a href="<%=request.getContextPath()%>/home/allDrugType">
						<span style="color:white;font-size:19px">全部药品分类</span>
					</a>
				</div>
				<div class="headerLink">
					<ul>
						<a href="<%=request.getContextPath()%>/home/homePage"><li>首页</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugSearch/200000"><li>新药特药进口药</li></a>
					</ul>
					<ul>
						<li>慈善援助</li>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugSearch/100000"><li>重大疾病</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugSearch/300000"><li>慢性疾病</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugSearch/400000"><li>常见疾病</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugSearch/500000"><li>健康商城</li></a>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div style="width:1024px;margin:0 auto;">
		<div style="height:54px;line-height:54px;">药房网 > <span style="color:#0c69ae;">全部分类</span></div>
		<div>
			<div style="margin:0 52px 0 44px;padding-top:22px;">
				<div class="drugList">
					<div class="drugListTil">
						<img src="<%=request.getContextPath()%>/statics/images/drugTypeicon.png"/>
						重大疾病
					</div>
					<div class="drugListCont">
						<dl>
							<dt>
								<a id="101000" href="<%=request.getContextPath()%>/home/drugSearch/101000" value="101000" style="color:#0c69ae;">肿瘤 ></a>
							</dt>
							<dd>
								<a id="101010" href="<%=request.getContextPath()%>/home/drugSearch/101010" value="101010">肝癌</a>
								<a id="101020" href="<%=request.getContextPath()%>/home/drugSearch/101020" value="101020">乳腺癌</a>
								<a id="101030" href="<%=request.getContextPath()%>/home/drugSearch/101030" value="101030">肺癌</a>
								<a id="101040" href="<%=request.getContextPath()%>/home/drugSearch/101040" value="101040">胃癌</a>
								<a id="101050" href="<%=request.getContextPath()%>/home/drugSearch/101050" value="101050">食道癌</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="102000" href="<%=request.getContextPath()%>/home/drugSearch/102000" value="102000" style="color:#0c69ae;">调节免疫力 ></a>
							</dt>
							<dd>
								<a id="102010" href="<%=request.getContextPath()%>/home/drugSearch/102010" value="102010">免疫调节药</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="103000" href="<%=request.getContextPath()%>/home/drugSearch/103000" value="103000" style="color:#0c69ae;">器官移植 ></a>
							</dt>
							<dd>
								<a id="103010" href="<%=request.getContextPath()%>/home/drugSearch/103010" value="103010">抗排异药</a>
							</dd>
						</dl>
					</div>
				</div>
				
				<div class="drugList">
					<div class="drugListTil">
						<img src="<%=request.getContextPath()%>/statics/images/drugTypeicon.png"/>
						新药特药
					</div>
					<div class="drugListCont">
						<dl>
							<dt>
								<a id="201000" href="<%=request.getContextPath()%>/home/drugSearch/201000" value="201000" style="color:#0c69ae;">慢性病 ></a>
							</dt>
							<dd>
								<a id="201010" href="<%=request.getContextPath()%>/home/drugSearch/201010" value="201010">艾滋病</a>
								<a id="201020" href="<%=request.getContextPath()%>/home/drugSearch/201020" value="201020">皮肤疾病</a>
								<a id="201030" href="<%=request.getContextPath()%>/home/drugSearch/201030" value="201030">甲亢</a>
								<a id="201040" href="<%=request.getContextPath()%>/home/drugSearch/201040" value="201040">糖尿病</a>
								<a id="201050" href="<%=request.getContextPath()%>/home/drugSearch/201050" value="201050">心脑血管疾病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="202000" href="<%=request.getContextPath()%>/home/drugSearch/202000" value="202000" style="color:#0c69ae;">罕见病 ></a>
							</dt>
							<dd>
								<a id="202010" href="<%=request.getContextPath()%>/home/drugSearch/202010" value="202010">地中海贫血</a>
								<a id="202020" href="<%=request.getContextPath()%>/home/drugSearch/202020" value="202020">肺动脉高压</a>
								<a id="202030" href="<%=request.getContextPath()%>/home/drugSearch/202030" value="202030">肢端肥大症</a>
								<a id="202040" href="<%=request.getContextPath()%>/home/drugSearch/202040" value="202040">骨溶解骨痛</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="203000" href="<%=request.getContextPath()%>/home/drugSearch/203000" value="203000" style="color:#0c69ae;">血液疾病 ></a>
							</dt>
							<dd>
								<a id="203010" href="<%=request.getContextPath()%>/home/drugSearch/203010" value="203010">血友病</a>
								<a id="203020" href="<%=request.getContextPath()%>/home/drugSearch/203020" value="203020">高磷血症</a>
								<a id="203030" href="<%=request.getContextPath()%>/home/drugSearch/203030" value="203030">其它血液疾病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="204000" href="<%=request.getContextPath()%>/home/drugSearch/204000" value="204000" style="color:#0c69ae;">肝部疾病 ></a>
							</dt>
							<dd>
								<a id="204010" href="<%=request.getContextPath()%>/home/drugSearch/204010" value="204010">肝病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="205000" href="<%=request.getContextPath()%>/home/drugSearch/205000" value="205000" style="color:#0c69ae;">神经系统 ></a>
							</dt>
							<dd>
								<a id="205010" href="<%=request.getContextPath()%>/home/drugSearch/205010" value="205010">运动神经元疾病</a>
							</dd>
						</dl>
					</div>
				</div>
			
				<div class="drugList">
					<div class="drugListTil">
						<img src="<%=request.getContextPath()%>/statics/images/drugTypeicon.png"/>
						慢性疾病
					</div>
					<div class="drugListCont">
						<dl>
							<dt>
								<a id="301000" href="<%=request.getContextPath()%>/home/drugSearch/301000" value="301000" style="color:#0c69ae;">男科用药 ></a>
							</dt>
							<dd>
								<a id="301010" href="<%=request.getContextPath()%>/home/drugSearch/301010" value="301010">性功能障碍</a>
								<a id="301020" href="<%=request.getContextPath()%>/home/drugSearch/301020" value="301020">前列腺疾病</a>
								<a id="301030" href="<%=request.getContextPath()%>/home/drugSearch/301030" value="301030">补肾壮阳药</a>
								<a id="301040" href="<%=request.getContextPath()%>/home/drugSearch/301040" value="301040">雄激素补充</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="302000" href="<%=request.getContextPath()%>/home/drugSearch/302000" value="302000" style="color:#0c69ae;">心脑血管用药 ></a>
							</dt>
							<dd>
								<a id="302010" href="<%=request.getContextPath()%>/home/drugSearch/302010" value="302010">高血压</a>
								<a id="302020" href="<%=request.getContextPath()%>/home/drugSearch/302020" value="302020">高血脂</a>
								<a id="302030" href="<%=request.getContextPath()%>/home/drugSearch/302030" value="302030">脑血管</a>
								<a id="302040" href="<%=request.getContextPath()%>/home/drugSearch/302040" value="302040">冠心病</a>
								<a id="302050" href="<%=request.getContextPath()%>/home/drugSearch/302050" value="302050">心力衰竭</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="303000" href="<%=request.getContextPath()%>/home/drugSearch/303000" value="303000" style="color:#0c69ae;">糖尿病 ></a>
							</dt>
							<dd>
								<a id="303010" href="<%=request.getContextPath()%>/home/drugSearch/303010" value="303010">口服降糖药</a>
								<a id="303020" href="<%=request.getContextPath()%>/home/drugSearch/303020" value="303020">注射降糖药</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="304000" href="<%=request.getContextPath()%>/home/drugSearch/304000" value="304000" style="color:#0c69ae;">肝胆胰类 ></a>
							</dt>
							<dd>
								<a id="304010" href="<%=request.getContextPath()%>/home/drugSearch/304010" value="304010">乙肝用药</a>
								<a id="304020" href="<%=request.getContextPath()%>/home/drugSearch/304020" value="304020">胆结石</a>
								<a id="304030" href="<%=request.getContextPath()%>/home/drugSearch/304030" value="304030">肝炎用药</a>
								<a id="304040" href="<%=request.getContextPath()%>/home/drugSearch/304040" value="304040">脂肪肝</a>
								<a id="304050" href="<%=request.getContextPath()%>/home/drugSearch/304050" value="304050">胰腺炎</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="305000" href="<%=request.getContextPath()%>/home/drugSearch/305000" value="305000" style="color:#0c69ae;">神经系统用药 ></a>
							</dt>
							<dd>
								<a id="305010" href="<%=request.getContextPath()%>/home/drugSearch/305010" value="305010">帕金森</a>
								<a id="305020" href="<%=request.getContextPath()%>/home/drugSearch/305020" value="305020">老年性痴呆</a>
								<a id="305030" href="<%=request.getContextPath()%>/home/drugSearch/305030" value="305030">晕动症</a>
								<a id="305040" href="<%=request.getContextPath()%>/home/drugSearch/305040" value="305040">头痛用药</a>
								<a id="305050" href="<%=request.getContextPath()%>/home/drugSearch/305050" value="305050">焦虑症</a>
							</dd>
						</dl>
					</div>
				</div>
			
				<div class="drugList">
					<div class="drugListTil">
						<img src="<%=request.getContextPath()%>/statics/images/drugTypeicon.png"/>
						家庭常备
					</div>
					<div class="drugListCont">
						<dl>
							<dt>
								<a id="401000" href="<%=request.getContextPath()%>/home/drugSearch/401000" value="401000" style="color:#0c69ae;">感冒药 ></a>
							</dt>
							<dd>
								<a id="401010" href="<%=request.getContextPath()%>/home/drugSearch/401010" value="401010">清热祛火</a>
								<a id="401020" href="<%=request.getContextPath()%>/home/drugSearch/401020" value="401020">风热感冒</a>
								<a id="401030" href="<%=request.getContextPath()%>/home/drugSearch/401030" value="401030">风寒感冒</a>
								<a id="401040" href="<%=request.getContextPath()%>/home/drugSearch/401040" value="401040">抗菌消炎</a>
								<a id="401050" href="<%=request.getContextPath()%>/home/drugSearch/401050" value="401050">喉咙肿痛</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="402000" href="<%=request.getContextPath()%>/home/drugSearch/402000" value="402000" style="color:#0c69ae;">妇科用药 ></a>
							</dt>
							<dd>
								<a id="402010" href="<%=request.getContextPath()%>/home/drugSearch/402010" value="402010">妇科炎症</a>
								<a id="402020" href="<%=request.getContextPath()%>/home/drugSearch/402020" value="402020">调经止痛</a>
								<a id="402030" href="<%=request.getContextPath()%>/home/drugSearch/402030" value="402030">补充叶酸</a>
								<a id="402040" href="<%=request.getContextPath()%>/home/drugSearch/402040" value="402040">保胎促孕</a>
								<a id="402050" href="<%=request.getContextPath()%>/home/drugSearch/402050" value="402050">子宫疾病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="403000" href="<%=request.getContextPath()%>/home/drugSearch/403000" value="403000" style="color:#0c69ae;">儿科用药 ></a>
							</dt>
							<dd>
								<a id="403010" href="<%=request.getContextPath()%>/home/drugSearch/403010" value="403010">小儿退热</a>
								<a id="403020" href="<%=request.getContextPath()%>/home/drugSearch/403020" value="403020">小儿厌食</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="404000" href="<%=request.getContextPath()%>/home/drugSearch/404000" value="404000" style="color:#0c69ae;">肠胃用药 ></a>
							</dt>
							<dd>
								<a id="404010" href="<%=request.getContextPath()%>/home/drugSearch/404010" value="404010">腹泻腹痛用药</a>
								<a id="404020" href="<%=request.getContextPath()%>/home/drugSearch/404020" value="404020">急慢性肠胃炎</a>
								<a id="404030" href="<%=request.getContextPath()%>/home/drugSearch/404030" value="404030">胃肠胀气</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="405000" href="<%=request.getContextPath()%>/home/drugSearch/405000" value="405000" style="color:#0c69ae;">耳鼻喉科用药 ></a>
							</dt>
							<dd>
								<a id="405010" href="<%=request.getContextPath()%>/home/drugSearch/405010" value="405010">口腔溃疡</a>
								<a id="405020" href="<%=request.getContextPath()%>/home/drugSearch/405020" value="405020">中耳炎</a>
								<a id="405030" href="<%=request.getContextPath()%>/home/drugSearch/405030" value="405030">鼻炎</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="406000" href="<%=request.getContextPath()%>/home/drugSearch/406000" value="406000" style="color:#0c69ae;">补益安神用药></a>
							</dt>
							<dd>
								<a id="406010" href="<%=request.getContextPath()%>/home/drugSearch/406010" value="406010">安神失眠</a>
								<a id="406020" href="<%=request.getContextPath()%>/home/drugSearch/406020" value="406020">补血气</a>
							</dd>
						</dl>
					</div>
				</div>
			
				<div class="drugList">
					<div class="drugListTil">
						<img src="<%=request.getContextPath()%>/statics/images/drugTypeicon.png"/>
						营养保健
					</div>
					<div class="drugListCont">
						<dl>
							<dt>
								<a id="501000" href="<%=request.getContextPath()%>/home/drugSearch/501000" value="501000" style="color:#0c69ae;">亚健康 ></a>
							</dt>
							<dd>
								<a id="501010" href="<%=request.getContextPath()%>/home/drugSearch/501010" value="501010">抗疲劳</a>
								<a id="501020" href="<%=request.getContextPath()%>/home/drugSearch/501020" value="501020">维生素E</a>
								<a id="501030" href="<%=request.getContextPath()%>/home/drugSearch/501030" value="501030">维生素D</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="502000" href="<%=request.getContextPath()%>/home/drugSearch/502000" value="502000" style="color:#0c69ae;">美容瘦身 ></a>
							</dt>
							<dd>
								<a id="502010" href="<%=request.getContextPath()%>/home/drugSearch/502010" value="502010">阿胶</a>
								<a id="502020" href="<%=request.getContextPath()%>/home/drugSearch/502020" value="502020">减肥类</a>
								<a id="502030" href="<%=request.getContextPath()%>/home/drugSearch/502030" value="502030">胶原蛋白</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="503000" href="<%=request.getContextPath()%>/home/drugSearch/503000" value="503000" style="color:#0c69ae;">机能改善 ></a>
							</dt>
							<dd>
								<a id="503010" href="<%=request.getContextPath()%>/home/drugSearch/503010" value="503010">保护肠胃</a>
								<a id="503020" href="<%=request.getContextPath()%>/home/drugSearch/503020" value="503020">改善视力</a>
								<a id="503030" href="<%=request.getContextPath()%>/home/drugSearch/503030" value="503030">护肝解酒</a>
								<a id="503040" href="<%=request.getContextPath()%>/home/drugSearch/503040" value="503040">清润咽喉</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="504000" href="<%=request.getContextPath()%>/home/drugSearch/504000" value="504000" style="color:#0c69ae;">免疫调节 ></a>
							</dt>
							<dd>
								<a id="504010" href="<%=request.getContextPath()%>/home/drugSearch/504010" value="504010">蛋白质粉</a>
								<a id="504020" href="<%=request.getContextPath()%>/home/drugSearch/504020" value="504020">氨基酸</a>
								<a id="504030" href="<%=request.getContextPath()%>/home/drugSearch/504030" value="504030">矿物质补充</a>
								<a id="504040" href="<%=request.getContextPath()%>/home/drugSearch/504040" value="504040">补铁</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a id="505000" href="<%=request.getContextPath()%>/home/drugSearch/505000" value="505000" style="color:#0c69ae;">耳鼻喉科用药 ></a>
							</dt>
							<dd>
								<a id="505010" href="<%=request.getContextPath()%>/home/drugSearch/505010" value="505010">口腔溃疡</a>
								<a id="505020" href="<%=request.getContextPath()%>/home/drugSearch/505020" value="505020">中耳炎</a>
								<a id="505030" href="<%=request.getContextPath()%>/home/drugSearch/505030" value="505030">鼻炎</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
        
        
	<div class="footer" style="margin-top:50px;width:100%;text-align:center;verticle:middle;">
			<ul style="height:75px;line-height:75px;width:705px;margin-left:auto;margin-right:auto;">
				<li style="color:#bc871f;font-size:18px;float:left;margin-right:50px;">
					<img src="<%=request.getContextPath()%>/statics/images/footicon1.png" style="width:45px;"/>
					正品保障
				</li>
				<li style="color:#bc871f;font-size:18px;float:left;margin-right:50px">
					<img src="<%=request.getContextPath()%>/statics/images/footicon2.png" style="width:45px;"/>
					品牌授权
				</li>
				<li style="color:#bc871f;font-size:18px;float:left;margin-right:50px">
					<img src="<%=request.getContextPath()%>/statics/images/footicon3.png" style="width:45px;"/>
					药监认证
				</li>
				<li style="color:#bc871f;font-size:18px;float:left;margin-right:50px">
					<img src="<%=request.getContextPath()%>/statics/images/footicon4.png" style="width:45px;"/>
					天天省钱
				</li>
			</ul>
			<dl style="border-top:1px solid grey;">
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
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/jqthumb.js"></script>
    
    <script type="text/javascript">
    <!--已登录-->
    $(document).ready(function(){
    	if($.cookie('userName')!==null){
    		$("#note")[0].innerHTML="<div style=\"float:right\">"+$.cookie('userName')+"，欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;"+
    									"<button id=\"exitLogin\" onclick=\"logout()\">退出登录</button><span><img src=\""+ contextPath +"/statics/images/cart.png\" style=\"width:25px;height:25px;padding-bottom:5px\"/><a href=\""+contextPath+"/customer/cartPage\">需求清单</a></span></div>"
    	}
    	
    	var str="<%=request.getContextPath()%>/home/drugSearch?seekword="
   	     $("#searchBtn").click(function(){
   	    	 if($("#searchtext").val()!=""){
   	    		 location.href=encodeURI(encodeURI("<%=request.getContextPath()%>/home/drugSearch?seekword="+$("#searchtext").val()))
   	   	 	 }
   	    	 else{
   	    		 location.href="<%=request.getContextPath()%>/home/drugSearch"
   	    	 }  
   	     }); 
    	
    })
    <!--退出登录-->
    function logout(){
    	$.cookie('userName', '', { expires: -1 });
    	$("#note")[0].innerHTML="<div style=\"float:right\">"+
 		"欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;"+
    	"<a href=\""+contextPath+"/customer/customerLogin\"><span>请登录&nbsp;</span> </a>"+
    	"<a href=\""+contextPath+"/customer/customerRegister\"><span>注册</span> </a>" +
    	"<span><img src=\""+contextPath+"/statics/images/cart.png\" style=\"width:25px;height:25px;padding-bottom:5px\"/><a href=\""+contextPath+"/customer/cartPage\">需求清单</a></span></div>"
    }
    </script>
</body>

</html>
