<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
<table class="table table-striped"> 
	<caption> <spring:message code="todo.caption" /> </caption>
	<thead> 
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is Completed?</th>
			<th> </th>
		</tr>
	</thead>
	
	<tbody>
		<!-- for(Todo todo:todos) -->
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td><fmt:formatDate pattern="dd/MM/yyy" value="${todo.targetDate}"/></td>
				<td>${todo.done}</td>
				<td><a href="/update-todo?id=${todo.id}" class="btn btn-primary">Edit</a></td>
				<td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
			</tr>
		</c:forEach> 
	</tbody>
</table>

	<div> 
		<a class="btn btn-success" href="/add-todo">Add</a> 
	</div>
	
</div>
<%@ include file="common/footer.jspf" %>
