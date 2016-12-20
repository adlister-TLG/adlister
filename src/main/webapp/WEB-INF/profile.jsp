<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Clownster Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome to Clownster, ${sessionScope.user.username}!</h1>
    </div>
    <form action="/upload_picture" method="post">
        <div class="form-group">
            <label for="profile_picture">Upload picture</label>
            <input id="profile_picture" name="profile_picture" class="form-control" type="file">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>

</body>
</html>
