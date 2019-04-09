$(function() {
	var $table = $('#toDoItemsTable');

	if ($table.length) {
		// console.log('Inside the table');
		var jsonUrl = '';

		if (window.listId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/toDoitems';
		} else {
			jsonUrl = window.contextRoot + '/json/data/mylist/' + window.listId
					+ '/toDoitems';
		}
		
		/*var items = [
		             ['1','qbc'],
		             ['2','asasd']
		             
		             ];
		
		$table.DataTable({
			data:items
		});*/

		$table.DataTable({
			ajax : {
				url : jsonUrl,
				dataSrc : ''
			},
			columns : [
//			           {
//			        	   data : 'id'
//			           },
			           {
			        	   data : 'title'
			           },	        
			           {
			        	   data : 'description'
			           }
			           
			           ]
		});
	}
});