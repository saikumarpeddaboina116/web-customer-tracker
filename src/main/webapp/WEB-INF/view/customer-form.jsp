<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
          		  href="<c:url value="/resources/css/add-customerstyle.css" />"/>

</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
	<h3> Save Customer <h3>
	<form:form action="saveCustomer" modelAttribute="customer" method="POST">
	<form:hidden path="id"/>
	<table>
	        <tr>
	        <td> <label> First Name </label></td>
	        <td> <form:input path="firstName"/></td>
	        </tr>
	           <tr>
            	    <td> <label> Last Name</label> </td>
            	       <td> <form:input path="lastName"/></td>
               </tr>
                  <tr>
               	      <td> <label> Email</label></td>
               	        <td> <form:input path="email"/></td>
               	  </tr>
               	  <tr>
               	  <td></td>
               	  <td><input type="submit" value="Save Data" class="save"/></td>
               	  </tr>


	</table>
	<br><br>

	</form:form>
	<div style="clear; both;"></div>
	<p>
	<a  href="${pageContext.request.contextPath}/customer/list">Back to List</a>

	</p>

	</div>
	</body>
	</html>
