$(document).ready(function(){
// reviews truncated
  $(function() {
    $(".js-review-more").on("click", function() {
       var reviewId = $(this.id).selector;
       var gameId = $(this).next('.hidden').text();
       $.get("/games/" + gameId + "/reviews/" + reviewId + "/content", function(data) {
          $("#content-" + reviewId).text(data)
      });
    });
  });

})//end of document ready
