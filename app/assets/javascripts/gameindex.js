

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
  $(function() {
    $(".review-more").on("click", function() {
      //  var reviewId = $(this.id).selector;
       var url = $(this).selector //gets the url but syntax errors
       debugger
       $.getJSON(url + "/content", function(contentText) {
         console.log(contentText)
          $("#reviews-" + reviewId).text(contentText)
        })
    });
  });

  // $(function() {
  //   $(".review-more").on("click", function() {
  //      var reviewId = $(this.id).selector;
  //      $.getJSON("/games/#{REGISTRY.game_id}/reviews/" + reviewId + "/content", function(contentText) {
  //        console.log(contentText)
  //         $("#reviews-" + reviewId).text(contentText)
  //       })
  //   });
  // });
  //





// end of document ready function
