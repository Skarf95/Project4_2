<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<%@ page import="com.example.uploadfile.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BoardVO u = new BoardVO();
		u.setSeq(id);

		String fileName = u.getFileName();
		if(fileName != null) FileUpload.deleteFile(request,fileName);

		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(u);
	}
	response.sendRedirect("list.jsp");
%>