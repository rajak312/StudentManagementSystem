<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form Registration</title>

<script src="js/validation.js"></script>

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

		<div style="display: flex; justify-content: center;align-items: center">


			<form:form modelAttribute="studentDetails"
				onsubmit="return validation(this)" style="border: 2px solid gray; padding:30px; border-radius:15px; box-shadow:4px 7px 5px gray;margin:50px;">

				<h1 style="text-align:center">Registration Form</h1>
				<table>
					<tr>
						<td><label>RollNo</label></td>

						<td><div>
								<form:input path="rollNo" cssClass="form-control" />
								<c:if test="${!empty msg}">
									<span style="color: red">${msg }</span>
								</c:if>
								<span id="rollNoErr"></span>
							</div></td>

					</tr>
					<tr>
						<td><label>Name</label></td>
						<td>
							<div>
								<form:input path="name" />
								<span id="nameErr"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Semester 1</label></td>
						<td><form:input path="studentSemDetails[0].semester"
								value="1" readonly="true" /></td>
					</tr>
					<tr>
						<td><label>English Marks</label></td>
						<td>
							<div>
								<form:input path="studentSemDetails[0].englishMarks"
									type="number" />
								<span id="englishSem1Err"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Mathematics Marks</label></td>
						<td>
							<div>
								<form:input path="studentSemDetails[0].mathsMarks" type="number" />
								<span id="mathsSem1Err"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Science Marks</label></td>
						<td>
							<div>
								<form:input path="studentSemDetails[0].scienceMarks"
									type="number" />
								<span id="scienceSem1Err"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Semester 2</label></td>
						<td><form:input path="studentSemDetails[1].semester"
								value="2" readonly="true" /></td>
					</tr>
					<tr>
						<td><label>English Marks</label></td>
						<td>
							<div>
								<form:input path="studentSemDetails[1].englishMarks"
									type="number" />
								<span id="englishSem2Err"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Mathematics Marks</label></td>
						<td>
							<div>
								<form:input path="studentSemDetails[1].mathsMarks" type="number" />
								<span id="mathsSem2Err"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Science Marks</label></td>
						<td>
							<div>
								<form:input path="studentSemDetails[1].scienceMarks"
									type="number" />
								<span id="scienceSem2Err"></span>
							</div>
						</td>
					</tr>

					<tr>
						<td colspan="2">
							<button type="submit" style="width:100%; color:white; background-color: blue;padding:6px; border-radius: 8px;border:0px">Submit</button>
						</td>
					</tr>

				</table>

			</form:form>


		</div>
	</div>
</body>
</html>