<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Components of page list
     Dependencies:
       bootstrap.min.css
-->

  <style>
   .text-center
   {
  		text-align:center
   }
   .pagination
   {
   		display:inlin-block;
   		padding-left:0;
   		margin:20px 0;
   		border-radius:4px;
   }
   .pagination>li
   {
   		display:inline;
   }
   .page-highlightened{
   		background-color: rgba(86,61,124,.15);
   }
   .pagination > li > a:hover{
   		z-index:2;
   		color:white;
   		background-color:#23527c;
   		cursor:pointer;
   }
  </style>
  
  <!--Anchor_Start-->
  <div class="text-center">
    	<ul data-total="0" id="pageList" class="pagination">
<!-- <li><a>»</a></li> -->    		
    	</ul>
    	
  </div>
<!--Anchor_End--> 
<script>
	function renderPageList(ct){
		$("#pageList")[0].setAttribute("data-total",ct)
		var _ = ""
		for (var i = 0; i < ct; i++){
			var n = Number(i) + 1
			_ += "<li id=\"page-list-" + i + "\" class=\"pageCode\" onclick=\"showPage(" + i + ")\"><a>" + n + "</a></li>"
		}
		return _
	}
</script>
 
