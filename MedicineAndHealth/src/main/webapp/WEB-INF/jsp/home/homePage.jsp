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
    <title>首页</title>

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
/*     	.drugRight dl dt img:hover{ */
/*     		display:inline; */
/*     		top:-15px; */
/*     	} */
	.drugListO{
		display:inline;
		top:0px;	
	}
	.drugListO:hover{
		display:inline;
		top:-15px;
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
					<button id="searchBtn" style="background:none;width:75px;height:46px;border:#0c69ae;text-align:center;color:white">搜索</button>
					<input value="搜索" style="background:none;width:75px;height:46px;border:#0c69ae;text-align:center;color:white">
				</div>
			</div>
			<div id="searchMore" style="padding-left:12px;">
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
		
		<div>
			<a href="<%=request.getContextPath()%>/customer/customerService"><img src="<%=request.getContextPath()%>/statics/images/customerservice.gif" style="height:70px;width:50px;margin-left:-70px;margin-top:21px"></a>
		</div>
		
		<div class="header-wrapper" style="clear:both">
			<div class="headerNavMain">
				<div class="nav-all">
					<a href="#">
						<span style="color:white;font-size:19px">全部药品分类</span>
					</a>
					<div class="leftHeader" style="text-align:left;">
						<div class="leftNavIndex" style="z-index:2;margin:0 auto;position:relative">
							<div class="pulldown" style="z-index:1;position:absolute;list-style:none">
								<ul class="pullDownList" id="pull">
									<li> 
										<img src="<%=request.getContextPath()%>/statics/images/homeicon1.png" style="width:20px;"/>
										<a id="100000" href="<%=request.getContextPath()%>/home/drugTypeSearch/100000" data-id="100000" >重大疾病</a>、
										<a id="101000" href="<%=request.getContextPath()%>/home/drugTypeSearch/101000" value="">肿瘤</a>、
										<a id="101030" href="<%=request.getContextPath()%>/home/drugTypeSearch/101030" value="">肺癌</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon2.png" style="width:20px;"/>
										<a id="200000" href="<%=request.getContextPath()%>/home/drugTypeSearch/200000" value="">新药特药</a>、
										<a id="203000" href="<%=request.getContextPath()%>/home/drugTypeSearch/203000" value="">血液</a>、
										<a id="202000" href="<%=request.getContextPath()%>/home/drugTypeSearch/202000" value="">罕见病</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon3.png" style="width:20px;"/>
										<a id="300000" href="<%=request.getContextPath()%>/home/drugTypeSearch/300000" value="">慢性疾病</a>、
										<a id="302000" href="<%=request.getContextPath()%>/home/drugTypeSearch/302000" value="">三高</a>、
										<a id="302010" href="<%=request.getContextPath()%>/home/drugTypeSearch/302010" value="">帕金森</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon4.png" style="width:20px;"/>
										<a id="400000" href="<%=request.getContextPath()%>/home/drugTypeSearch/400000" value="">家庭常备</a>、
										<a id="402000" href="<%=request.getContextPath()%>/home/drugTypeSearch/402000" value="">妇科</a>、
										<a id="403000" href="<%=request.getContextPath()%>/home/drugTypeSearch/403000" value="">儿科</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon5.png" style="width:20px;"/>
										<a id="500000" href="<%=request.getContextPath()%>/home/drugTypeSearch/500000" value="">营养保健</a>、
										<a id="502020" href="<%=request.getContextPath()%>/home/drugTypeSearch/500000" value="">减肥</a>、
										<a id="501000" href="<%=request.getContextPath()%>/home/drugTypeSearch/500000" value="">亚健康</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="headerLink">
					<ul>
						<a href="<%=request.getContextPath()%>/home/homePage"><li>首页</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugSearch/200000"><li>新药特药进口药</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/charityTheme"><li>慈善援助</li></a>
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
		<div style="float:left;padding-left:205px;">
			<div id="wrapper"><!--最外层部分-->
	            <div id="banner"><!--轮播部分-->
	                <ul class="imgList"><!--图片部分-->
	                    <li>
	                    	<img src="<%=request.getContextPath()%>/statics/images/post2.jpg" style="width:819px;height:405px" alt="This is the first picture of drug." />
	                    </li>
	                     <li>
	                     	<img src="<%=request.getContextPath()%>/statics/images/post2.jpg" style="width:819px;height:405px" alt="This is the second picture of drug." />
	                    </li>
	                     <li>
	                        <img src="<%=request.getContextPath()%>/statics/images/post3.jpg" style="width:819px;height:405px" alt="This is the third picture of drug." />
	                    </li>
	                </ul>
<!-- 	                <img src="images/left.png" style="width:40px;height:80px" id="prev"/> -->
<!-- 	                <img src="images/right.png" style="width:40px;height:80px" id="next"/> -->
	            </div>
	        </div>
        </div>
        
        <div style="padding-top:30px;clear:both">
        	<h3 class="drugF1" style="border-bottom:2px solid #63c19f;">
        		<span style="background: #63c19f;color:white">1F&emsp;新药特药</span>
        		<div class="keyword" style="top:680px">
        			<a href="<%=request.getContextPath()%>/home/viewDrug/203011">血宁糖浆</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/205011">力如太</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/201042">佳维乐</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/202012">凡瑞克</a>|
        			<a href="<%=request.getContextPath()%>/home/drugSearch/200000">更多></a>
        		</div>
        	</h3>
        	<div class="drugMain" style="margin-top:-10px">
        		<div class="drugLeft">
        			<a id="201010" href="<%=request.getContextPath()%>/home/drugSearch/201010" value="201010">艾滋病</a>
        			<a id="201020" href="<%=request.getContextPath()%>/home/drugSearch/201020" value="201020">皮肤疾病</a>
        			<a id="201030" href="<%=request.getContextPath()%>/home/drugSearch/201030" value="201030">甲亢</a>
        			<a id="201040" href="<%=request.getContextPath()%>/home/drugSearch/201040" value="201040">糖尿病</a>
        			<a id="204010" href="<%=request.getContextPath()%>/home/drugSearch/204010" value="204010">肝病</a>
        			<a id="205000" href="<%=request.getContextPath()%>/home/drugSearch/205000" value="205000">神经系统</a>
        			<a id="203000" href="<%=request.getContextPath()%>/home/drugSearch/203000" value="203000">血液病</a>
        			<a id="202000" href="<%=request.getContextPath()%>/home/drugSearch/202000" value="202000">罕见病</a>
        			<a id="201050" href="<%=request.getContextPath()%>/home/drugSearch/201050" value="201050">心脑血管</a>
        			<a id="202010" href="<%=request.getContextPath()%>/home/drugSearch/202010" value="202010">肺动脉高压</a>
        		</div>
        		<div class="drugRight" style="float:left">
        			<div class="drugRPic">
        				<img src="<%=request.getContextPath()%>/statics/images/drugF1.jpg" style="width:834px;height:285px" />
        			</div>
        			
        		</div>
        		<div class="drugRList">
        				<dl>
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
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/201042" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/201042.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>维格列汀片(佳维乐)</p>
        						<span>￥ 73.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/202011" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/202011.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>波生坦片(全可利)</p>
        						<span>￥ 3996.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/202021" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/202021.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>氯膦酸二钠胶囊(固令)</p>
        						<span>￥ 1580.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/201052" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/201052.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>拉米夫定胶囊</p>
        						<span>￥ 59.00</span>
        					</dd>
        					</a>
        				</dl>
        			</div>
        	</div>
        </div>
        <div style="padding-top:30px;clear:both">
        	<h3 class="drugF1" style="border-bottom:2px solid #fb375b;">
        		<span style="background: #fb375b;color:white">2F&emsp;慢性疾病</span>
        		<div class="keyword" style="top:1295px">
        			<a href="<%=request.getContextPath()%>/home/viewDrug/301021">阿特芬</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/302052">伊迈格</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/304011">凯西莱</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/304012">天晴复欣</a>|
        			<a href="<%=request.getContextPath()%>/home/drugSearch/300000">更多></a>
        		</div>
        	</h3>
        	<div class="drugMain" style="margin-top:-10px">
        		<div class="drugLeft">
        			<a id="302010" href="<%=request.getContextPath()%>/home/drugSearch/302010" value="302010">高血压</a>
        			<a id="302020" href="<%=request.getContextPath()%>/home/drugSearch/302020" value="302020">高血脂</a>
        			<a id="303000" href="<%=request.getContextPath()%>/home/drugSearch/303000" value="303000">糖尿病</a>
        			<a id="305010" href="<%=request.getContextPath()%>/home/drugSearch/305010" value="305010">帕金森</a>
        			<a id="302040" href="<%=request.getContextPath()%>/home/drugSearch/302040" value="302040">冠心病</a>
        			<a id="302030" href="<%=request.getContextPath()%>/home/drugSearch/302030" value="302030">脑血管病</a>
        			<a id="304010" href="<%=request.getContextPath()%>/home/drugSearch/304010" value="304010">乙肝</a>
        			<a id="304050" href="<%=request.getContextPath()%>/home/drugSearch/304050" value="304050">胰腺炎</a>
        			<a id="301000" href="<%=request.getContextPath()%>/home/drugSearch/301000" value="301000">阳痿</a>
        			<a id="301000" href="<%=request.getContextPath()%>/home/drugSearch/301000" value="301000">早泄</a>
        		</div>
        		<div class="drugRight" style="float:left">
        			<div class="drugRPic">
        				<img src="<%=request.getContextPath()%>/statics/images/drugF2.jpg" style="width:834px;height:285px" />
        			</div>
        			
        		</div>
        		<div class="drugRList">
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/302022" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/302022.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>脂必妥片</p>
        						<span>￥ 9.30</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/305011" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/305011.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>左旋多巴片</p>
        						<span>￥ 30.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/301022" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/301022.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>普乐安片</p>
        						<span>￥13.50</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/301032" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/301032.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>桂附地黄丸</p>
        						<span>￥ 13.80</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/302021" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/302021.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>活血通脉胶囊</p>
        						<span>￥ 76.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/302042" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/302042.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>丹参片</p>
        						<span>￥ 19.90</span>
        					</dd>
        					</a>
        				</dl>
        			</div>
        	</div>
        </div>
        <div style="padding-top:30px;clear:both">
        	<h3 class="drugF1" style="border-bottom:2px solid #373cfb;">
        		<span style="background: #373cfb;color:white">3F&emsp;家庭常备</span>
        		<div class="keyword" style="top:1892px">
        			<a href="<%=request.getContextPath()%>/home/viewDrug/406011">安神胶囊</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/402012">抗宫炎片</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/402031">叶酸片</a>|
        			<a href="<%=request.getContextPath()%>/home/viewDrug/403011">托恩</a>|
        			<a href="<%=request.getContextPath()%>/home/drugSearch/400000">更多></a>
        		</div>
        	</h3>
        	<div class="drugMain" style="margin-top:-10px">
        		<div class="drugLeft">
        			<a id="401020" href="<%=request.getContextPath()%>/home/drugSearch/401020" value="401020">风热感冒</a>
        			<a id="401010" href="<%=request.getContextPath()%>/home/drugSearch/401010" value="401010">清热祛火</a>
        			<a id="404010" href="<%=request.getContextPath()%>/home/drugSearch/404010" value="404010">腹痛腹泻</a>
        			<a id="402010" href="<%=request.getContextPath()%>/home/drugSearch/402010" value="402010">妇科炎症</a>
        			<a id="402020" href="<%=request.getContextPath()%>/home/drugSearch/402020" value="402020">调经止痛</a>
        			<a id="406010" href="<%=request.getContextPath()%>/home/drugSearch/406010" value="406010">安神助眠</a>
        			<a id="405010" href="<%=request.getContextPath()%>/home/drugSearch/405010" value="405010">口腔溃疡</a>
        			<a id="401040" href="<%=request.getContextPath()%>/home/drugSearch/401040" value="401040">抗菌消炎</a>
        			<a id="403010" href="<%=request.getContextPath()%>/home/drugSearch/403010" value="403010">小儿退热</a>
        			<a id="404030" href="<%=request.getContextPath()%>/home/drugSearch/404030" value="404030">胃肠胀气</a>
        		</div>
        		<div class="drugRight" style="float:left">
        			<div class="drugRPic">
        				<img src="<%=request.getContextPath()%>/statics/images/drugF3.png" style="width:834px;height:285px" />
        			</div>
        			
        		</div>
        		<div class="drugRList">
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/401011" style="text-decoration-line: none;">
        						<dt>
        							<img src="<%=request.getContextPath()%>/statics/images/drug/401011.jpg" class="drugListO" />
        						</dt>
        						<dd>
        							<p>牛黄解毒丸</p>
        							<span>￥ 11.10</span>
        						</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/401021" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/401021.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>双黄连口服液</p>
        						<span>￥ 24.80</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/401052" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/401052.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>银翘解毒丸</p>
        						<span>￥ 12.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/401042" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/401042.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>板蓝根颗粒</p>
        						<span>￥18.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/402031" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/402031.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>叶酸片</p>
        						<span>￥ 15.00</span>
        					</dd>
        					</a>
        				</dl>
        				<dl>
        					<a href="<%=request.getContextPath()%>/home/viewDrug/404021" style="text-decoration-line: none;">
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug/404021.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>肠炎宁片</p>
        						<span>￥24.80</span>
        					</dd>
        					</a>
        				</dl>
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
   
    //轮播开始
    var positioncontroll=0;
    var curIndex = 0;
    var imgLen = $(".imgList li").length;
    var autoChange = setInterval(function () {
        if (positioncontroll==0) {
        	if(curIndex==imgLen-1){ 
        		positioncontroll=1;
        		curIndex=curIndex-1;
        	}
        	else curIndex++;
        }
        else {
        	if(curIndex==0){
        		positioncontroll=0;
        		curIndex++;
        	}
        	else curIndex--;
        }
        changeTo(curIndex);
    }, 2500);

//     $("#prev").hover(function () {
//         clearInterval(autoChange);
//     }, function () {
//         autoChangeAgain();
//     });
//     $("#prev").click(function () {
//         if (curIndex > 0) {
//             changeTo(--curIndex);
//         }
//     });

//     $("#next").hover(function () {
//         clearInterval(autoChange);
//     }, function () {
//         autoChangeAgain();
//     });
//     $("#next").click(function () {
//         if (curIndex < imgLen - 1) {
//             changeTo(++curIndex);
//         }
//     });

//     function autoChangeAgain() {
//         autoChange = setInterval(function () {
//         	if (positioncontroll==0) {
//             	if(curIndex==imgLen-1){ 
//             		positioncontroll=1;
//             		curIndex-1;	
//             	}
//             	else curIndex++;
//             }
//             else {
//             	if(curIndex==0){
//             		positioncontroll=1;
//             		curIndex++;
//             	}
//             	else curIndex--;
//             }
//             changeTo(curIndex);
//         }, 2500);
//     }

    function changeTo(num) {
        var goLeft = num * 819;
        $(".imgList").animate({ left: "-" + goLeft + "px" }, 405);
    }
    //轮播结束
    //测试信息
    </script>
    
    <script type="text/javascript">
    <!--已登录-->
    $(document).ready(function(){
    	if($.cookie('userName')!=null){
    		$("#note")[0].innerHTML="<div style=\"float:right\">"+$.cookie('userName')+"，欢迎来到药房网！&emsp;&emsp;&emsp;&emsp;"+
    									"<button id=\"exitLogin\" onclick=\"logout()\">退出登录</button><span><img src=\""+ contextPath +"/statics/images/cart.png\" style=\"width:25px;height:25px;padding-bottom:5px\"/><a href=\""+contextPath+"/customer/cartPage\">需求清单</a></span></div>"
    	}

   	     $("#searchBtn").click(function(){
   	    	 if($("#searchtext").val()!=""){
   	    		 location.href=encodeURI(encodeURI("<%=request.getContextPath()%>/home/drugSearch?seekword="+$("#searchtext").val()))
   	   	 	 }
   	    	 else{
   	    		 location.href="<%=request.getContextPath()%>/home/drugSearch"
   	    	 }  
   	     });
    });  
   	  function skipto(){
   		location.href=encodeURI(encodeURI(contextPath+"/home/drugTypeSearch/"+$(this).data('id')))
   	   
      	//location.href=encodeURI(encodeURI(contextPath+"/home/drugTypeSearch?drugType="+$(this).data('id')))
      }
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
