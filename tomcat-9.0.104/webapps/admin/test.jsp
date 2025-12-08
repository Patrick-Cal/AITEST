<%@ page import="org.broadleafcommerce.admin.web.controller.entity.AdminProductController" %>
<%
    AdminProductController controller = new AdminProductController();
    String message = controller.getTestMessage();
%>
<html>
<body>
<h1>Springloaded Test Page</h1>
<p>Message: <%= message %></p>
</body>
</html>