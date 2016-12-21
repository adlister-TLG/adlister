<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Clownster Profile" />
    </jsp:include>
    <style>

    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container" align="center">
        <h1>Welcome to Clownster, ${sessionScope.user.username}!</h1>
        <h3>Picture Upload:</h3>
        Select a picture to upload: <br />
        <form action="/UploadImageServlet" method="post" enctype="multipart/form-data">
            <input type="file" name="file" size="50" />
            <br />
            <input type="submit" value="Upload File" />
        </form>
    </div>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

    <div class="container">
        <h2>Bio:</h2>
        <p>
            ${sessionScope.user.bio}
        </p>
        <h2git>Skills/Specialties:</h2git>
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
