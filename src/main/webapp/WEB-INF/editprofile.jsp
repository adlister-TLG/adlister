<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Clownster Profile" />
    </jsp:include>
<script>

</script>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<div class="container">
    <h1>Edit Profile</h1>
    <hr>
    <div class="row">
        <!-- left column -->
        <div class="col-md-3">
            <div class="text-center">
                <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                <h6>Upload a different photo...</h6>

                <input type="file" class="form-control">
            </div>
        </div>

        <!-- edit form column -->
        <div class="col-md-9 personal-info">
            <h3>Personal info</h3>

            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Bio:</label>
                    <div class="col-lg-8">

                        <textarea cols="94" rows="2"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Skills/Specialties:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" value="">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <input type="button" class="btn btn-primary" value="Save Changes">
                        <span></span>
                        <input type="reset" class="btn btn-default" value="Cancel">
                    </div>
                </div>
                <div class="col-md-8" align="center">
                    <a href="">
                        Delete Profile
                    </a>
                </div>
            </form>

        </div>
    </div>
</div>
<hr>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>