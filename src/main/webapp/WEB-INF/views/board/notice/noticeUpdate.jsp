<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/board.css" />
<section id="notice_container_enroll" class="section">
<%-- 입력 폼 --%>
<main class="mt-5 pt-5">
<div class="container-fluid px-4">
	<h3 class="mt-4" >공지사항 수정</h3>
	<div class="card mb-4">
		<div class="card-body">
			<form action="" method="post">
				<div class="mb-3">
					<label for="writer" class="form-label">작성자</label> <input 
						type="text" class="form-control" id="writer" name="writer"
						value="">
				</div>
				<div class="mb-3">
					<label for="title" class="form-label">제목</label> <input 
						type="text" class="form-control" id="title" name="title"
						value="">
				</div>
				<div class="mb-3">
					<label for="content" class="form-label">내용</label> 
					<textarea class="form-control" id="content" name="content"></textarea>
				</div>
				<div class="mb-3">
					<input type="file" name="upFile1">
					<br>
					<input type="file" name="upFile2">
				</div>
				<div id="update_btn">
					<button id="" class="btn btn-outline-primary">수정하기</button>
					<button id="" class="btn btn-outline-primary">취소</button>
				</div>
			</form>
		</div>
	</div>
</div>
</main>
</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>