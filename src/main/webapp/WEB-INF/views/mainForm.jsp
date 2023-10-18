<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>메인 페이지 목차</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f2f2f2;
                    margin: 0;
                    padding: 0;
                }

                header {
                    background-color: #333;
                    color: #fff;
                    padding: 20px 0;
                    text-align: center;
                }

                h1 {
                    margin: 0;
                }


                nav {
                    background-color: #555;
                    color: #fff;
                    padding: 10px;
                }

                ul {
                    list-style: none;
                    padding: 0;
                }

                li {
                    margin: 5px 0;
                }

                li a {
                    text-decoration: none;
                    color: #fff;
                }

                li a:hover {
                    text-decoration: underline;
                }

                a:visited {
                    color: green;
                    text-decoration: none;
                }

                .container {
                    max-width: 500px;
                    margin: 20px auto;
                    padding: 10px 20px;
                    background-color: #fff;
                    border: 1px solid #ccc;
                    border-radius: 5px;
                }
            </style>
        </head>

        <body>
            <header style="background-color: #333;color: #fff;padding: 20px 0;text-align: center;">
                <a href="/" style="text-decoration: none; outline: none ">
                    <h1>메인 페이지</h1>
                </a>
            </header>
            <div style="text-align: center;">
                <c:choose>
                    <c:when test="${principal != null}">
                        <img id="profileImg"
                            src="data:image/png;base64,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"
                            style="width: 80px;height:80px;border-radius: 70%;">
                        닉네임: ${principal.userNickname}
                        <a href="/user/logout">로그아웃</a>
                    </c:when>
                    <c:otherwise>
                        <div>
                            <a class="my_main_start_btn" href="/user/loginForm">로그인하기</a>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>

            <div class="container">
                <div style="display: flex; justify-content: space-between;">
                    <div>
                        <h3>화면 모음</h3>
                        <p><a href="/jobSearch/writeList">구인글 목록</a></p>
                        <p><a href="/user/joinListForm">사용자 목록</a></p>
                        <p><a href="/jobSearch/mainForm">구인정보글 메인화면</a></p>
                        <p><a href="/notice/writeList">공지사항글 목록 화면</a></p>
                        <p><a href="/indexForm">관리자 페이지</a></p>
                    </div>
                    <div>
                        <h3>기능 모음</h3>
                        <p><a href="/user/joinForm"> 회원가입</a></p>
                        <p> <a href="/user/loginForm">로그인</a></p>
                        <p><a href="/jobSearch/writeForm">구인정보 작성하기</a></p>
                        <p><a href="/notice/writeForm">공지사항 작성하기</a></p>
                    </div>
                </div>
            </div>
        </body>

        </html>