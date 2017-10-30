// // load new review form on game show page
// $(function() {
//   $(".review_game").on("click", function(e) {
//     e.preventDefault();
//     var url = this.href
//     $(".newReview").load(url + ' #reviewForm');
//   });
// });
//
// function addNewReviewSubmitListener() {
//   $('.new_review').on("submit", function(e) {
//     e.preventDefault();
//     var url = this.action + '.json'
//     var data = $(this).serialize()
//     $.ajax({
//       type: "POST",
//       url: url,
//       data: data,
//       success: function(review) {
//         $('.newReview').html(review);
//       }
//     })
//   })
// }

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
  // 
  // addNewReviewSubmitListener()
}) // end of document ready
