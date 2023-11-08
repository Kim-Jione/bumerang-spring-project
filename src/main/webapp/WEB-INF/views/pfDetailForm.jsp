<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="/css/viewPerformance.css"/>
    <link rel="stylesheet" href="/css/default.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
          rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>BusanMate with Write</title>
</head>

<body>
<%@ include file="layout/header.jsp" %>

<input type="hidden" id="pfId" value="${pf.pfId}">
<input type="hidden" id="pfUserId" value="${pf.userId}"><!--작성자 ID-->
<input type="hidden" id="userId" value="${principal.userId}"><!--추천자 ID-->
<input type="hidden" id="likeyId" value="${pf.likeyId}">


<div class="pf_container">
    <div class="pf_title_area">
        <div class="pf_display">
            <div class="myinfo">
                <h1 class="pf_title">소울 메이트</h1>
                <div class="pf_label">
                    <img class="pf_img" src="C:/bumerang/img/${principal.userProfileImg}"/>
                    <p class="pf_nickname">${pf.userNickname}</p>
                </div>
            </div>
        </div>
        <div class="pf_status">
            <i class="fa-solid fa-eye"></i>
            <p class="view_count">${pf.viewCount}</p>
            <i id="iconLove"
               class='${pf.isLikey ? "fa-solid" : "fa-regular"} fa-heart my_pointer my_red'></i>
            <p class="like_count" id="countLikey">${pf.likeyCount}</p>
            <img src="/image/siren.png"/>
            <p class="report">
                <button class='pfReportBtn'>신고하기</button>
            </p>
        </div>
    </div>
    <div class="border"></div>

    <div class="pf_info">
        <img class="poster_img" src="C:/bumerang/img/${pf.pfThumbnail}"/>
        <div class="column">
            <ul class="detail_info">
                <li>
                    <span class="accent">공연 기간</span>
                    <p>${pf.pfStartDate} ~ ${pf.pfDeadline}</p>
                </li>
                <li>
                    <span class="accent">장르</span>
                    <p>${pf.pfGenre}</p>
                </li>

                <li>
                    <span class="accent">관람 연령</span>
                    <p>${pf.pfAgerating}</p>
                </li>

                <li>
                    <span class="accent">제작</span>
                    <p>${pf.pfProduction}</p>
                </li>

                <li>
                    <span class="accent">공연 시간</span>
                    <p>${pf.pfRunningtime}분</p>
                </li>

                <li>
                    <span class="accent">가격</span>
                    <p>${pf.pfPrice}</p>
                </li>

                <li>
                    <span class="accent">예매 방법</span>
                    <a href="${pf.pfBookingmethod}">예매하기</a>
                </li>
                <li>
                    <span class="accent">위치</span>
                    <p>${pf.pfLocation}</p>
                </li>
            </ul>

            <div class="pf_intro">
                <h4>작품 소개</h4>
                <div class="border"></div>
                <textarea readonly class="introduce">${pf.pfContent}</textarea>
            </div>
        </div>
    </div>

    <c:if test="${principal.userId == pf.userId}">
    <div class="button_wrap">
        <button type="button" class="edit_btn">
            <a href="/s/api/performance/updateForm/${pf.pfId}">
                수정
            </a>
        </button>
        <button type="button" class="delete_btn">삭제</button>
        <div class="delete_confirm">
            <h2 class="pro_tit">정말로 삭제하시겠습니까?</h2>
            <div>
                <button id="confirmDelete">삭제</button>
                <button id="closeDelete">닫기</button>
            </div>
        </div>
    </div>
</div>
</c:if>

<div class="comment_container center_display">
    <!-- 댓글 작성부 여기부터 -->
    <div class="top">
        <form>
            <div class="write_comment">
                <div class="comment_img center_display">
                    <img src="C:/bumerang/img/${principal.userProfileImg}" alt="image"/>
                </div>
                <div class="form_info center_display">
                    <textarea
                            type="text"
                            name="comment"
                            id="comment"
                            placeholder="댓글을 입력하세요"
                    ></textarea>
                </div>
            </div>
            <button type="submit" class="submit_btn">등록</button>
        </form>
    </div>
    <!-- 여기까지 -->

    <div class="comments_container center_display">
        <!-- 댓글이 달리는 부분 -->
    </div>
</div>

<footer class="footer">
    <div class="left_cover"></div>
</footer>

<script
        src="https://kit.fontawesome.com/3f247b3389.js"
        crossorigin="anonymous"
></script>
<script src="/js/viewPerformance.js"></script>
<script src="/js/default.js"></script>
</body>
</html>
