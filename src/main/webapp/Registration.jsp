<%@page import="Utility.ReadExcel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="ca.css">
</head>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: arial;
	overflow: hidden;
}

.container-fluid {
	width: 100%;
	height: 100vh;
	background:
		url(https://i2.wp.com/www.differencebetween.com/wp-content/uploads/2015/04/Difference-Between-School-and-Education_Education.jpg?resize=521%2C500&ssl=1);
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	width: 1200px;
	height: 100px;
	margin: auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.container ul {
	display: flex;
	justify-content: center;
	align-items: center;
}

.container ul li {
	list-style: none;
	margin-right: 50px;
	font-weight: bold;
	cursor: pointer;
	font-size: 15px;
	color: #383838;
	transition: 0.5s;
}

.container ul li:hover {
	color: #f44445;
}

.container ion-icon {
	color: #383838;
	font-size: 50px;
}

.content {
	width: 1200px;
	height: 100vh;
	margin: auto;
}

.content span {
	color: #f44445;
	font-weight: 400;
}

.content h1 {
	font-size: 70px;
	color: #393939;
	padding-top: 120px;
}

.content p {
	color: grey;
	padding-top: 20px;
	font-weight: bold;
	letter-spacing: 1px;
}

.content .btn {
	width: 170px;
	height: 45px;
	background-color: #f44445;
	color: #fff;
	font-weight: bolder;
	cursor: pointer;
	border: 2px solid #f44445;
	border-radius: 25px;
	margin-top: 30px;
	transition: 0.5s;
}

.content .btn:hover {
	background-color: transparent;
	border: 2px solid #f44445;
	color: #f44445;
}

.book {
	position: absolute;
	top: 56%;
	left: 35%;
	transform: translate(-50%, -50%);
	font-size: 2.5rem;
}



.book table tr {
	width: auto;
	line-height: 4rem;
}

input[type=text], input[type=email], table, table tr td select {
	width: 70%;
	padding: 4px 20px;
	margin: 5px 0;
	display: inline-block;
	font-size: 1.5rem;
	box-sizing: border-box;
	font-family: 'Mrs Sheppards', cursive;
}

input[type=radio] {
	border: 7px;
	
	height: 1.5em;
}

table tr td select {
	width: 70%;
	font-size: 1.5rem;
}

option {
	font-size: 2rem;
}

input[type=submit] {
	width: 70%;
	padding: 8px 20px;
	margin: 4px 0;
	display: inline-block;
	box-sizing: border-box;
	margin-left: left;
	font-family: 'Mrs Sheppards', cursive;
	margin-right: auto;
	font-size: 1.5rem;
}

.fz {
	font-family: 'Mrs Sheppards', cursive;
}
a{
font-family: 'Mrs Sheppards', cursive;
}
</style>
<body>
	<div class="container-fluid">
		<div class="container">
			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbf8BX8uLcB4ao9YMUJfI7CJsvsVaYt7ZkQA&usqp=CAU">
			
				
                <h2 class="fz"><a style="text-decoration: none" href=index.jsp>Home</a></h2>

				
			
			<ion-icon name="book"></ion-icon>

			<div class="book">

				<form action="Register" method="post">
					<table>
						<tr>
							<td class="fz">Name</td>
							<td><input type="text" name="name" size=40 required="required"></td>
						</tr>
						<tr>
							<td class="fz">Email</td>
							<td><input type="email" name="custMail" size=40 equired="required"></td>
						<tr>
							<td class="fz">Sections:</td>

							<td class="fz"><input type="radio" name="session"
								value="9-11AM" checked="checked">9-11AM<input
								type="radio" name="session" value="12-2PM" checked="checked">12-2PM
								<input type="radio" name="session" value="2-5PM"
								checked="checked">2-5PM</td>
						</tr>


						<tr>
							<td class="fz">Course</td>
							<td>
								<%
								ArrayList<String> myList = new ArrayList<>();
								myList = (ArrayList<String>)request.getAttribute("courses");
								if (myList == null) {
									throw new ServletException("Fail to load Excel Data ...");
								}
								%> <select name="course">
									<%
									for (String list : myList) {
									%>
									<option><%=list%>
									</option>
									<%
									}
									%>

							</select>
						<tr>
							<td></td>
							<td><input type="submit" value="Register"></td>
						</tr>




					</table>
				</form>

			</div>



			<script type="module"
				src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
			<script nomodule
				src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>