<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="https://kit.fontawesome.com/bfb14eb01e.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="/css/default.css" />
        <link rel="stylesheet" href="/css/writeNotice.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600&display=swap"
          rel="stylesheet">
        <link
          href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
          rel="stylesheet">
        <title>공지사항</title>
      </head>

      <body>
        <!-- 헤더 -->
        <%@ include file="layout/header.jsp" %>
          <div class="container">
            <div class="board_write_wrap">
              <div class="top">
                <div class="board_name">
                  <i class="fa-solid fa-bullhorn"></i>
                  <h2>공지사항</h2>
                </div>
              </div>
              <div class="board_write">
                <div class="title">
                  <dl>
                    <dt>제목</dt>
                    <dd>${notice.noticeTitle}</dd>
                  </dl>
                </div>
                <div class="info">
                  <dl>
                    <dt>공지 유형</dt>
                    <dd>
                      ${notice.noticeType}
                    </dd>
                  </dl>
                  <dl>
                    <dt>작성자</dt>
                    <dd>${notice.userNickname}</dd>
                  </dl>
                  <dl>
                    <dt>작성 시간</dt>
                    <dd>
                      <fmt:formatDate value="${notice.createdAt}" pattern="yy.MM.dd kk:mm" type="date" />
                    </dd>
                  </dl>
                </div>
                <div class="content">
                  <p>${notice.noticeContent}</p>
                </div>
              </div>
              <div class="bt_wrap">
                <c:if test="${notice.userId==principal.userId}">
                  <a href="/s/api/auth/notice/updateForm/${notice.noticeId}" class="save">수정</a>
                </c:if>
                <a href="notice.html" class="cancel">뒤로</a>
              </div>
            </div>
          </div>
          <script src="/js/notice.js"></script>
          <script src="/js/default.js"></script>
      </body>

      </html>