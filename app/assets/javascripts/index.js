$(document).ready(function(){

// toggle signup and login on index page
    $("#showSignUp").click(function(){
        $("#login").addClass("hidden");
        $("#signup").removeClass("hidden");

    });
    $("#showLogIn").click(function(){
        $("#login").removeClass("hidden");
        $("#signup").addClass("hidden");

    });





}); // end of document ready function
