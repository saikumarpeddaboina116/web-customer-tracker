<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="<c:url value="/resources/css/style.css" />"/>
		  <link type="text/css"
          		  rel="stylesheet"
          		  href="<c:url value="/resources/css/add-customer-style.css" />"/>

</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

<input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;" class="add-button"/>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>


				<c:forEach var="tempCustomer" items="${customer}">
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                 <c:param name="customerId" value="${tempCustomer.id}"/>
                <c:url var="deleteLink" value="/customer/showFormForDelete">
                <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>
                 </c:url>
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						<td>
						<a href="${updateLink}">Update</a>
						<a href="${deleteLink}"
						onclick="if(!(confirm('You are deleting data are you sure?'))) return false"> | Delete </a>						</td>
					</tr>

				</c:forEach>

			</table>

		</div>

	</div>


</body>

</html>









