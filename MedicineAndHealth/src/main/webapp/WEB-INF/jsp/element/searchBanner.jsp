<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<style>
	#headerImgO{
		float:left;
		height:110px;
		width:110px;
	}
	
	#medicineSearch{
		float:left;
		margin:30px 0px 0px 150px;
	}
	#searchBorder{
		width:499px;
		height:50px;
		border:3px solid #0c69ae;
	}
	#search-wrapper{
		width:420px;
		float:left;
		background:white;
	}
	#searchtext{
		width:445px;
		height:46px;
		line-height:33px;
		padding-left:12px;
		border:white
	}
	#searchBtn{
		float:left;
		width:75px;
		height:46px;
		lin-height:46px;
		background:#0c69ae;
		margin-right:-15px;
	}
	#searchBtn input{
		background:none;
		width:75px;
		height:46px;
		border:#0c69ae;
		text-align:center;
		color:white;
	}
	#searchMore a{
		padding-left:12px;
		color:grey;
	}
	#headerImgT{
		float:left;
		height:70px;
		width:70px;
		padding-left:90px;
		padding-top:35px;
	}
   </style>

		<div id="headerImgO">
				<img src="<%=request.getContextPath()%>/statics/images/frontpages/logo.gif" style="height:110px"/>
		</div>
		<div id="medicineSearch">
			<div id="searchBorder">
				<div id="search-wrapper">
					<input id="searchtext" type="text">
				</div>
				<div id="searchBtn">
					<input value="搜索">
				</div>
			</div>
			<div id="searchMore">
				<a style="padding-left:0px;color:grey">六味地黄丸</a>
				<a>感康</a>
				<a>止咳糖浆</a>
				<a>速效救心丸</a>
				<a>感冒灵颗粒</a>
			</div>
		</div>
		<div id="headerImgT">
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
					<div id="leftBar" class="leftHeader" style="text-align:left;">
						<div class="leftNavIndex" style="z-index:2;margin:0 auto;position:relative">
							<div class="pulldown" style="z-index:1;position:absolute;list-style:none">
								<ul class="pullDownList" id="pull">
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon1.png" style="width:20px;"/>
										<a>重大疾病</a>、
										<a>肿瘤</a>、
										<a>肺癌</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon2.png" style="width:20px;"/>
										<a>新药特药</a>、
										<a>血液</a>、
										<a>罕见病</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon3.png" style="width:20px;"/>
										<a>慢性疾病</a>、
										<a>三高</a>、
										<a>帕金森</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon4.png" style="width:20px;"/>
										<a>家庭常备</a>、
										<a>妇科</a>、
										<a>儿科</a>
									</li>
									<li>
										<img src="<%=request.getContextPath()%>/statics/images/homeicon5.png" style="width:20px;"/>
										<a>营养保健</a>、
										<a>减肥</a>、
										<a>亚健康</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
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
    
    
    <script type="text/javascript">
    </script>
