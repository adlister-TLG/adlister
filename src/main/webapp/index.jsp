<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Clownster!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron">
                    <h2>
                        Hello, Welcome to Clownster!
                    </h2>

                    <p>
                        Tired of juggling your options?  We're Clownster, your #1 user-generated resource for finding, hiring and being a clown! We're here to help you connect with the clown that is perfect for your event or gathering! Search through our independent clown ads to find EXACTLY what you're looking for!  Click below to view our ads, or register to start creating your own ad.
                    </p>
                    <p>
                        <a class="btn btn-primary btn-large" href="/ads">View Ads</a>
                    </p>
                    <p>
                        <a class="btn btn-primary btn-large" href="/register">Register Here</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center text-primary">
                    Here are Some Selected Clowns
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <p>
                    <a class="btn" href="#">View Ad »</a>
                </p>
            </div>
            <div class="col-md-4">
                <p>
                    <a class="btn" href="#">View Ad »</a>
                </p>
            </div>
            <div class="col-md-4">
                <p>
                    <a class="btn" href="#">View Ad »</a>
                </p>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
