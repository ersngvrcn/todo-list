<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link href="/resources/css/myapp.css" rel="stylesheet">
<script src="/resources/js/bootstrap.min.js"></script>

<body>
	<div class="form-group">
		<h2>
			To-Do List
		</h2>
		<form role="form">
			<input type="text" class="form-control" placeholder="Title" name="task"> 
			<input type="text" class="form-control" placeholder="Description" name="task">
			<div class="add-task-row">
				<button type="button" class="btn btn btn-primary">Add</button>
			</div>
		</form>

	</div>
	<div></div>
	<ul class="list-unstyled" id="todo"></ul>
</body>