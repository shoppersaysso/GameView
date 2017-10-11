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
// games
$(function() {
  $(".js-more").on("click", function() {
    var gameId = $(this.id).selector;
    $.get("/games/" + gameId + "/details", function(details) {
      var detailText = "<p>" + details + "</p>";
        $("#game-" + gameid).html(detailText);
    });
  });
});

//reviews truncated

$(function() {
  $(".review-more").on("click", function() {
    var reviewId = $(this.id).selector;
    debugger
    $.get("/reviews/" + reviewId + "/content", function(content) {
      var contentText = "<p>" + content + "</p>";
        $("#review-" + reviewId).html(contentText);
        $("#review-" + reviewId).html(contentText);
    });
  });
});
