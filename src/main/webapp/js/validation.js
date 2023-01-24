function hello(){
	alert('how are you dear')
}
function validation(frm) {
alert('form is executing')
	console.log('validating the page')
	//document.getElementById("demo");

	const rollNoErr = document.getElementById("rollNoErr");
	const nameErr = document.getElementById("nameErr");

	const englishSem1Err = document.getElementById("englishSem1Err");
	const englishSem2Err = document.getElementById("englishSem2Err");

	const mathsSem1Err = document.getElementById("mathsSem1Err");
	const mathsSem2Err = document.getElementById("mathsSem2Err");

	const scienceSem1Err = document.getElementById("scienceSem1Err");
	const scienceSem2Err = document.getElementById("scienceSem1Err");





	//Cleaning all the errors
	rollNoErr.innerHTML = "";
	nameErr.innerHTML = "";
	englishSem1Err.innerHTML = "";
	englishSem2Err.innerHTML = "";
	mathsSem1Err.innerHTML = "";
	mathsSem2Err.innerHTML = "";
	scienceSem1Err.innerHTML = "";
	scienceSem2Err.innerHTML == "";




	let flag = true;


	let rollNo = frm.rollNo.value;
	let name = frm.name.value;
	let englishSem1 = frm.studentSemDetails[0].englishMarks.value;
	let mathsSem1 = frm.studentSemDetails[0].mathsMarks.value;
	let scienceSem1 = frm.studentSemDetails[0].scienceMarks.value;
	let englishSem2 = frm.studentSemDetails[1].englishMarks.value;
	let mathsSem2 = frm.studentSemDetails[1].mathsMarks.value;
	let scienceSem2 = frm.studentSemDetails[1].scienceMarks.value;

	if (rollNo == "") {
		rollNoErr = "RollNo Required..";
		flag = false;
	} else if (rollNo.length < 5 && rollNo.length > 12) {
		rollNoErr = "RollNo range should be 5 to 12";
		flag = false;
	}
	if (name == "") {
		nameErr = "Name is required";
		flag = false;
	} else if (name.legth < 4 && name.length > 15) {
		nameErr = "Name should have minimum 3 and maximum 15 chars";
		flag = false;
	}
	if (englishSem1 == "") {
		englishSem1Err = " Marks is rquired";
		flag = false;

	} else if (englishSem1 > 100 && englishSem1 < 0) {
		englishSem1Err = "Marks should have between 0 to 100";
		flag = false;
	}
	if (mathsSem1 == "") {
		mathsSem1Err = " Marks is rquired";
		flag = false;

	} else if (mathsSem1 > 100 && mathsSem1 < 0) {
		mathsSem1Err = "Marks should have between 0 to 100";
		flag = false;
	}
	if (scienceSem1 == "") {
		scienceSem1Err = " Marks is rquired";
		flag = false;

	} else if (scienceSem1 > 100 && scienceSem1 < 0) {
		scienceSem1Err = "Marks should have between 0 to 100";
		flag = false;
	}
	if (englishSem2 == "") {
		englishSem2Err = " Marks is rquired";
		flag = false;

	} else if (englishSem2 > 100 && englishSem2 < 0) {
		englishSem2Err = "Marks should have between 0 to 100";
		flag = false;
	}
	if (mathsSem2 == "") {
		mathsSem1Err = " Marks is rquired";
		flag = false;

	} else if (mathsSem2 > 100 && mathsSem2 < 0) {
		mathsSem1Err = "Marks should have between 0 to 100";
		flag = false;
	}
	if (scienceSem2 == "") {
		scienceSem2Err = " Marks is rquired";
		flag = false;

	} else if (scienceSem2 > 100 && scienceSem2 < 0) {
		scienceSem2Err = "Marks should have between 0 to 100";
		flag = false;
	}

	return flag;
}
