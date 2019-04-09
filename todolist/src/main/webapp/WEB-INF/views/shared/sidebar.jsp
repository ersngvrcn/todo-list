<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1 class="my-4">ToDo Lists</h1>
<div class="list-group">
	
	<c:forEach items = "${lists}" var = "mylist">
		<a href="${contextRoot}/myList/${mylist.id}/toDoItems" class="list-group-item">${mylist.title}</a> 
	</c:forEach>
</div>