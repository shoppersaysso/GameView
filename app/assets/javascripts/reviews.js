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
