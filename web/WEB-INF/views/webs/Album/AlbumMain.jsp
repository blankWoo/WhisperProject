<%--
  Created by IntelliJ IDEA.
  User: curonsys
  Date: 2020-02-21
  Time: 오후 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/webs/cmmn/init.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center pb-4">
            <div class="col-md-12 heading-section text-center ftco-animate">
                <h2 class="mb-4">Best Place Destination</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 ftco-animate">
                <div class="project-destination">
                    <a href="#" class="img" style="background-image: url('/images/place-1.jpg');">
                        <div class="text">
                            <h3>Singapore</h3>
                            <span>8 Tours</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3 ftco-animate">
                <div class="project-destination">
                    <a href="#" class="img" style="background-image: url('/images/place-2.jpg');">
                        <div class="text">
                            <h3>Canada</h3>
                            <span>2 Tours</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3 ftco-animate">
                <div class="project-destination">
                    <a href="#" class="img" style="background-image: url(/images/place-3.jpg);">
                        <div class="text">
                            <h3>Thailand</h3>
                            <span>5 Tours</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3 ftco-animate">
                <div class="project-destination">
                    <a href="#" class="img" style="background-image: url(/images/place-4.jpg);">
                        <div class="text">
                            <h3>Autralia</h3>
                            <span>5 Tours</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<c:import url="/cmmn/footer.do"/>
<%@ include file="/WEB-INF/views/webs/cmmn/jsinit.jsp"%>
</body>
</html>
