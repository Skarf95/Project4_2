<html>
<head>
<title> title page </title>
</head>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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

<body>

<form name = "form" action = "about.html" method = "post">
<div class="topnav">

    <a href="about">About</a>
    <a href="example">Example</a>
    <a href="noStyle">NoStyle</a>
    <a href="home">Home</a>
</form>
</div>

<h1>My Vocabulary </h1>

<table id="vocabulary">
    <tr>
        <th>#</th>
        <th>Level</th>
        <th>Word</th>
        <th>Meaning</th>
        <th>Date</th>
        <th>Edit</th>
        <th>Delete</th>


    </tr>
    {result = [
    <td>10</td>
    <td>**</td>
    <td>contamination</td>
    <td>오염</td>
    <td>2022-10-24</td>
    <td>
        <a href="form.php">Edit</a>
    </td>
    <td>
        <a href="delelteform">Trash</a>
    </td>
    ]
    }
        {foreach $result as $result}
    {result}
        {/foreach}

    <tr>
        <td>10</td>
        <td>**</td>
        <td>contamination</td>
        <td>오염</td>
        <td>2022-10-24</td>
        <td>
            <a href="editform">Edit</a>
        </td>
        <td>
            <a href="delelteform">Trash</a>
        </td>

    </tr>
    <td>9</td>
    <td>***</td>
    <td>Superintendent</td>
    <td>관리자,감독관</td>
    <td>2022-10-24</td>
    <td>
        <a href="editform">Edit</a>
    </td>
    <td>
        <a href="delelteform">Trash</a>
    </td>

    </tr>
    <tr>
        <td>8</td>
        <td>***</td>
        <td>persisten</td>
        <td>끓임없는,계속되는</td>
        <td>2022-10-24</td>
        <td>
            <a href="editform">Edit</a>
        </td>
        <td>
            <a href="delelteform">Trash</a>
        </td>

    </tr>
    <tr>
        <td>7</td>
        <td>***</td>
        <td>maintence</td>
        <td>유지보부</td>
        <td>2022-10-24</td>
        <td>
            <a href="editform">Edit</a>
        </td>
        <td>
            <a href="delelteform">Trash</a>
        </td>

    </tr>
    <tr>
        <td>6</td>
        <td>***</td>
        <td>flabbergast</td>
        <td>깜짝 놀라게 하다</td>
        <td>2022-10-24</td>
        <td>Edit</td>
        <td>Trash</td>

    </tr>
    <tr>
        <td>5</td>
        <td>***</td>
        <td>abomination</td>
        <td>혐오스러운 것</td>
        <td>2022-10-24</td>
        <td>Edit</td>
        <td>Trash</td>

    </tr>
    <tr>
        <td>4</td>
        <td>*</td>
        <td>sufficient</td>
        <td>충분한</td>
        <td>2022-10-24</td>
        <td>Edit</td>
        <td>Trash</td>

    </tr>
    <tr>
        <td>3</td>
        <td>*</td>
        <td>abhor</td>
        <td>혐오하다</td>
        <td>2022-10-24</td>
        <td>Edit</td>
        <td>Trash</td>

    </tr>
    <tr>
        <td>2</td>
        <td>**</td>
        <td>probationary</td>
        <td>수습의</td>
        <td>2022-10-24</td>
        <td>Edit</td>
        <td>Trash</td>

    </tr>
    <tr>
        <td>1</td>
        <td>**</td>
        <td>combustion</td>
        <td>연소</td>
        <td>2022-10-24</td>
        <td>Edit</td>
        <td>Trash</td>

    </tr>
</table>


</body>
</html>