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
				<img src="<%=request.getContextPath()%>/statics/images/logo.png" style="height:110px;margin-top:15px;width:150px;margin-left:27.5px;"/>
		</div>
		<div id="medicineSearch">
			<div id="searchBorder">
				<div id="search-wrapper">
					<input id="searchtext" type="text">
				</div>
		 		<div> <!-- 暂时 -->
		 			<button id="searchBtn" style="color:white">搜索</button>
		 			
					<!-- 暂时 <input value="搜索">    -->
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
				<div id="allNav" class="nav-all">
					<a href="#">
						<span style="color:white;font-size:19px">全部药品分类</span>
					</a>
					<div id="leftBar" class="leftHeader" style="text-align:left;">
						<div class="leftNavIndex" style="z-index:2;margin:0 auto;position:relative">
							<div class="pulldown" style="z-index:1;position:absolute;list-style:none">
								<ul class="pullDownList" id="pull">
									<li> 
										<img src="<%=request.getContextPath()%>/statics/images/homeicon1.png" style="width:20px;"/>
										<a id="100000" href="<%=request.getContextPath()%>/home/drugTypeSearch/100000" data-id="100000" >重大疾病</a>
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
						<a href="<%=request.getContextPath()%>/home/drugTypeSearch/200000"><li>新药特药进口药</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/charityTheme"><li>慈善援助</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugTypeSearch/100000"><li>重大疾病</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugTypeSearch/300000"><li>慢性疾病</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugTypeSearch/400000"><li>常见疾病</li></a>
					</ul>
					<ul>
						<a href="<%=request.getContextPath()%>/home/drugTypeSearch/500000"><li>健康商城</li></a>
					</ul>
				</div>
			</div>
		</div>
    
    </script>
