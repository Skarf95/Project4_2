<%--
  Created by IntelliJ IDEA.
  User: euninjun
  Date: 2022/12/06
  Time: 11:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO"%>
<%@ page import="com.example.bean.BoardVO" %>
<%@ page import="com.example.uploadfile.FileUpload" %>

<%
    request.setCharacterEncoding("utf-8");
    BoardDAO boardDAO = new BoardDAO();
    FileUpload upload = new FileUpload();

    BoardVO u = upload.uploadPhoto(request);
    System.out.println(u);
    int i = boardDAO.updateBoard(u);

    String msg = "데이터 편집 성공 !";
    if(i == 0) msg = "[에러] 데이터 편집 ";
%>

<script>
    alert('<%=msg%>');
    location.href='index.jsp';
</script>
