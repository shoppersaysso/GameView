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
Review.prototype.showReview = function() {
  let reviewPlaceholder = `
  <div class="review-${this.id}">
  <h3><strong> ${this.title} </strong></h3>
  <h4><em> ${this.game_title} </em></h4>
  <p> ${this.content} </p>
  `
  return reviewPlaceholder
}
