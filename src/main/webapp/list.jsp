<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    BoardDAO boardDAO = new BoardDAO();
    List<BoardVO> list = boardDAO.getBoardList();
    request.setAttribute("list",list);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        #vocabulary {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #vocabulary td, #vocabulary th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #vocabulary tr:nth-child(even){background-color: #dddddd;}

        #vocabulary tr:hover {background-color: #ddd;}

        #vocabulary th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
        .topnav {
            overflow: hidden;
        }

        /* Style the topnav links */
        .topnav a {
            float: right;
            display: block;
            color: #000FFF;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .search d {
            text-align: right;
            color: #d6ede6;
            padding: 24px 16px;
            text-decoration: none;
        }

    </style>
</head>
<h1>Diary</h1>

<table id="list">
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>FileName</th>
        <th>Editdate</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getCategory()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td><img src="${pageContext.request.contextPath }/upload/${u.getFileName()}" class="photo" width="100px"></td>
                <%--		<td>${pageContext.request.contextPath }/upload/${u.getFileName()}</td>--%>
            <td>${u.getEditdate()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform.jsp?id=${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add.jsp">Add New Post</a>
</body>
</html>

</html>