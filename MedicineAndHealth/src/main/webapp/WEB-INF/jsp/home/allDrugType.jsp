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
 <div style="float:right">
 		欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;
    	<span>请登录&emsp;</span>
    	<span>注册&emsp;</span>
    	<span><img src="<%=request.getContextPath()%>/statics/images/cart.png" style="width:25px;height:25px;padding-bottom:5px"/>需求清单</span>
    </div>
   </header>
	<div style="width:1024px;margin:0 auto;">
		<div id="headerImg" style="float:left;height:110px;width:110px">
				<img src="<%=request.getContextPath()%>/statics/images/frontpages/logo.gif" style="height:110px"/>
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
				<a style="color:grey">六味地黄丸</a>
				<a style="padding-left:12px;color:grey">感康</a>
				<a style="padding-left:12px;color:grey">止咳糖浆</a>
				<a style="padding-left:12px;color:grey">速效救心丸</a>
				<a style="padding-left:12px;color:grey">感冒灵颗粒</a>
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
					<a href="#">
						<span style="color:white;font-size:19px">全部药品分类</span>
					</a>
				</div>
				<div class="headerLink">
					<ul>
						<li>首页</li>
					</ul>
					<ul>
						<li>新药特药进口药</li>
					</ul>
					<ul>
						<li>慈善援助</li>
					</ul>
					<ul>
						<li>重大疾病</li>
					</ul>
					<ul>
						<li>慢性疾病</li>
					</ul>
					<ul>
						<li>常见疾病</li>
					</ul>
					<ul>
						<li>健康商城</li>
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
								<a href="#" style="color:#0c69ae;">肿瘤 ></a>
							</dt>
							<dd>
								<a href="#">肝癌</a>
								<a href="#">乳腺癌</a>
								<a href="#">肺癌</a>
								<a href="#">胃癌</a>
								<a href="#">食道癌</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">调节免疫力 ></a>
							</dt>
							<dd>
								<a href="#">免疫调节药</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">器官移植 ></a>
							</dt>
							<dd>
								<a href="#">抗排异药</a>
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
								<a href="#" style="color:#0c69ae;">慢性病 ></a>
							</dt>
							<dd>
								<a href="#">艾滋病</a>
								<a href="#">皮肤疾病</a>
								<a href="#">甲亢</a>
								<a href="#">糖尿病</a>
								<a href="#">心脑血管疾病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">罕见病 ></a>
							</dt>
							<dd>
								<a href="#">地中海贫血</a>
								<a href="#">肺动脉高压</a>
								<a href="#">肢端肥大症</a>
								<a href="#">骨溶解骨痛</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">血液疾病 ></a>
							</dt>
							<dd>
								<a href="#">血友病</a>
								<a href="#">高磷血症</a>
								<a href="#">其它血液疾病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">肝部疾病 ></a>
							</dt>
							<dd>
								<a href="#">肝病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">神经系统 ></a>
							</dt>
							<dd>
								<a href="#">运动神经元疾病</a>
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
								<a href="#" style="color:#0c69ae;">男科用药 ></a>
							</dt>
							<dd>
								<a href="#">性功能障碍</a>
								<a href="#">前列腺疾病</a>
								<a href="#">补肾壮阳药</a>
								<a href="#">雄激素补充</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">心脑血管用药 ></a>
							</dt>
							<dd>
								<a href="#">高血压</a>
								<a href="#">高血脂</a>
								<a href="#">脑血管</a>
								<a href="#">冠心病</a>
								<a href="#">心力衰竭</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">糖尿病 ></a>
							</dt>
							<dd>
								<a href="#">口服降糖药</a>
								<a href="#">注射降糖药</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">肝胆胰类 ></a>
							</dt>
							<dd>
								<a href="#">乙肝用药</a>
								<a href="#">胆结石</a>
								<a href="#">肝炎用药</a>
								<a href="#">脂肪肝</a>
								<a href="#">胰腺炎</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">神经系统用药 ></a>
							</dt>
							<dd>
								<a href="#">帕金森</a>
								<a href="#">老年性痴呆</a>
								<a href="#">晕动症</a>
								<a href="#">头痛用药</a>
								<a href="#">焦虑症</a>
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
								<a href="#" style="color:#0c69ae;">感冒药 ></a>
							</dt>
							<dd>
								<a href="#">清热祛火</a>
								<a href="#">风热感冒</a>
								<a href="#">风寒感冒</a>
								<a href="#">抗菌消炎</a>
								<a href="#">喉咙肿痛</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">妇科用药 ></a>
							</dt>
							<dd>
								<a href="#">妇科炎症</a>
								<a href="#">调经止痛</a>
								<a href="#">补充叶酸</a>
								<a href="#">保胎促孕</a>
								<a href="#">子宫疾病</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">儿科用药 ></a>
							</dt>
							<dd>
								<a href="#">小儿退热</a>
								<a href="#">小儿厌食</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">肠胃用药 ></a>
							</dt>
							<dd>
								<a href="#">腹泻腹痛用药</a>
								<a href="#">急慢性肠胃炎</a>
								<a href="#">胃肠胀气</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">耳鼻喉科用药 ></a>
							</dt>
							<dd>
								<a href="#">口腔溃疡</a>
								<a href="#">中耳炎</a>
								<a href="#">鼻炎</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">补益安神用药></a>
							</dt>
							<dd>
								<a href="#">安神失眠</a>
								<a href="#">补血气</a>
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
								<a href="#" style="color:#0c69ae;">亚健康 ></a>
							</dt>
							<dd>
								<a href="#">抗疲劳</a>
								<a href="#">维生素E</a>
								<a href="#">维生素D</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">美容瘦身 ></a>
							</dt>
							<dd>
								<a href="#">阿胶</a>
								<a href="#">减肥类</a>
								<a href="#">胶原蛋白</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">机能改善 ></a>
							</dt>
							<dd>
								<a href="#">保护肠胃</a>
								<a href="#">改善视力</a>
								<a href="#">护肝解酒</a>
								<a href="#">清润咽喉</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">免疫调节 ></a>
							</dt>
							<dd>
								<a href="#">蛋白质粉</a>
								<a href="#">氨基酸</a>
								<a href="#">矿物质补充</a>
								<a href="#">补铁</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" style="color:#0c69ae;">耳鼻喉科用药 ></a>
							</dt>
							<dd>
								<a href="#">口腔溃疡</a>
								<a href="#">中耳炎</a>
								<a href="#">鼻炎</a>
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
   
    </script>
</body>

</html>
