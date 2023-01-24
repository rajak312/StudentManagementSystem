<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">

<script src="../../js/validation.js"></script>

<style type="text/css">
div {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}
</style>

</head>
<body>
	<div class="container-fluid">
		<noscript>
			<p class="text-center text-warning">Please unable javaScript for
				Better Experience</p>
		</noscript>

		<div class="d-flex justify-content-center align-items-center m-2 p-2 ">


			<form:form modelAttribute="studentDetails"
				onsubmit="return validation(this)"
				cssClass="border border-3 border-secondary rounded rounded-4 m-3 p-4 ">


				<div>
					<h2>Registration Form</h2>
					<label>RollNo</label>
					<form:input path="rollNo" />
					<form:errors path="rollNo" />
					<span id="rollNoErr"></span> <label>Name</label>
					<form:input path="name" />
					<form:errors path="name" />
					<span id="nameErr"></span>
					<div>
						<label>Semester 1</label>
						<form:input path="studentSemDetails[0].semester" value="1"
							readonly="true" />
						<label>English Marks</label>
						<form:input path="studentSemDetails[0].englishMarks" type="number" />
						<form:errors path="studentSemDetails[0].englishMarks" />
						<span id="englishSem1Err"></span> <label>Mathematics Marks</label>
						<form:input path="studentSemDetails[0].mathsMarks" type="number" />
						<form:errors path="studentSemDetails[0].mathsMarks" />
						<span id="mathsSem1Err"></span> <label>Science Marks</label>
						<form:input path="studentSemDetails[0].scienceMarks" type="number" />
						<form:errors path="studentSemDetails[0].scienceMarks" />
						<span id="scienceSem1NoErr"></span>
					</div>
					<div>
						<label>Semester 2</label>
						<form:input path="studentSemDetails[1].semester" value="2"
							readonly="true" />
						<label>English Marks</label>
						<form:input path="studentSemDetails[1].englishMarks" type="number" />
						<span id="englishSem2Err"></span>
						<form:errors path="studentSemDetails[1].englishMarks" />
						<label>Mathematics Marks</label>
						<form:input path="studentSemDetails[1].mathsMarks" type="number" />
						<form:errors path="studentSemDetails[1].mathsMarks" />
						<span id="mathsSem2Err"></span> <label>Science Marks</label>
						<form:input path="studentSemDetails[1].scienceMarks" type="number" />
						<form:errors path="studentSemDetails[1].scienceMarks" />
						<span id="scienceSem2Err"></span>
					</div>
					<button type="submit"
						class="btn btn-primary mt-2">Submit</button>
				</div>

			</form:form>


		</div>
	</div>
</body>
</html>