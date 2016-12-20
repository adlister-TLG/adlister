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
        <h1>Welcome back to Clownster, ${sessionScope.user.username}!</h1>
        <img src="http://placehold.it/250x300" alt="placeholder">
    </div>

    <div class="container">
        <h2>Bio:</h2>
            <p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.
            </p>
        <h2>Skills/Specialties:</h2>
        <p>
            Ball Juggling, Balloon Twister, Prankster
        </p>
    </div>
    <div class="container">
        <h3>Current ads:</h3>
        <ul style="list-style-type: none">
            <li><a>Kids Birthday Party</a></li>
            <li><a>Kids Birthday Party</a></li>
            <li><a>Kids Birthday Party</a></li>
            <li><a>Kids Birthday Party</a></li>
        </ul>
    </div>
    <div class="container">
        <p>
            <a>Edit Profile</a>
        </p>
        <p>
            <a>Delete Profile</a>
        </p>
    </div>


</body>
</html>
