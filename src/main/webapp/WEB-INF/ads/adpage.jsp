<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 text-center">
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
        </div>
    </div>
</div>
</body>
</html>
