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
