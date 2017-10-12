//reviews truncated
$(function () {
  $(".review-more").on("click", function() {
    var reviewId = $(this.id).selector;
    debugger
    $.getJSON(reviewId, function(data) {
      $("#body-" + reviewId).html(data);
    });
  });
});
