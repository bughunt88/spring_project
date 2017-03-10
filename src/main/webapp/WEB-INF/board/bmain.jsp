<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="./../common/favicon.jsp"%>

<head>
	<script>
	$(document).ready(function(){
		$('#writeSubmit').click(function(){
			var categoryUnselected = $('#category').val();
			if( categoryUnselected === "none"){
				alert('카테고리를 선택해 주세요.');
				return false;
			}
			var titleUntyped = $('#title').val();
			if( titleUntyped == "" ){
				alert("제목을 입력해 주세요.");
				return false;
			}
			var bodyUntyped = $('#body').val();
			if( bodyUntyped == "" ){
				alert("내용을 입력해 주세요.");
				return false;
			}else{
				return true;
			}
		});
	});
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board/board.css">		
		<title>D3 Exam</title>
		<meta charset="utf-8"y>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Document</title>
</head>

<body>

	<%@ include file="./../common/top.jsp"%>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 text-center" >
				<br><br><br>
				<%@ include file="./nav.jsp" %><!-- 사이드네비 -->
			</div>
		<div class="col-lg-offset-1 col-lg-7 col-lg-offset-1
		col-md-offset-1 col-md-7 col-md-offset-1
		col-sm-offset-1 col-sm-7 col-sm-offset-1
		col-xs-offset-1 col-xs-7 col-xs-offset-1" >

<br id="section-1">
<br>
			<%@ include file="./board_write.jsp"%> <!-- 글쓰기 -->

			<br>
			<br>
			<br id="section-3">
			<br>
								<h2  class="text-center">질문</h2>
								<hr>
									<table class="table" class="text-center">
									<thead>
									<tr>
										<th width="20%">Title</th>
										<th width="20%">Writer </th>
										<th width="20%">Date</th>
									</tr>
									</thead>

									</tbody>
					 			</table>
					<br><br>
					<br id="section-2"><br>

					<h2  class="text-center">요청</h2>
					<hr>
					<table class="table" class="text-center">
						<thead>
						<tr>
							<th width="20%">Title</th>
							<th width="20%">Writer</th>
							<th width="20%">Date</th>
						</tr>
						</thead>
							<tbody>
						</tbody>
					</table>
				<br><br>
				<br><br>
		</div>

		<!-- footer자리 -->
		</div>
	</div>

<!-- 스크롤 코딩 시작 -->

<script src="${pageContext.request.contextPath}/js/board/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/board/jquery.scrollTo.js"></script>
<script src="${pageContext.request.contextPath}/js/board/jquery.nav.min.js"></script>

	<script>
	$(document).ready(function() {
	  $('#nav').onePageNav({
	    begin: function() {
		  console.log('start')
	    },
	    end: function() {
		  console.log('stop')
	    }
	  });
	});
	</script>

<!-- 스크롤 코딩 끝 -->

</body>
</html>
