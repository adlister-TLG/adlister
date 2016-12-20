<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Clownster Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome to Clownster, ${sessionScope.user.username}!</h1>
    </div>
    <form action="/upload" method="post" enctype="multipart/form-data">
        <label for="description">Description</label>
        <input type="text" name="description" id="description"/>

        <label for="location">Where was this photo taken?</label>
        <input type="text" name="location" id="location" />

        <input type="file" name="file" />
        <input type="submit" />
    </form>

</body>
</html>
