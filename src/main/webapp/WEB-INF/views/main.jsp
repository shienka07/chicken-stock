<%--
  Created by IntelliJ IDEA.
  User: kh
  Date: 3/26/25
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>주식 거래소에 어서오세요</title>
</head>
<body>
    <p>돈 많이 벌어가세요~</p>
    <p><%= request.getAttribute("accounts") %></p>
    <form method="POST">
        <input hidden name="id" value="0">
        <label>
            별명 :
            <input type="text" name="nickname">
        </label>
        <button>등록</button>
    </form>
    <form action="delete">
        <label>
            번호 :
            <input type="text" name="id">
        </label>
        <button>삭제</button>
    </form>
</body>
</html>
