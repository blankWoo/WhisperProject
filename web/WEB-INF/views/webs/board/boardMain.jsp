<%--
  Created by IntelliJ IDEA.
  User: curonsys
  Date: 2020-02-13
  Time: 오후 1:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/webs/cmmn/init.jsp"%>
<html>
<head>
    <title>Whisper Board</title>
</head>
<body>

<c:import url="/cmmn/header.do"/>
<div class="hero-wrap js-fullheight" style="background-image: url('#');" data-stellar-background-ratio="0.5">
    <div class="overlay" style="height: 100em" ></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-9 text text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <div id="boardList" class="boardList" style="">
                        <section class="ftco-section ftco-no-pt">
                            <div class="container">
                                <div class="row justify-content-center pb-4">
                                    <div class="col-md-12 heading-section text-center ftco-animate">
                                        <h2 class="mb-4">Board</h2>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 ftco-animate">
                                        <div class="project-wrap">
                                            <a href="#" class="img" style="background-image: url(/images/destination-1.jpg);"></a>
                                            <div class="text p-4">
                                                <span class="price">Recommend</span>
                                                <span class="days">Writer : Name</span>
                                                <h3><a href="#">Album : Ablum name</a></h3>
                                                <p class="location"><span class="ion-ios-map"></span> Tag : #... #... #...</p>
                                                <ul>
                                                    <li><span class="flaticon-shower"></span>2</li>
                                                    <li><span class="flaticon-king-size"></span>3</li>
                                                    <li><span class="flaticon-mountains"></span>Near Mountain</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ftco-animate">
                                        <div class="project-wrap">
                                            <a href="#" class="img" style="background-image: url(/images/destination-2.jpg);"></a>
                                            <div class="text p-4">
                                                <span class="price">$300/person</span>
                                                <span class="days">10 Days Tour</span>
                                                <h3><a href="#">Bali, Indonesia</a></h3>
                                                <p class="location"><span class="ion-ios-map"></span> Bali, Indonesia</p>
                                                <ul>
                                                    <li><span class="flaticon-shower"></span>2</li>
                                                    <li><span class="flaticon-king-size"></span>3</li>
                                                    <li><span class="flaticon-sun-umbrella"></span>Near Beach</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ftco-animate">
                                        <div class="project-wrap">
                                            <a href="#" class="img" style="background-image: url(/images/destination-3.jpg);"></a>
                                            <div class="text p-4">
                                                <span class="price">$300/person</span>
                                                <span class="days">7 Days Tour</span>
                                                <h3><a href="#">Bali, Indonesia</a></h3>
                                                <p class="location"><span class="ion-ios-map"></span> Bali, Indonesia</p>
                                                <ul>
                                                    <li><span class="flaticon-shower"></span>2</li>
                                                    <li><span class="flaticon-king-size"></span>3</li>
                                                    <li><span class="flaticon-sun-umbrella"></span>Near Beach</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 ftco-animate">
                                        <div class="project-wrap">
                                            <a href="#" class="img" style="background-image: url(/images/destination-4.jpg);"></a>
                                            <div class="text p-4">
                                                <span class="price">$300/person</span>
                                                <span class="days">8 Days Tour</span>
                                                <h3><a href="#">Bali, Indonesia</a></h3>
                                                <p class="location"><span class="ion-ios-map"></span> Bali, Indonesia</p>
                                                <ul>
                                                    <li><span class="flaticon-shower"></span>2</li>
                                                    <li><span class="flaticon-king-size"></span>3</li>
                                                    <li><span class="flaticon-sun-umbrella"></span>Near Beach</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ftco-animate">
                                        <div class="project-wrap">
                                            <a href="#" class="img" style="background-image: url(/images/destination-5.jpg);"></a>
                                            <div class="text p-4">
                                                <span class="price">$300/person</span>
                                                <span class="days">10 Days Tour</span>
                                                <h3><a href="#">Bali, Indonesia</a></h3>
                                                <p class="location"><span class="ion-ios-map"></span> Bali, Indonesia</p>
                                                <ul>
                                                    <li><span class="flaticon-shower"></span>2</li>
                                                    <li><span class="flaticon-king-size"></span>3</li>
                                                    <li><span class="flaticon-sun-umbrella"></span>Near Beach</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ftco-animate">
                                        <div class="project-wrap">
                                            <a href="#" class="img" style="background-image: url(/images/destination-6.jpg);"></a>
                                            <div class="text p-4">
                                                <span class="price">$300/person</span>
                                                <span class="days">7 Days Tour</span>
                                                <h3><a href="#">Bali, Indonesia</a></h3>
                                                <p class="location"><span class="ion-ios-map"></span> Bali, Indonesia</p>
                                                <ul>
                                                    <li><span class="flaticon-shower"></span>2</li>
                                                    <li><span class="flaticon-king-size"></span>3</li>
                                                    <li><span class="flaticon-sun-umbrella"></span>Near Beach</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <div>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                            <input type="text" placeholder="검색어를 입력해주세요." id="searchText" class="search-form" name="searchText"/>
                            <button id="searchBtn">검색</button>
                            <a id="regist-board-btn" class="button-board" href="/board/boardRegist.do">글쓰기</a>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
<c:import url="/cmmn/footer.do"/>
</body>
<%@ include file="/WEB-INF/views/webs/cmmn/jsinit.jsp"%>
</html>

