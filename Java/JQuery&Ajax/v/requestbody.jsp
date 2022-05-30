<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	#Client - JSON -> Server
	<input id="na">
	<input id="ad">
	<script type="text/javascript" language="javascript" 
		     src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<input type="button" value="주소록 추가" id="insertObj"/><br/><br/>
	<script>
	
	$(function(){
		$("#insertObj").on("click", function(){
		   //var obj = new Object();
		   //obj.name = $("#na").val();
		   //obj.addr = $("#ad").val();
		   
		   var obj = {name:$("#na").val(), addr:$("#ad").val()};
		   var jsonData = JSON.stringify(obj); //jsObj -> json 
		   alert("jsonData: " + jsonData);
		   
		   $.ajax({
			   url: "../rest/json_dto.json", 
			   type: "POST",
			   contentType: "application/json",
			   data: jsonData, 
			   success: function(responseData){
				   alert("seq"+responseData.seq+"responseData.name: " + responseData.name + ", addr : "+responseData.addr);
			   }
		   });
	      });
	});
	</script>