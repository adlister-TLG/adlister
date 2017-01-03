<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Clownster Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">Welcome to Clownster, ${sessionScope.user.username}!</h1>
        </div>
    </div>
    <div class="row jumbotron">
        <div class="col-md-6">
            <h2>Bio:</h2>
            <p>
                <strong>${sessionScope.user.bio}</strong>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Skills/Specialties:</h2>
            <p>
                <strong>${sessionScope.user.skills}</strong>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <p>
                <a href="/editprofile" class="btn btn-primary btn-large">Edit Profile</a>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>
                Current Ads:
            </h3>
            <ul>
                <li>
                    Lorem ipsum dolor sit amet
                </li>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>