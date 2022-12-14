<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Board</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
	</script>
</head>
<body>
	<h1>자유게시판</h1>
	<table id="list" width="90%">
	<tr>
		<th>Id</th>
		<th>Category</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Content</th>
		<th>Regdate</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.seq}</td>
			<td>${u.category}</td>
			<td>${u.title}</td>
			<td>${u.writer}</td>
			<td>${u.content}</td>
			<td>${u.regdate}</td>
			<td><a href="editform/${u.seq}">수정하기</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">삭제하기</a></td>
		</tr>
	</c:forEach>
	</table><br/>
	<button type="button" onclick="location.href='add'">등록하기</button>
	<button type="button" onclick="location.href='../login/logout'">로그아웃</button>
</body>
</html>
