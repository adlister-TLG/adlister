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
            <div class="col-md-12">
                <h1 class="text-center">Viewing Ad</h1>
                <div class="jumbotron">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <p>
                        <a href="/ads" class="btn btn-primary btn-large" href="#">Back to All Ads</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
