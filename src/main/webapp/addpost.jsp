<%--
  Created by IntelliJ IDEA.
  User: euninjun
  Date: 2022/12/05
  Time: 7:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO"%>
<%@ page import="com.example.uploadfile.FileUpload"%>
<%@ page import="com.example.bean.BoardVO" %>

<%
    request.setCharacterEncoding("utf-8");
    BoardDAO boardDAO = new BoardDAO();
    FileUpload fileUpload = new FileUpload();
    BoardVO boardVO = fileUpload.uploadPhoto(request);
    System.out.println(boardVO);

    int i = boardDAO.insertBoard(boardVO);
    String msg = "데이터 추가 성공 !";
    if(i == 0) msg = "[에러] 데이터 추가 " + boardVO;
%>

<script>
    alert('<%=msg%>');
    location.href='list.jsp';
</script>
