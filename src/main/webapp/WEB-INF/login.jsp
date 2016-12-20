<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Log Into Clownster" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center">Please Log In!</h1>
                    </div>
                </div>
                <div id="logincontainer">
                    <form action="/login" method="POST" role="form">
                        <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" class="form-control">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" class="form-control">
                        <div id="lower">
                            <input type="checkbox"><label class="check" id="checkbox">Keep me logged in</label>
                            <input type="submit" value="Login">
                        </div><!--/ lower-->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
