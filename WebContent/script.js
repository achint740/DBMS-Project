$(()=>{
	console.log("Loaded");
    setTimeout(() => {
        $(".loader-wrapper").fadeOut("slow");
    }, 1500);
    $('#sidebarCollapse').on('click', function() {
        $('#sidebar, #content').toggleClass('active');
    });
});