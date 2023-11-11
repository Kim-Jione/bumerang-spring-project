<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <link rel="stylesheet" href="/css/mainform.css">
                <link rel="stylesheet" href="/css/default.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
                    integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />

                <title>Document</title>
            </head>

            <body>
                <div class="loader">
                    <div class="loading">
                        <div class="text">
                            <h2>부산 <span class="accent">메이트</span><span class="accent2">랑</span></h2>
                        </div>
                        <label class="percent">100%</label>
                        <div class="progress-bar">
                            <div class="progress"></div>
                        </div>
                    </div>
                </div>
                <!-- 헤더 -->
                <%@ include file="layout/header.jsp" %>
                    <div class="container">
                        <div class="header" style="margin: 10px 30px">


                        </div>
                        <div class="effect">
                            <div class="birt">
                                <img src="/image/giphy2.gif" alt="">
                            </div>
                            <div class="comm"></div>
                        </div>
                        <div class="list">
                            <div class="item" id="item_0">
                                <img src="/image/sky2.png" alt="" />
                                <div class="content">
                                    <h2>부산 상공 20,000피트</h2>
                                    <div class="content1">
                                        안녕, 나는 '부메랑(부산+메이트+문화랑)' 홈페이지의 마스코트를 맡은 미로라고해. <br>
                                        현재 내가 있는 곳은 부산 상공 20,000피트야!<br>
                                        지금부터 우리 홈페이지에 관심을 가질 수 있도록 부산의 영화제와 문화에 대해 소개하러 빠르게 이동할게, 잘 따라와줘!<br>
                                        (다음 버튼을 클릭해서 넘어가줘)
                                    </div>
                                </div>
                            </div>
                            <div class="item" id="item_1">
                                <img src="/image/hing.jpg" alt="" />
                                <div class="content">
                                    <h2>부산 국제 영화제</h2>
                                    <div class="content1">
                                        먼저, 부산 국제 영화제의 주 개최지인 영화의 전당을 보면서 이야기 해줄게.<br>
                                        1996년 부산에서 최초로 개최되어 지금까지 매년 열리고 있는 부산국제영화제(BIFF)는 국제적으로 유명한 영화제 중 하나야.<br>
                                        BIFF는 부산의 영화 문화를 세계에 알리고 아시아의 영화 산업을 발전시키는데 큰 역할을 해주었지.<br>
                                        이를 계기로 다양한 문화예술 컨텐츠가 폭발적으로 생산되기 시작했어. 바로 이곳 부산에서!
                                    </div>
                                </div>
                            </div>
                            <div class="item " id="item_2">
                                <img src="/image/603.jpg" alt="" />
                                <div class="content">
                                    <h2>꿈을 키우고 있는 청년들</h2>
                                    <div class="content1">
                                        부산에는 현재 다양한 영화콘텐츠 관련 학과들이 생겨나고<br />
                                        꿈을 키우고 있습니다
                                    </div>
                                </div>
                            </div>
                            <div class="item " id="item_3">
                                <img src="/image/604.jpg" alt="" />
                                <div class="content">
                                    <h2>꿈을 키우고 있는 청년들</h2>
                                    <div class="content1">
                                        부산에는 현재 다양한 영화콘텐츠 관련 학과들이 생겨나고<br />
                                        꿈을 키우고 있습니다
                                    </div>
                                </div>
                            </div>
                            <div class="item" id="item_4">
                                <img src="/image/kwan.jfif" alt="" />
                                <div class="content">
                                    <h2>막을 내리면서</h2>
                                    <div class="content1">
                                        부메랑은 영화 뿐만 아니라 연극, 뮤지컬, 전시, 음학회 등 다양한 컨텐츠로 여러분의 꿈을 함께 실현시킬 수 있도록 도와줄거에요.<br />
                                        부산에서 다양한 활동을 원하는 여러분들 같이 팀을 꾸려나가보아요!
                                    </div>
                                    <div class="button">
                                        메인으로
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button id="next"><i class="fa-solid fa-angle-right"></i></button>
                    </div>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                    <script src="/js/default.js"></script>
                    <script src="/js/mainform.js"></script>

            </body>

            </html>