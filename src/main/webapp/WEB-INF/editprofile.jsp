<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Clownster Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container-fluid">
    <div class="jumbotron">
    <div class="row">
        <div class="col-md-12">
                <h2>
                    Edit Profile
                </h2>

        <!-- edit form column -->
        <div class="col-md-9 personal-info">
            <h4>Personal Info</h4>

            <form class="form-horizontal" role="form" method="post" action="/editprofile">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Bio:</label>
                    <div class="col-lg-8">

                        <input class="form-control" type="text" name="bio">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Skills/Specialties:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="skills">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <input type="submit" class="btn btn-primary" value="Save Changes">
                        <span></span>
                        <input type="reset" class="btn btn-default" value="Cancel">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
    </div>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>