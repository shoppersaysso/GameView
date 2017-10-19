<<<<<<< HEAD
//reviews truncated
$(function () {
  $(".review-more").on("click", function() {
    var reviewId = $(this.id).selector;
    $.getJSON("/reviews/" + reviewId + "/content", function(data) {
      $("#body-" + reviewId).html(data);
    });
  });
});
=======
// load game details on review show page

$(function() {
  $(".load_game").on("click", function(e) {
      e.preventDefault();
    var url = this.href;
    $(".gameShow").load(url + ' #gameDetails');
  })

});


  // js model object
  function Review(id, title, content, game_title) {
  	this.id = id
  	this.title = title
  	this.content = content
  	this.game_title = game_title
  }

  // js model prototype
  Review.prototype.madeReview = function() {
    alert("Thanks for reviewing"+ this.game_title+ "!");
  }
>>>>>>> final-touches
