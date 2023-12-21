<%@page import="model.entity.TodoBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<TodoBean> todoList = (List) request.getAttribute("todoList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todo一覧</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<body>
	<div class="text-center">
		<h1>todo一覧</h1>
		<a class="mb-3 btn btn-outline-primary" href="todo-register">todo登録</a>
		<table class="table table-bordered w-75 mx-auto">
			<thead>
				<tr>
					<th class="p-3">todoId</th>
					<th class="p-3">タイトル</th>
					<th class="p-3">内容</th>
					<th class="p-3">期限</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (TodoBean todo : todoList) {
				%>
				<tr>
					<td  class="p-3"><%=todo.getTodoId()%></td>
					<td  class="p-3"><%=todo.getTitle()%></td>
					<td  class="p-3"><%=todo.getComment()%></td>
					<td  class="p-3"><%=todo.getDeadline()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<a class="btn btn-secondary ml-5 mb-3" href="top.jsp">トップ画面</a>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>