

$(document).ready(function(){
    $("#showSignUp").click(function(){
        $("#login").addClass("hidden");
        $("#signup").removeClass("hidden");

    });
    $("#showLogIn").click(function(){
        $("#login").removeClass("hidden");
        $("#signup").addClass("hidden");

    });
});
// games more details
  $(function() {
     $(".js-more").on('click', function() {
       var gameId = $(this.id).selector;
       $.get("/games/" + gameId + "/details", function(data) {
           $("#details-" + gameId).text(data)
       });
     });
   });


//
// //reviews truncated
//   $(function() {
//     $(".review-more").on("click", function() {
//        var reviewId = $(this.id).selector;
//        debugger
//        $.get("/reviews/" + reviewId + "/content", function(contentText) {
//           $("#body-" + reviewId).html(contentText);
//         });
//     });
//   });
//













// end of document ready function
