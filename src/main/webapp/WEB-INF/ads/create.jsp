<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a New Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid">
        <h1 class="text-center">Create An Ad</h1>
        <div id="CreateDiv">
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title" class="text-center">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description" class="text-center">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="exampleImageFile" class="text-center">
                    Upload a Picture
                </label>
                <input type="image" id="exampleImageFile" />
                <p class="help-block">
                    Upload an image to draw more attention to your ad!
                </p>
            </div>
            <input type="submit" value="Create Ad" class="btn btn-primary">
        </form>
        </div>
    </div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
