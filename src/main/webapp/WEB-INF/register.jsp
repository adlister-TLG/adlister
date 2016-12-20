<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Clownster!"/>
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<div class="container-fluid" id="rcontainer">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">
                Register for Clownster!
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="/register" method="post" class="text-center">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                </div>
                <input type="submit" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
