//render a new review on the same page without refreshing and allow for additional reviews to post
$(function () {
  $('.new_review').on("submit", function(e) {
    e.preventDefault();
    var values = $(this).serialize();
    var posting = $.post(this.action + '.json', values);
    posting.done(function(data) {
      var review = data;
      $('#reviews').append(`<div><h1>${review.title}<h1><p><em>${review.content}<em></p></div><br>`)
      });
    $('.new_review')[0].reset();
    return false;
  })
})
// load reviews button on game show page loads list of reviews
function loadReviewsListener() {
  $(".load-reviews").on("click", function(e) {
    e.preventDefault();
    var gameId = parseInt($(".load-reviews").attr("data-id"));
    $.get("/games/" + gameId + "/reviews" + ".json", function(reviews) {
    var renderedReviews = reviews.map(review => `<div><h1>${review.title}<h1><p><em>${review.content}<em></p></div><br>`);
    $('#reviews').append(renderedReviews);
    });
    $(".load-reviews").addClass("hidden");
  });
};


$(document).ready(function(){
  // next game on show page for all_games
  $(".js-next-game").on("click", function() {
    var nextId = parseInt($(".js-next-game").attr("data-id")) + 1;
    $.getJSON("/games/" + nextId + "/game_data", function(data) {
      $(".gameTitle").text(data["title"]);
      $(".gameDeveloper").text(data["developer"]);
      $(".gameGenre").text(data["genre"]);
      $(".gameRating").text(data["esrb_rating"]);
      $(".gamePlayers").text(data["is_multiplayer?"]);

     // re-set the id to current on the link
     $(".js-next-game").attr("data-id", data["id"]);
   });
  });
}) // end of document ready
