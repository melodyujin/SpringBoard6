<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 폼</title>

</head>
<style>
/* Google web font CDN*/
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap')
	;

* {
	box-sizing: border-box; /*전체에 박스사이징*/
	outline: none; /*focus 했을때 테두리 나오게 */
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	background-color: #f5f6f7;
	line-height: 1.5em;
	color: #222;
	margin: 0;
}

a {
	text-decoration: none;
	color: #222;
}

/*member sign in*/
.member {
	width: 400px;
	/* border: 1px solid #000; */
	margin: auto; /*중앙 정렬*/
	padding: 0 20px;
	margin-bottom: 20px;
}

.member .field {
	margin: 5px 0; /*상하로 좀 띄워주기*/
}

.member b {
	/* border: 1px solid #000; */
	display: block; /*수직 정렬하기 */
	margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.member input:not(input[type=radio]), .member select {
	border: 1px solid #dadada;
	padding: 15px;
	width: 100%;
	margin-bottom: 5px;
}

.member input[type=button] {
	background-color: #2db400;
	color: #fff
}

.member input:focus, .member select:focus {
	border: 1px solid #2db400;
}


.placehold-text {
	display: block; /*span 으로 감싸서 크기영역을 블록요소로 만들어져야한다*/
	position: relative;
	/* border: 1px solid #000; */
}

.placehold-text:before {
	position: absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
	right: 20px;
	top: 13px;
	pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

.userpw {
	
	background-size: 20px;
	background-color: #fff;
}

.userpw-confirm {

	background-size: 20px;
	background-color: #fff;
}

.member-footer {
	text-align: center;
	font-size: 12px;
	margin-top: 20px;
}

.member-footer div a:hover {
	text-decoration: underline;
	color: #2db400
}

.member-footer div a:after {
	content: '|';
	font-size: 10px;
	color: #bbb;
	margin-right: 5px;
	margin-left: 7px;
	/*살짝 내려가 있기 때문에 위로 올려주기 위해 transform 사용하기*/
	display: inline-block;
	transform: translateY(-1px);
}

.member-footer div a:last-child:after {
	display: none;
}

@media ( max-width :768px) {
	.member {
		width: 100%;
	}
	.field{
		width:100%;
	}
}
h1{ margin: 70px 0 0 110px};
</style>
<%@ include file="./inc/head_link.jsp" %>
<script type="text/javascript">
function regist(){
	$("form").attr({
		action:"/admin/regist",
		method:"post"
	});
	$("form").submit();
}

$(function(){
	$("#bt_regist").click(function(){
		console.log("ㄱㄴ");
		regist();
	});
});
</script>
<body>
	<form>
		<div class="member">
			<!-- 1. 로고 -->
			<h1>회원가입</h1>
			<img>
	
			<!-- 2. 필드 -->
			<div class="field">
				<b>아이디</b><input type="text" name="id" placeholder="아이디를 입력하세요">
			</div>
			<div class="field">
				<b>비밀번호</b> <input class="userpw" type="password" name="pass" placeholder="비밀번호를 입력하세요">
			</div>

			<div class="field">
				<b>이름</b> <input type="text" name="name" placeholder="이름을 입력하세요">
			</div>
	
			<!-- 3. 이메일_전화번호 -->
			<div class="field">
				<b>이메일</b>
				 <input type="text" name="email" placeholder="이메일을 입력하세요">
			</div>
	
			<div class="field">
				<b>휴대전화</b> 
				<input type="text" name="phone" placeholder="휴대폰 번호를 입력하세요">
			</div>
	
			<!-- 4. 가입하기 버튼 -->
			<div class="field">
				<input type="button" value="가입하기" id="bt_regist">
			</div>
		</form>
		<!-- 5. 푸터 -->
		<div class="member-footer">
			<div>
				<a href="#none">이용약관</a> <a href="#none">개인정보처리방침</a> <a
					href="#none">책임의 한계와 법적고지</a> <a href="#none">고객센터</a>
			</div>
		</div>
	</div>

</body>
</html>
