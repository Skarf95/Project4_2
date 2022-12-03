<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br><br>
</body>

<head>
    <html lang="en"
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


<div class="search">
    <form name="form1" action="form_ok.jsp" onsubmit="return formValidation()" method="post">

        <label for="fname">First name:</label><br>
        <input type="text" id="fname" name="fname"> </br>
        <label for="lname">Last name:</label><br>
        <input type="text" id="lname" name="lname"><br>
        <br>

        <input type="radio" id="male" name="gender" value="Male" checked>
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="Female">
        <label for="female">Female</label>
        <br><br>

        <li>
            <label class="reg" for="uclass">Dormitory RC</label>
            <select id="uclass" name="uclass">
                <optgroup label="Korean">
                    <option value="Bethel">Bethel</option>
                    <option value="Rodem">Rodem</option>
                    <option value="Vision" selected>Vision</option>
                </optgroup>
                <optgroup label="English">
                    <option value="Carmichael">Carmichael</option>
                    <option value="Papyrus">Papyrus</option>
                </optgroup>
            </select>
        </li>

</div>



<h1>My Vocabulary </h1>

<div class="topnav">

    <a href="#">About</a>
    <a href="#">Example</a>
    <a href="#">NoStyle</a>
    <a href="#">Home</a>
</div>

<label for="sname">search word:</label>
<input type="text" id="sname" name="sname">
<label for="aname">add:</label>
<input type="text" id="aname" name="aname">
<input type="submit" value="search">
<br><br>

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
<br><br>
    <h2>How would you rate this Dictionary?</h2>

<input type="text" name="rate" list="depList"><br>
<datalist id="depList">
    <option value="Very Good" selected></option>
    <option value="Good"></option>
    <option value="OK"></option>
    <option value="Bad"></option>
    <option value="Very Bad"></option>

</datalist>

    <h2>The reason is?</h2><label for="comment">Comment: </label><br>
    <textarea type="content" id="comment" name="comment" cols="80" rows="10"></textarea><br>
    <input type="submit" name="Submit">
</body>



</form>

</html>