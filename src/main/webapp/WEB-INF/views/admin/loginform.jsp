<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* style the container */
.container {
	position: relative;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px 0 30px 0;
}

/* style inputs and link buttons */
input, .btn {
	width: 90%;
	padding: 12px;
	border: none;
	border-radius: 4px;
	margin: 5px 70px;
	opacity: 0.85;
	display: inline-block;
	font-size: 17px;
	line-height: 20px;
	text-decoration: none; /* remove underline from anchors */
}

input:hover, .btn:hover {
	opacity: 1;
}



/* style the submit button */
input[type=submit] {
	background-color: #04AA6D;
	color: white;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

/* Two-column layout */
.col {
	float: left;
	width: 50%;
	margin: auto;
	padding: 0 50px;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* vertical line */
.vl {
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	border: 2px solid #ddd;
	height: 175px;
}

/* text inside the vertical line */
.vl-innertext {
	position: absolute;
	top: 50%;
	transform: translate(-50%, -50%);
	background-color: #f1f1f1;
	border: 1px solid #ccc;
	border-radius: 50%;
	padding: 8px 10px;
}

/* hide some text on medium and large screens */
.hide-md-lg {
	display: none;
}

/* bottom container */
.bottom-container {
	text-align: center;
	background-color: #666;
	border-radius: 0px 0px 4px 4px;
}

/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 650px) {
	.col {
		width: 100%;
		margin-top: 0;
	}
	/* hide the vertical line */
	.vl {
		display: none;
	}
	/* show the hidden text on small screens */
	.hide-md-lg {
		display: block;
		text-align: center;
	}
}
</style>
<%@ include file="./inc/head_link.jsp" %>
<script type="text/javascript">
function loginCheck(){
	$("form").attr({
		action:"/admin/login",
		method:"post"
	});
	$("form").submit();
}

$(function(){
	$("#bt_login").click(function(){
		loginCheck();
	});
});

$(function(){
	$("#bt_join").click(function(){
		//location.href="/admin/joinform"
		$(location).attr("href", "/admin/joinform");
	});
});
</script>
</head>
<body>

	<h2>관리자 모드</h2>
	<p>관리자 모드 로그인 화면입니다</p>

	<div class="container">
		<form>
			<div class="row">
				<h1 style="text-align: center">관리자 로그인</h1>
				
					<input type="text" name="id" placeholder="아이디 입력" required>
					<input type="password" name="pass" placeholder="비밀번호 입력" required> 
					<input type="submit" value="Login" id="bt_login">
				</div>

			</div>
		</form>
	</div>

	<div class="bottom-container">
		<div class="row">
			<div class="col">
				<a href="#" style="color: white" class="btn" id="bt_join">Sign up</a>
			</div>
			<div class="col">
				<a href="#" style="color: white" class="btn">Forgot password?</a>
			</div>
		</div>
	</div>

</body>
</html>
