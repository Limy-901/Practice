<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Sp03 index</title>
	</head>
	<body>
		<div style="text-align:center">
			
			<!--  
			<p>
			<h1>Sp02 Index</h1>
				<a href="board/list.do?cp=1&ps=5">게시판</a><br/>
				<a href="board1/list.do?cp=1&ps=5">게시판 (myBatis)</a><br/>
				<a href="board2/list.do?cp=1&ps=5">게시판 (myBatis2)</a><br/>
				<a href="file/list.do">파일리스트</a><br/>
			</p>
			-->
			
			<h1>Sp03 Index</h1>
			<h3> Ajax </h3>
			<a href="ajax/test01.do">Ajax01 (직접입력)</a>&nbsp;&nbsp;
			<a href="ajax/test02.do">Ajax02 (library)</a>&nbsp;&nbsp;
			<a href="ajax/test03.do">Ajax03</a>&nbsp;&nbsp;
			<a href="ajax/test04.do">Ajax04</a><br/>
			<h3> Restful Server </h3>
			<a href="rest/getText">getText</a>&nbsp;&nbsp;
			<a href="rest/getAddress.json">getAddress1</a>&nbsp;&nbsp;
			<a href="rest/getAddress.xml">getAddress2</a>&nbsp;&nbsp;<br/>
			
			<a href="rest/getList.json">getList1</a>&nbsp;&nbsp;
			<a href="rest/getList.xml">getList2</a>&nbsp;&nbsp;<br/>
			
			<a href="rest/getMap.json">getMap1</a>&nbsp;&nbsp;
			<a href="rest/getMap.xml">getMap2</a>&nbsp;&nbsp;<br/>
			
			<a href="rest/check.xml?heigh=170&weight=70">check1</a>(xml)&nbsp;&nbsp;
			<a href="rest/check.json?heigh=140&weight=45">check2</a>(json)&nbsp;&nbsp;<br/>
			
			<a href="rest/product/bag/001.xml">product/bag/001</a>(xml)&nbsp;&nbsp;
			<a href="rest/product/bag/002.json">product/bag/002</a>(json)&nbsp;&nbsp;<br/>
			
			<a href="ajax/requestbody.do">requestbody.do</a>
			
			
		</div>
	</body>
</html>