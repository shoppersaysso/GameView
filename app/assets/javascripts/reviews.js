//reviews truncated
$(function () {
  $(".review-more").on("click", function() {
    var reviewId = $(this.id).selector;
    $.getJSON("/reviews/" + reviewId + "/content", function(data) {
      $("#body-" + reviewId).html(data);
    });
  });
});
