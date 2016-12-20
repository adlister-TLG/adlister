<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Clownster Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container" align="center">
        <h1>Welcome to Clownster, ${sessionScope.user.username}!</h1>
        <img src="http://placehold.it/250x300" alt="placeholder">
    </div>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

    <div class="container">
        <h2>Bio:</h2>
        <p>
        </p>
        <h2>Skills/Specialties:</h2>
        <p>
        </p>
    </div>
    <div class="container">
        <h3>Current ads:</h3>
        <ul style="list-style-type: none">
        </ul>
        <p></p>
    </div>
    <div class="container">
        <p>
            <a href="/editprofile">Edit Profile</a>
        </p>
    </div>


</body>
</html>
