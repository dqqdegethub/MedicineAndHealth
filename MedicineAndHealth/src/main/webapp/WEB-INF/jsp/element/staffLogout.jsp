<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<style>
   </style>

	<button id="logout" class="btn" type="button" style="background-color:#45a9c9;color:white;width:80px;margin-left:600px">注销</button>
    
   <!-- jQuery (necessary for Bootstraps JavaScript plugins) -->
   <script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>  
    <!-- Dynamic page helper script -->
    <script>var contextPath="<%=request.getContextPath()%>";</script>
    <script src="<%=request.getContextPath()%>/statics/js/jquery.cookie.min.js"></script>
    
    <script type="text/javascript">
    $("#logout").click(function(){
    	var postData={};
		$.ajax({
			"type": "POST",
			"url": contextPath + "/staff/staffLogout",
    		"data" : JSON.stringify(postData),
			"contentType": "application/json",
			"crossDomain": "true",
			"success": function(){
				$.removeCookie("staffName");
				$.removeCookie("staffId");
				$.removeCookie("partment");
				location.href=contextPath+"/staff/staffLogin"
			},
    		"error" : function() {
				alert("error!")
    		}
		})
    })
    </script>
