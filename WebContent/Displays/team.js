$("#add").on('click',()=>{
	alert("Connected 12");
});

$(".new1").on('click',()=>{
	var c = $(".new1").text();
	alert(c);
});

function handleClick(clickedId){
   console.log("Here");
   if(clickedId == "custid")
    $("#tableTextId").val("customer");
   else
	   $("#tableTextId").val("company");
   $("#achint").submit();
   console.log($("#tableTextId").val);
}

$(".Plus").on('click',function(){
	var aadhar = (($(this).parent()).siblings(".td_aadhar")).text();
	$("#myaadhar").val(aadhar);
	$("#hidden_form").submit();
});