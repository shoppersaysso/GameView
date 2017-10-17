$(function() {
  $(".new_game").on("click", function(e) {
    var url = this.href
     $(".newReview").load(url + ' #reviewForm')
  e.preventDefault();
  });
});
