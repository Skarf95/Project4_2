<%--
  Created by IntelliJ IDEA.
  User: euninjun
  Date: 2022/12/04
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
<%
    String fileName = "";
    int sizeLimit = 15 * 1024 * 1024;

    String realPath = request.getServletContext().getRealPath("upload");

    File file = new File(realPath);
    if (!file.exists()) file.mkdir();

    MultipartRequest multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
    fileName = multipartRequest.getFilesystemName("photo");
%>
폼에서 전송된 원해 파일명 : <%multipartRequest.getOriginalFileName("photo")%><br />;
업로드한 차일의 경로 : ${pageContext.request.contextPath }/upload/<%=fileName%>">
물리적인 저장 경로: <%realPath%><br />
<img src="${pageContext.request.contextPath }/upload/<%=fileName%>">

파일명: <%=fileName%><br />
</body>
</html>

