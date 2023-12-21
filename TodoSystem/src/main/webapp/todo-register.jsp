<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todo登録</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="text-center">
		<h1>todo登録</h1>
		<form action="todo-register" method="post">
			<div class="form-group col-3 mx-auto">
				<label class="control-label" for="title">タイトル</label> <input
					type="text" name="title" class="form-control" id="title"
					placeholder="タイトル">
			</div>
			<div class="form-group col-3 mx-auto mt-3">
				<label for="comment" class="control-label">コメント</label>
				<textarea name="comment" id="comment" class="form-control"
					placeholder="コメント"></textarea>
			</div>
			<div class="form-group col-3 mx-auto mt-3">
				<label for="deadLine" class="control-label">期限</label> <input
					type="date" name="deadLine" id="deadLine" class="form-control">
			</div>
			<button type="submit" class="btn btn-primary mt-4">登録</button>
			<a href="todo-list" class="btn btn-outline-secondary mt-4 ml-4">戻る</a>
		</form>
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