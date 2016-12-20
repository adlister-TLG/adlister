<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Log Into Clownster" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Please Log In!</h1>
                    </div>
                </div>
                <form action="/login" method="POST" role="form">
                    <div class="form-group">
                        <label for="username">
                            Username
                        </label>
                        <input type="text" class="form-control" id="username" name="username" />
                    </div>
                    <div class="form-group">

                        <label for="password">
                            Password
                        </label>
                        <input type="password" class="form-control" id="password" name="password" />
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" /> Remember Me
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block" value="Log In">
                        Log In
                    </button>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="partials/scripts.jsp" />
</body>
</html>
