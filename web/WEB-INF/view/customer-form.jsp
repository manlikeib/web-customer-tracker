<%--
  Created by IntelliJ IDEA.
  User: ibrahim
  Date: 27/05/2020
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save Customer</title>
</head>
<body>

    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">

        <form:form action="saveCustomer" modelAttribute="customer" method="post" >

            <!-- need to associate tis data with customer id -->
            <form:hidden path="id" />
            <table>
                <tbody>
                <tr>
                    <td><label>First Name</label></td>
                    <td><form:input path="firstName" /></td>
                </tr>

                <tr>
                    <td><label>Last Name</label></td>
                    <td><form:input path="lastName" /></td>
                </tr>

                <tr>
                    <td><label>Email</label></td>
                    <td><form:input path="email" /></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Save"></td>
                </tr>
                </tbody>
            </table>

        </form:form>

        <div style="clear: both;"></div>

        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
        </p>


    </div>
</body>
</html>
