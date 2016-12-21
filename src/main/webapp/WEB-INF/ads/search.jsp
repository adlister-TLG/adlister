<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%String table = (String) request.getAttribute("table");%>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Clownster Search Results!" />
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container-fluid">
<%= table %>
</div>
</body>
</html>