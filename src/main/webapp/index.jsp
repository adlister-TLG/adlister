<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/adlister_db"
                   user="root"  password="codeup"/>

<sql:query dataSource="${snapshot}" var="result1">
    SELECT *
    FROM users as u
    JOIN images as i
    ON i.user_id = i.id
    ORDER BY RAND()
    LIMIT 1;
</sql:query>
<sql:query dataSource="${snapshot}" var="result2">
    SELECT *
    FROM users as u
    JOIN images as i
    ON i.user_id = i.id
    ORDER BY RAND()
    LIMIT 1;
</sql:query>
<sql:query dataSource="${snapshot}" var="result3">
    SELECT *
    FROM users as u
    JOIN images as i
    ON i.user_id = i.id
    ORDER BY RAND()
    LIMIT 1;
</sql:query>

<sql:query dataSource="${snapshot}" var="snow">
    SELECT * from users where username = 'john_snow';
</sql:query>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Clownster!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />


    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron">
                    <h1>
                        Hello, Welcome to Clownster!
                    </h1>

                    <p>
                        Tired of juggling your options?  We're Clownster, your #1 user-generated resource for finding, hiring and being a clown! We're here to help you connect with the clown that is perfect for your event or gathering! Search through our independent clown ads to find EXACTLY what you're looking for!  Click below to view our ads, or register to start creating your own ad.
                    </p>
                    <p>
                        <a class="btn btn-primary btn-large" href="/ads">View Ads</a>
                    </p>
                    <p>
                        <a class="btn btn-primary btn-large" href="/register">Register Here</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">
                    Here are Some Selected Clowns!
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <c:forEach var="row" items="${result1.rows}">
                    <h3><c:out value="${row.username}"/></h3>
                </c:forEach>
                <img src="http://placehold.it/300x400">
                <button type="button" class="btn btn-default">
                    View Ad
                </button>
            </div>
            <div class="col-md-4">
                <c:forEach var="row" items="${result2.rows}">
                    <h3><c:out value="${row.username}"/></h3>
                </c:forEach>
                <img src="http://placehold.it/300x400">
                <button type="button" class="btn btn-default">
                    View Ad
                </button>
            </div>
            <div class="col-md-4">
                <c:forEach var="row" items="${result3.rows}">
                    <h3><c:out value="${row.username}"/></h3>
                </c:forEach>
                <img src="http://placehold.it/300x400">
                <button type="button" class="btn btn-default">
                    View Ad
                </button>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>

