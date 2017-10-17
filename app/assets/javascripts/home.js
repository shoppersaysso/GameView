$(document).ready(function(){
// games more details show on home page
  $(function() {
     $(".js-game-more").on('click', function() {
       var gameId = $(this.id).selector;
       $.get("/games/" + gameId + "/details", function(data) {
           $("#details-" + gameId).text(data)
       });
     });
   });

 // reviews truncated on home page
   $(function() {
     $(".js-review-more").on("click", function() {
        var reviewId = $(this.id).selector;
        var gameId = $(this).next('.hidden').text();
        $.get("/games/" + gameId + "/reviews/" + reviewId + "/content", function(data) {
           $("#content-" + reviewId).text(data)
       });
     });
   });

}); // end of document ready function
