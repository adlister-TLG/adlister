<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <!-- Brand and toggle get grouped for better mobile display -->

                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">Clownster</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/ads/create">Create an Ad</a>
                        </li>
                        <li>
                            <a href="/ads">View Ads</a>
                        </li>
                        <c:if test="${sessionScope.user == null}">
                            <li>
                                <a href="/register">Register</a>
                            </li>
                        </c:if>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="http://placehold.it/18x18"
                                     class="profile-image img-circle"> ${sessionScope.user.username} <strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/profile">Your Profile</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="/ads/create">Create an Ad</a>
                                </li>
                                <li class="divider">
                                </li>
                                <c:choose>
                                    <c:when test="${sessionScope.user == null}">
                                        <li>
                                            <a href="/login">Login</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="/logout">Logout</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>

