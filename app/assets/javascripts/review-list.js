$(function () {
  $(".load-reviews").on("click", function(e) {
    e.preventDefault();
    var gameId = parseInt($(".load-reviews").attr("data-id"));
    $.get("/games/" + gameId + "/reviews" + ".json", function(reviews) {

    var renderedReviews = reviews.map(review => `<div><h1>${review.title}<h1><p><em>${review.content}<em></p></div><br>`);
    $('#reviews').append(renderedReviews);
    });
  });
});
