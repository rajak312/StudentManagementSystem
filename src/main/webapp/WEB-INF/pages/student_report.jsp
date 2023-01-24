<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<style>
a {
	text-decoration: none;
}
</style>
</head>
<body class="container-fluid">
	<div class="p-4 m-4">

		<c:if test="${!empty msg }">
			<h3 class="text-center text-succeess">${msg }</h3>
		</c:if>
<h3>Top 2 Student Result</h3>
		<table class="table table-hover table-striped">
			<tr class="table text-white bg-secondary">
				<th>RollNo</th>
				<th>Name</th>
				<th>Science Avg</th>
				<th>English Avg</th>
				<th>Maths Avg</th>
				<th>Semester1 Avg</th>
				<th>Semester2 Avg</th>
				<th>Average</th>


			</tr>
			<c:forEach var="studentList" items="${top2StuentList }" begin="0" end="1">
				<tr>
					<td>${studentList.rollNo}</td>
					<td>${studentList.name }</td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${(studentList.studentSemDetails[0].englishMarks+studentList.studentSemDetails[1].englishMarks)/2}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${(studentList.studentSemDetails[0].mathsMarks+studentList.studentSemDetails[1].mathsMarks)/2}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${(studentList.studentSemDetails[0].scienceMarks+studentList.studentSemDetails[1].scienceMarks)/2}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${(studentList.studentSemDetails[0].mathsMarks
                  +studentList.studentSemDetails[0].englishMarks+
                   studentList.studentSemDetails[0].scienceMarks)/3} " />
					</td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${(studentList.studentSemDetails[1].mathsMarks 
                   +studentList.studentSemDetails[1].englishMarks+
                   studentList.studentSemDetails[1].scienceMarks)/3 }" />
					</td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${((studentList.studentSemDetails[0].mathsMarks
                  +studentList.studentSemDetails[0].englishMarks+
                   studentList.studentSemDetails[0].scienceMarks)/3 
                   +(studentList.studentSemDetails[1].mathsMarks 
                   +studentList.studentSemDetails[1].englishMarks+
                   studentList.studentSemDetails[1].scienceMarks)/3)/2 }" /></td>

				</tr>


			</c:forEach>
		</table>


		<c:choose>
			<c:when test="${!empty studentList.getContent()}">
			<h3>All Student Result</h3>
				<table class="table table-hover table-striped">
					<tr class="table text-white bg-secondary">
						<th>RollNo</th>
						<th>Name</th>
						<th>Science Avg</th>
						<th>English Avg</th>
						<th>Maths Avg</th>
						<th>Semester1 Avg</th>
						<th>Semester2 Avg</th>
						<th>Average</th>


					</tr>
					<c:forEach var="studentList" items="${studentList.getContent() }">
						<tr>
							<td>${studentList.rollNo}</td>
							<td>${studentList.name }</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="2"
									value="${(studentList.studentSemDetails[0].englishMarks+studentList.studentSemDetails[1].englishMarks)/2}" /></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="2"
									value="${(studentList.studentSemDetails[0].mathsMarks+studentList.studentSemDetails[1].mathsMarks)/2}" /></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="2"
									value="${(studentList.studentSemDetails[0].scienceMarks+studentList.studentSemDetails[1].scienceMarks)/2}" /></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="2"
									value="${(studentList.studentSemDetails[0].mathsMarks
                  +studentList.studentSemDetails[0].englishMarks+
                   studentList.studentSemDetails[0].scienceMarks)/3} " />
							</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="2"
									value="${(studentList.studentSemDetails[1].mathsMarks 
                   +studentList.studentSemDetails[1].englishMarks+
                   studentList.studentSemDetails[1].scienceMarks)/3 }" />
							</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="2"
									value="${((studentList.studentSemDetails[0].mathsMarks
                  +studentList.studentSemDetails[0].englishMarks+
                   studentList.studentSemDetails[0].scienceMarks)/3 
                   +(studentList.studentSemDetails[1].mathsMarks 
                   +studentList.studentSemDetails[1].englishMarks+
                   studentList.studentSemDetails[1].scienceMarks)/3)/2 }" /></td>

						</tr>


					</c:forEach>
				</table>
				<p class="text-center">

					<c:if test="${studentList.hasPrevious() }">
						<a
							href="report?page=${studentList.getPageable().getPageNumber()-1 }"><<
							Previous</a>&nbsp;&nbsp;
            </c:if>
					<c:if test="${!studentList.isFirst() }">
						<a href="report?page=0">First</a>&nbsp;&nbsp;
            </c:if>

					<c:forEach var="i" begin="1" end="${studentList.getTotalPages()}"
						step="1">
						<a href="report?page=${i-1 }">${i}</a>&nbsp;&nbsp;
            </c:forEach>

					<c:if test="${!studentList.isLast() }">
						<a href="report?page=${studentList.getTotalPages()-1 }">Last</a>&nbsp;&nbsp;
            </c:if>
					<c:if test="${studentList.hasNext() }">
						<a
							href="report?page=${studentList.getPageable().getPageNumber()+1 }">Next
							>></a>
					</c:if>

				</p>
			</c:when>
			<c:otherwise>
				<h4 class="text-center text-warning">No Record Found</h4>
			</c:otherwise>
		</c:choose>


		<br> <br>
		<hr>
		<div class="d-flex justify-content-center text-align-center">
			<div>
				<a href="register"><button
						style="background-image: url('images/add.jpg');"
						class="btn btn-primary  h-100 text-danger">Add Student</button></a>

			</div>
		</div>
	</div>
</body>
</html>