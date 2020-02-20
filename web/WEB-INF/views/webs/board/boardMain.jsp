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
    <div>
        <div>글 번호</div>
        <div>제목</div>
        <div>작성자</div>
        <div>내용</div>
    </div>
    <div>
        <select>
            <option>1</option>
            <option>2</option>
            <option>3</option>
        </select>
        <input type="text" placeholder="검색어를 입력해주세요." id="searchText" class="search-form" name="searchText"/>
        <button id="searchBtn">검색</button>
        <button id="regist-board-btn" class="button-board">글쓰기</button>
    </div>
</body>
<%@ include file="/WEB-INF/views/webs/cmmn/jsinit.jsp"%>
</html>

