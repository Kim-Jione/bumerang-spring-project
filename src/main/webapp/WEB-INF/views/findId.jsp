<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600&display=swap"
          rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
            rel="stylesheet">

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link rel="stylesheet" href="/css/pwidfind.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <title>BusanMate with culture</title>
</head>

<body class="body">
<form action="/user/helpPw" method="get">
    <div class="findbox">
        <div class="idpwbox">
            <div class="box_button">
                <p class="id_button">아이디 찾기</p>
            </div>
            <div class="idbox">
                <h3>${userId.userLoginId}</h3>
            </div>
        </div>
    </div>
    <div class="button_box">
        <a href="/user/loginForm" class="loginlink"> 로그인하기</a>
        <button class="emaillink"> 비밀번호 찾기</button>
    </div>
</form>


<script src="https://kit.fontawesome.com/3f247b3389.js" crossorigin="anonymous"></script>
<script src="/js/default.js"></script>
<script src="/js/searchAccount.js"></script>
</body>

</html>