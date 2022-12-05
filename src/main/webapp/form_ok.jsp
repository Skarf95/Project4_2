<%--
  Created by IntelliJ IDEA.
  User: euninjun
  Date: 2022/12/03
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.awt.*" %>
<%
        request.setCharacterEncoding("utf-8");
        String ftitle = request.getParameter("ftitle");
        String fwriter = request.getParameter("fwriter");
        String femail = request.getParameter("femail");
        String fdate = request.getParameter("fdate");
        String fcomment = request.getParameter("fcomment");

        String isSubmit = "";
        if(isSubmit.equals(1)); isSubmit =("Submit successful");

 /*       Statement stmt = null;

        try {
                String sql = "insert into member(id, passwd, name) values('"+id+"','"+pw+"','"+name+"')";
                stmt = conn.createStatement();
                // 삽입 수정 삭제는 update로 실행해준다
                stmt.executeUpdate(sql);
                out.print("member 테이블 삽입에 성공했습니다");
        } catch (SQLException e) {
                out.print("member 테이블에 삽입이 실패하였습니다 <br>");
                out.print("SQLException: " + e.getMessage());
        } finally {
                if (stmt != null) {
                        stmt.close();
                }
                if (conn != null) {
                        conn.close();
                }
        }*/
%>

<!DOCTYPE html>
<html lang="en">
<head></head>

<body>
<h3>Welcome!</h3>
<div>Title : <%=ftitle%>
<div>writer : <%=fwriter%> </div>
        <div>Email : <%=femail%> </div>
        <div>writer : <%=fdate%> </div>


        <div>
        Comment:
        <%=fcomment %> <br>
        <%=isSubmit %>


</div>

</body>

