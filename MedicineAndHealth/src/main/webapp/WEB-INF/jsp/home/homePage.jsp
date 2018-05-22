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
  	<%@include file="../element/header.jsp"%>
	<div class="main">
		<%@include file="../element/searchBanner.jsp"%>
		
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
        			<a>泰瑞莎</a>|
        			<a>达格列净</a>|
        			<a>凯美纳</a>|
        			<a>盖平</a>|
        			<a>更多></a>
        		</div>
        	</h3>
        	<div class="drugMain" style="margin-top:-10px">
        		<div class="drugLeft">
        			<a>肺癌</a>
        			<a>乳腺癌</a>
        			<a>胃癌</a>
        			<a>肝癌</a>
        			<a>肺癌</a>
        			<a>移植</a>
        			<a>血液病</a>
        			<a>罕见病</a>
        			<a>男科肿瘤</a>
        			<a>妇科肿瘤</a>
        		</div>
        		<div class="drugRight" style="float:left">
        			<div class="drugRPic">
        				<img src="<%=request.getContextPath()%>/statics/images/drugF1.jpg" style="width:834px;height:285px" />
        			</div>
        			
        		</div>
        		<div class="drugRList">
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug11.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>盐酸西卡那塞片</p>
        						<span>￥ 398.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug12.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>注射用阿扎胞苷</p>
        						<span>￥ 2625.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug13.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>马来酸阿法替尼片</p>
        						<span>￥ 1845.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug14.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>艾塞那肽注射液</p>
        						<span>￥ 1542.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug15.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>达沙阿法替尼片（依尼舒）</p>
        						<span>￥ 462.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug16.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>达格列净片（安达唐）</p>
        						<span>￥ 228.00</span>
        					</dd>
        				</dl>
        			</div>
        	</div>
        </div>
        <div style="padding-top:30px;clear:both">
        	<h3 class="drugF1" style="border-bottom:2px solid #fb375b;">
        		<span style="background: #fb375b;color:white">2F&emsp;慢性疾病</span>
        		<div class="keyword" style="top:1280px">
        			<a>爱谱沙</a>|
        			<a>凡瑞克</a>|
        			<a>韦瑞德</a>|
        			<a>泰毕全</a>|
        			<a>更多></a>
        		</div>
        	</h3>
        	<div class="drugMain" style="margin-top:-10px">
        		<div class="drugLeft">
        			<a>高血压</a>
        			<a>高血脂</a>
        			<a>糖尿病</a>
        			<a>帕金森</a>
        			<a>冠心病</a>
        			<a>脑血管病</a>
        			<a>乙肝</a>
        			<a>银屑病</a>
        			<a>阳痿</a>
        			<a>早泄</a>
        		</div>
        		<div class="drugRight" style="float:left">
        			<div class="drugRPic">
        				<img src="<%=request.getContextPath()%>/statics/images/drugF2.jpg" style="width:834px;height:285px" />
        			</div>
        			
        		</div>
        		<div class="drugRList">
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug21.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>脂必妥片</p>
        						<span>￥ 9.30</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug22.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>左旋多巴片</p>
        						<span>￥ 30.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug23.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>戊四硝酯片</p>
        						<span>￥ 14.60</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug24.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>桂利嗪片</p>
        						<span>￥ 5.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug25.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>安络化纤丸</p>
        						<span>￥ 76.00</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug26.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>他达拉非片</p>
        						<span>￥ 398.00</span>
        					</dd>
        				</dl>
        			</div>
        	</div>
        </div>
        <div style="padding-top:30px;clear:both">
        	<h3 class="drugF1" style="border-bottom:2px solid #373cfb;">
        		<span style="background: #373cfb;color:white">3F&emsp;家庭常备</span>
        		<div class="keyword" style="top:1875px">
        			<a>复方阿胶浆</a>|
        			<a>肾宝片</a>|
        			<a>蛋白粉</a>|
        			<a>肠炎宁</a>|
        			<a>更多></a>
        		</div>
        	</h3>
        	<div class="drugMain" style="margin-top:-10px">
        		<div class="drugLeft">
        			<a>风热感冒</a>
        			<a>清热祛火</a>
        			<a>腹痛腹泻</a>
        			<a>妇科炎症</a>
        			<a>皮炎湿疹</a>
        			<a>安神助眠</a>
        			<a>口腔溃疡</a>
        			<a>抗菌消炎</a>
        			<a>降脂减肥</a>
        			<a>胃痛胃胀</a>
        		</div>
        		<div class="drugRight" style="float:left">
        			<div class="drugRPic">
        				<img src="<%=request.getContextPath()%>/statics/images/drugF3.png" style="width:834px;height:285px" />
        			</div>
        			
        		</div>
        		<div class="drugRList">
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug31.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>柴银口服液</p>
        						<span>￥ 14.50</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug32.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>清火栀麦片</p>
        						<span>￥ 12.40</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug33.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>肠炎宁片（康恩贝）</p>
        						<span>￥ 29.90</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug34.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>黄藤素片</p>
        						<span>￥13.10</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug35.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>复方樟脑乳膏</p>
        						<span>￥ 13.47</span>
        					</dd>
        				</dl>
        				<dl>
        					<dt>
        						<img src="<%=request.getContextPath()%>/statics/images/drug36.jpg" class="drugListO" />
        					</dt>
        					<dd>
        						<p>百乐眠胶囊</p>
        						<span>￥31.50</span>
        					</dd>
        				</dl>
        			</div>
        	</div>
        </div>
	</div>
	<%@include file="../element/footer.jsp"%>
	
	
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
</body>

</html>
