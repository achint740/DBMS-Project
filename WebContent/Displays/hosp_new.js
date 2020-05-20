$(".Assign").on('click',function(){
	var d_id = (($(this).parent()).siblings(".td_doctor")).children().val();
	var aadhar = (($(this).parent()).siblings(".td_aadhar")).children().val();
	var hosp = (($(this).parent()).siblings(".td_hosp")).children().val();
	$("#aadhar_no").val(aadhar);
	$("#doctor_id").val(d_id);
	$("#hosp_id").val(hosp);
	console.log("Done");
});