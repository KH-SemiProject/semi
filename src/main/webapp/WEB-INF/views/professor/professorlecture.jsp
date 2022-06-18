<%@ page import="professorlecture.model.dto.ProfessorLecture"%>
<%@ page import="professorlecture.model.dto.PresentLecture"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/record.css" />
<%
	List<ProfessorLecture> list = (List<ProfessorLecture>) request.getAttribute("list");
	List<PresentLecture> list2 = (List<PresentLecture>) request.getAttribute("list2");	
%>

<section class="section">
		<form name="lectureFrm" method="post" action="<%= request.getContextPath() %>/professor/professorlecture">
		<table>
			<tr>
				<th>
				<select name="lectureselect" id="lectureselect">
				<option value="none" selected>강의 목록</option>
<% 
				System.out.printf("if문 구동전");
				if(list2 != null && !list2.isEmpty()) {
					for(PresentLecture presentlecture : list2)
					{
						System.out.printf("if문 구동");
%>
				<option><%= presentlecture.getPresentLecture() %></option>
<%	
							System.out.printf("if문 구동후");
					}
				} else {
%>
				<option>강의목록없음</option>					
<%
				}
%>
				</select>
				
				<div>
				<%
				
				%>
				</div>
				
				</th>
				
			</tr>
			<tr>
				<th><button type="button" onclick="location.href='<%= request.getContextPath() %>/professor/professorlecture';">현재학기 강의 및 학생조회</button></th>
				<th><button type="button" onclick="location.href='<%= request.getContextPath() %>/professor/professorlecture/past';">지난학기 강의 및 학생조회</button></th>
			</tr>
		</table>
		
		<table id="record">
			<thead>
				<tr>
	                <th class="line1">강의년도, 학기</th>
	                <th class="line1">강의학년</th>
	                <th class="line1">강의시간</th>
	                <th class="line1">강의실</th>
	                <th class="line1">학생 이름</th>
	                <th class="line1">학생 아이디</th>
	                <th class="line1">학생 학년</th>
	                <th class="line1">학생 학과</th>
	                <th class="line1">학생 이메일</th>
	                <th class="line1">학생 전화번호</th>
				</tr>
			</thead>
			<tbody>
<%
			if(list != null && !list.isEmpty()) {
				for(ProfessorLecture professorlecture : list)
				{
%>
					<tr>
						<td class="line2"><%= professorlecture.getSubjectTerm() %></td>
			            <td class="line2"><%= professorlecture.getSubjectLebel() %></td>
			            <td class="line2"><%= professorlecture.getSubjectTime() %></td>
			            <td class="line2"><%= professorlecture.getSubjectClassroom() %></td>
			            <td class="line2"><%= professorlecture.getMemberName() %></td>
			            <td class="line2"><%= professorlecture.getMemberNo() %></td>
			            <td class="line2"><%= professorlecture.getMemberLevel() %></td>
			            <td class="line2"><%= professorlecture.getDepartmentNo() %></td>
			            <td class="line2"><%= professorlecture.getMemberEmail() %></td>
			            <td class="line2"><%= professorlecture.getMemberPhone() %></td>
					</tr>
<%
				}
			}
			else
			{
%>			
				<tr>
					<td colspan="10" style="text-align:center">강의수강중인 학생이 없습니다.</td>
				</tr>
<%				
			}
%>
			</tbody>
		</table>
	</form>
</section>

<script>
$(function(){
	
});
</script>

	
<%@ include file="/WEB-INF/views/common/footer.jsp" %>