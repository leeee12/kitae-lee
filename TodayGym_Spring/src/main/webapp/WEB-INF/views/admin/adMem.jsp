<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMem_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="resources/JavaScript/jquery.serializeObject.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="wrap">
		<section>
			<div class="content-admin">
				<div class="content-adSidebar">
					<jsp:include page="../layout/adSidebar.jsp" />
				</div>

				<div class="content">
					<div class="content-admem">
						<table class="admem-table-total">
							<thead>
								<tr>
									<th>회원총원</th>
									<td>nn</td>
								</tr>
							</thead>
						</table>

						<table class="admem-listtitle">
							<thead>
								<tr>
									<th colspan="5"><h1>회원 목록</h1></th>
								</tr>
								<tr>
									<th>가입일자</th>
									<th>이 름</th>
									<th>아이디</th>
									<th>생년월일</th>
									<th></th>
								</tr>
							</thead>
							<tbody class="admem-mlist">
								<c:forEach items="${mList}" var="mb">
								<tr>
									<td>${mb.m_joindate}</td>
									<td>${mb.m_name}</td>
									<td>${mb.m_id}</td>
									<td>${mb.m_birth}</td>
									<td><button class="admem-dtbtn" type="button"
											onclick="movehref('${mb.m_id}')">
											상세보기</button></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<!-- 회원 검색 -->
						<form name="adsearch-form" autocomplete="off">
							<div class="admem-search">
								<select class="admem-sselct" name="searchType">
									<option selected value="">검색 선택</option>
									<option value="m_name">이름</option>
									<option value="m_id">아이디</option>
								</select> <input type="text" name="keyword" value=""></input> <input
									type="button" onclick="getSearchList()" class="admem-sbtn"
									value="검색">
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
<script type="text/javascript">
function getSearchList(){
	var formdata = $("form[name=adsearch-form]").serializeObject();
	console.log(formdata);
	$.ajax({
		type: 'GET',
		url : "./getSearchList",
		data : formdata,
		dataType : "json",
		success : function(result){
			console.log(result);
			//테이블 초기화
			$('.admem-listtitle > tbody').empty();
			if(result.length>=1){
				result.forEach(function(mb){
					str='<tr>'
					str += "<td>"+mb.m_joindate+"</td>";
					str += "<td>"+mb.m_name+"</td>";
					str += "<td>"+mb.m_id+"</td>";
					str += "<td>"+mb.m_birth+"</td>";
					str += "<td><button class='admem-dtbtn' type='button' onclick='movehref(\"" + mb.m_id + "\")'>상세보기</button></td>";
					st="</tr>"
					$('.admem-listtitle').append(str);
				})
			}
		}
	})
}

function movehref(id){
	location.href="./adMemDetailMove?m_id=" + id;
}
</script>
</html>