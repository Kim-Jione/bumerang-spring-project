<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <!DOCTYPE html>
      <html lang="ko">

      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/css/default.css" />
        <link rel="stylesheet" href="/css/report.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
        <title>BusanMate with Write</title>

        <script src="js/report.js"></script>

      </head>

      <body>
        <div class="report_container">
          <h1>신고하기</h1>
          <div class="target_info" id="targetInfo">
            <div><span>작 성</span><span>김휴고</span></div>
            <div><span>내 용</span><span>만병통치약, '휴고의 눈물' 팝니다</span></div>
          </div>
          <div class="reason_info">
            <h3>사유선택</h3>
            <ul class="type">
              <li>
                <input type="radio" name="reason" value="스팸홍보/도배" />스팸홍보/도배글입니다.
              </li>
              <li>
                <input type="radio" name="reason" value="음란물" /><label for="reason">음란물입니다.</label>
              </li>
              <li>
                <input type="radio" name="reason" value="불법정보" /><label>불법정보를 포함하고 있습니다.</label>
              </li>
              <li>
                <input type="radio" name="reason" value="청소년유해" /><label>청소년에게 유해한 내용입니다.</label>
              </li>
              <li>
                <input type="radio" name="reason" value="욕설/혐오/차별" /><label>욕설/생명경시/혐오/차별적 표현입니다.</label>
              </li>
              <li>
                <input type="radio" name="reason" value="개인정보" /><label>개인정보 노출 게시물입니다.</label>
              </li>
              <li>
                <input type="radio" name="reason" value="불쾌" /><label>불쾌한 표현이 있습니다.</label>
              </li>
              <li class="guitarli">
                <input type="radio" name="reason" value="기타" />
                <label>기타</label>
              </li>
              <li>
                <input type="text" class="guitar" wrap="hard" />
              </li>
            </ul>


            </ul>

          </div>
          <div class="btn_wrap">
            <button>제 출</button>
          </div>
        </div>
      </body>

      </html>