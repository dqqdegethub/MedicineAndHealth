<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	.showBar{
		height:50px;
		border-left:5px solid #45a9c9;
		background-color:#abc2d5;
	}
	.showBar img{
		width:20px;
		margin-left:25px;
	}
	.showBar span{
		line-height:50px;
		margin-left:10px;
	}
	.unshowBar{
		height:50px;
		background-color:#c4dbed;
	}
	.unshowBar img{
		width:20px;
		margin-left:30px;
	}
	.unshowBar span{
		line-height:50px;
		color:#6B8A8F;
		margin-left:10px;
	}
	.isHover{
		background-color: #dbe8f3;
	}
</style>

	<div style="width: 20%;height:450px;background-color:#c4dbed;float:left">
		<div style="width:200px;height:50px;text-align:center;">
			<label style="line-height:50px;font-size:18px">${customer.userName }</label>
		</div>
		<img id="customerImg" src="<%=request.getContextPath()%>/statics/images/customers/${customer.id }.jpeg" style="width:100px;margin-left:50px"/>
		
		<div class="showBar centerLeftNav" id="indent" style="margin-top:70px;">
			<img id="indentImg" src="<%=request.getContextPath()%>/statics/images/staffIndexicon4.png" />
			<span>我的清单</span>
		</div>
		
		<div class="unshowBar centerLeftNav" id="information">
			<img id="informationImg" src="<%=request.getContextPath()%>/statics/images/staffIndexicon1.png"/>
			<span>个人信息</span>
		</div>
		<div style="width:150px;height:10px;border-top:2px solid #4587A1;margin-top: 40px"></div>
		<div style="margin-left:15px"></div>
	</div>
	
	<!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script>
    
	  	//leftNav
		$(".centerLeftNav").hover(function(){
			$(this).addClass("isHover")
		},function(){
			$(this).removeClass("isHover");
		})
		
		function leftBarStyleShow(){
			switch($.cookie("customerLeftBar")){
				case "1":
					console.log(1)
					$("#indent").removeClass("showBar");
					$("#indent").addClass("unshowBar");
					$("#information").removeClass("unshowBar");
					$("#information").addClass("showBar");

					$("#informationImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon3.png');
					$("#indentImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon2.png');
					break;
				default:
					console.log(0)
					$("#information").removeClass("showBar");
					$("#information").addClass("unshowBar");
					$("#indent").removeClass("unshowBar");
					$("#indent").addClass("showBar");

					$("#indentImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon4.png');
					$("#informationImg").attr('src','<%=request.getContextPath()%>/statics/images/staffIndexicon1.png');
					break;
			}
		}
		
    </script>
    