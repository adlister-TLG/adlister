<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container-fluid">

    <h1 class="text-center">Current Clownster Listings</h1>
    <h3 class="text-center">Send in The Clowns!</h3>
<div class="row">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6 text-center">
            <div class="jumbotron">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
                <p>
                    <a href="/ads?id=${ad.id}" class="btn btn-primary btn-large">Show More Details</a>
                </p>
        </div>
        </div>
    </c:forEach>
</div>
</div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
