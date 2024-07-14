<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="stuData" class="Bean.Student" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style type="text/css">
*
{
margin: 0;
padding: 0;
font-family: arial;
overflow: hidden;
}
.container-fluid
{
width: 100%;
height: 100vh;
background: url(https://media.istockphoto.com/id/844401678/photo/girl-reading-book.jpg?s=612x612&w=0&k=20&c=jHbM02_BRNkZ8Zd21cQ90KtIgkE0f-as7TZyNb7-BlQ=);
background-size: cover;
background-repeat: no-repeat;
}
.container
{
width: 1200px;
height: 100px;
margin: auto;
display: flex;
justify-content: space-between;
align-items: center;
}
.container ul
{
display: flex;
justify-content: center;
align-items: center;
}
.container ul li
{

list-style: none;
margin-right: 50px;
font-weight: bold;
cursor: pointer;
font-size: 15px;
color: #383838;
transition: 0.5s;
}
.container ul li:hover
{
color: #f44445;
}
.container ion-icon
{
color: #383838;
font-size: 50px;
}
.content
{
width: 1200px;
height: 100vh;
margin: auto;
}
.content span
{
color: #f44445;
font-weight: 400;
}
.content h1
{
font-size: 60px;
color: #393939;
padding-top: 120px;
}
.content p
{
color: grey;
padding-top: 20px;
font-weight: bold;
letter-spacing: 1px;
}
.content .btn
{
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
.content .btn:hover
{
background-color: transparent;
border: 2px solid #f44445;
color: #f44445;
}


.myTable, th, td {
	border: 3px solid black;
	border-collapse: collapse;
	padding-top: 20px;
	padding-left: 20px;
	padding-botton: 20px;
	padding-right: 20px;
	
	font-family: 'Mrs Sheppards', cursive;
}

table tr td {
	text-align: left;
}
.myTable{
position:absolute;
top:60%;
left:60%;
transform:translate(-50%,-50%);

border: 2px solid black;
font-size: 2.5rem;


}
.book{
position:absolute;
top:20%;
left:50%;
transform:translate(-50%,-50%);

}
.fz{
font-family: 'Mrs Sheppards', cursive;
}
.formButton{
font-family: 'Mrs Sheppards', cursive;
}
a{
font-family: 'Mrs Sheppards', cursive;
}
</style>
<body>
<div class="container-fluid">
<div class="container">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbf8BX8uLcB4ao9YMUJfI7CJsvsVaYt7ZkQA&usqp=CAU">
<ul>
<li class="nav-item">
<h2><a style="text-decoration: none" href=index.jsp>Home</a></h2>

</ul>

<ion-icon name="book"></ion-icon>
</div>


<div class="content ">

<div class="book"><h1 class="fz">Thanks for Registration!!</h1></div>

<div>
		<table class="myTable" style="border:1px solid black; height: 20rem; width: 90rem;" >
			<tbody>
				<tr>
					<td>Name</td>
					<td><jsp:getProperty name="stuData" property="name" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><jsp:getProperty name="stuData" property="email" /></td>
				</tr>
				
				<tr>
					<td>Courses</td>
					<td><jsp:getProperty name="stuData" property="course" /></td>
				</tr>
				<tr>
					<td>Session</td>
					<td><jsp:getProperty name="stuData" property="session" /></td>
				</tr>
				<tr>
					<td colspan=2 style="text-align: center;"><a href="index.jsp"
						style="font-size: 40px; width: auto; height: 6rem;"
						class="formButton">Go Back Home</a></td>
				</tr>
			</tbody>
		</table>
	</div>

</div>
</div>


<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>



}




 
</body>
</html>