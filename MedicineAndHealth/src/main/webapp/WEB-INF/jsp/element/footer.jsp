<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
.footer{
	margin-top:50px;
	width:100%;
	text-align:center;
	verticle:middle;
}
.footer ul{
	height:75px;
	line-height:75px;
	width:705px;
	margin-left:auto;
	margin-right:auto;
}
.footer ul li{
	color:#bc871f;
	font-size:18px;
	float:left;
	margin-right:50px;
}
.footer ul li img{
	width:45px;
}
.footer dl{
	border-top:1px solid grey;
}
.footer dl dd{
	font-size:14px;
	line-height:50px;
}
</style>

<div class="footer">
			<ul>
				<li>
					<img src="<%=request.getContextPath()%>/statics/images/footicon1.png"/>
					正品保障
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/statics/images/footicon2.png"/>
					品牌授权
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/statics/images/footicon3.png"/>
					药监认证
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/statics/images/footicon4.png"/>
					天天省钱
				</li>
			</ul>
			<dl>
				<dd>.
					Copyright©2018-2023 药康网（江苏）医药科技有限公司版权所有，并保留所有权利。互联网药品交易服务证：苏C20160006号
				</dd>
			</dl>
		</div>
		
	<script type="text/javascript">
    </script>