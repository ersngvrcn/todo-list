<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<div class="container">

	<div class="row">
		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickListItems==true}">
						<script>
							window.listId = '${mylist.id}';
						</script>
						<ol class="breadcrumb">
							<li>${mylist.title}</li>
						</ol>
					</c:if>
				</div>

			</div>
			
			<div class="add-task-row">
				<a class="btn btn-success btn-sm pull-left" href="#">Add New Item</a>
			</div>
			
			<div class="row">
				<div class = "col-xs-8">
					<table id = "toDoItemsTable" class = "table table-striped table-borderd">
						<thead>
							<tr>
<!-- 								<th>Id</th> -->
								<th>Title</th>
 								<th>Description</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>

	</div>
</div>