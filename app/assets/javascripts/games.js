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
