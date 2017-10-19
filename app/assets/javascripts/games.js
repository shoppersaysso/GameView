<<<<<<< HEAD
// more details button truncation

$(function() {
  $(".js-more").on("click", function() {
    var gameId = $(this.id).selector;
    $.get("/games/" + gameId + "/details", function(game) {
        $("#body-" + gameId ).html(game);
        $(".js-more").addClass("hidden");
    });
  });
});
=======
// load new review form on game show page
$(function() {
  $(".review_game").on("click", function(e) {
    var url = this.href
    $(".newReview").load(url + ' #reviewForm');
    e.preventDefault();
  });
  this.madeReview;
});

$(document).ready(function(){
  // next game on show page for all_games
  $(function () {
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
  });


}) // end of document ready
>>>>>>> final-touches
