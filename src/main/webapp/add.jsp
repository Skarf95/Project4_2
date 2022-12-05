<%--
  Created by IntelliJ IDEA.
  User: euninjun
  Date: 2022/12/05
  Time: 7:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Add New Diary</h1>
<form action="form_ok.jsp" onsubmit= "return validateForm()" method="post">
    <table>
        <tbody>

        <tr><td>Title:</td>
            <td><input type="text" name="ftitle" name = "ftitle">
            </td>
        </tr>
        <tr>
            <td>Writer:</td>
            <td>
                <input type="text" name="fwriter" name = "fwriter">
            </td>
        </tr>
        <tr>
            <td>email:</td>
            <td>
                <input type="text" name="femail" name = "femail">
            </td>
        </tr>
        <tr>
            <td>Date</td>
            <td>
                <input type="date" id="fdate" name="fdate">
            </td>
        </tr>
        <tr>
            <td>Content:</td>
            <td>
                <textarea type="content" id="fcomment" name="fcomment" cols="20" rows="10"></textarea>
            </td>
        </tr>
        <tr>
            <td align="right">
                <input type="submit" name="Submit">
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
