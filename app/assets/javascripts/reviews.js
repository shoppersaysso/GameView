// load review on game show page
$(function() {
    $(".load_reviews").on("click", function(e) {
      var url = this.href
      $.getJSON(url, function(data) {
        $(".reviewTitle").html(data["title"])
        $(".reviewContent").html(data["content"])
      })
      e.preventDefault();
    });
  });

// load new review form on game show page
$(function() {
  $(".review_game").on("click", function(e) {
    var url = this.href
     $(".newReview").load(url + ' #reviewForm')
  e.preventDefault();
  });
});
