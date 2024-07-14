<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edu Web Template in HTML and CSS</title>
<link rel="stylesheet" href="ca.css">
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
background: url(https://img.jakpost.net/c/2019/03/02/2019_03_02_66706_1551461528._large.jpg);
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
font-size: 70px;
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
.div.table, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding-top: 20px;
	padding-left: 20px;
	padding-botton: 20px;
	padding-right: 20px;
}

table tr td {
	text-align: left;
}

.fz{
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

  
  <h2 class="fz"><a style="text-decoration: none" href=index.jsp>Home</a></h2>
  

<ion-icon name="book"></ion-icon>
</div>
<div class="content ">
<h1><span class="fz">Welcome To Our</span> <br> Training Department</h1>
<h3 class="fz">Education’s purpose is to replace an empty mind with an open one<br>and typesetting industry.</h3><br>



<div class="wrapper">
  <a class="cta" href="readExc">
    <span class="fz">Register</span>
    <span>
      <svg width="66px" height="43px" viewBox="0 0 66 43" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        <g id="arrow" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <path class="one" d="M40.1543933,3.89485454 L43.9763149,0.139296592 C44.1708311,-0.0518420739 44.4826329,-0.0518571125 44.6771675,0.139262789 L65.6916134,20.7848311 C66.0855801,21.1718824 66.0911863,21.8050225 65.704135,22.1989893 C65.7000188,22.2031791 65.6958657,22.2073326 65.6916762,22.2114492 L44.677098,42.8607841 C44.4825957,43.0519059 44.1708242,43.0519358 43.9762853,42.8608513 L40.1545186,39.1069479 C39.9575152,38.9134427 39.9546793,38.5968729 40.1481845,38.3998695 C40.1502893,38.3977268 40.1524132,38.395603 40.1545562,38.3934985 L56.9937789,21.8567812 C57.1908028,21.6632968 57.193672,21.3467273 57.0001876,21.1497035 C56.9980647,21.1475418 56.9959223,21.1453995 56.9937605,21.1432767 L40.1545208,4.60825197 C39.9574869,4.41477773 39.9546013,4.09820839 40.1480756,3.90117456 C40.1501626,3.89904911 40.1522686,3.89694235 40.1543933,3.89485454 Z" fill="#FFFFFF"></path>
          <path class="two" d="M20.1543933,3.89485454 L23.9763149,0.139296592 C24.1708311,-0.0518420739 24.4826329,-0.0518571125 24.6771675,0.139262789 L45.6916134,20.7848311 C46.0855801,21.1718824 46.0911863,21.8050225 45.704135,22.1989893 C45.7000188,22.2031791 45.6958657,22.2073326 45.6916762,22.2114492 L24.677098,42.8607841 C24.4825957,43.0519059 24.1708242,43.0519358 23.9762853,42.8608513 L20.1545186,39.1069479 C19.9575152,38.9134427 19.9546793,38.5968729 20.1481845,38.3998695 C20.1502893,38.3977268 20.1524132,38.395603 20.1545562,38.3934985 L36.9937789,21.8567812 C37.1908028,21.6632968 37.193672,21.3467273 37.0001876,21.1497035 C36.9980647,21.1475418 36.9959223,21.1453995 36.9937605,21.1432767 L20.1545208,4.60825197 C19.9574869,4.41477773 19.9546013,4.09820839 20.1480756,3.90117456 C20.1501626,3.89904911 20.1522686,3.89694235 20.1543933,3.89485454 Z" fill="#FFFFFF"></path>
          <path class="three" d="M0.154393339,3.89485454 L3.97631488,0.139296592 C4.17083111,-0.0518420739 4.48263286,-0.0518571125 4.67716753,0.139262789 L25.6916134,20.7848311 C26.0855801,21.1718824 26.0911863,21.8050225 25.704135,22.1989893 C25.7000188,22.2031791 25.6958657,22.2073326 25.6916762,22.2114492 L4.67709797,42.8607841 C4.48259567,43.0519059 4.17082418,43.0519358 3.97628526,42.8608513 L0.154518591,39.1069479 C-0.0424848215,38.9134427 -0.0453206733,38.5968729 0.148184538,38.3998695 C0.150289256,38.3977268 0.152413239,38.395603 0.154556228,38.3934985 L16.9937789,21.8567812 C17.1908028,21.6632968 17.193672,21.3467273 17.0001876,21.1497035 C16.9980647,21.1475418 16.9959223,21.1453995 16.9937605,21.1432767 L0.15452076,4.60825197 C-0.0425130651,4.41477773 -0.0453986756,4.09820839 0.148075568,3.90117456 C0.150162624,3.89904911 0.152268631,3.89694235 0.154393339,3.89485454 Z" fill="#FFFFFF"></path>
        </g>
      </svg>
    </span> 
  </a>
</div>

</div>
</div>


<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>



</body>
</html>