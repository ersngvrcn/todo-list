<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link href="/resources/css/myapp.css" rel="stylesheet">
<script src="/resources/js/bootstrap.min.js"></script>

<body>
	<div class="form-group">
		<h2>
			To-Do List
		</h2>
		<sf:form class="form" modelAttribute="toDoList" action = "${contextRoot}/createlist" method = "POST">
			<sf:input type="text" class="form-control" placeholder="Title" path="title" id = "title"/> 
			<sf:input type="text" class="form-control" placeholder="Description" path="description" id = "description"/>
			<div class="add-task-row">
				<input type="submit" class="btn btn-primary" name = "submit" id = "submit" value="Submit"/>
			</div>
		</sf:form>

	</div>
	<div></div>
	<ul class="list-unstyled" id="todo"></ul>
</body>