// load review on game show page
// $(function() {
//     $(".load_reviews").on("click", function(e) {
//       var url = this.href
//       $.getJSON(url, function(data) {
//         $(".reviewTitle").html(data["title"])
//         $(".reviewContent").html(data["content"])
//       })
//       e.preventDefault();
//     });
//   });

$(function() {
    $(".load_reviews").on("click", function(e) {
      $.ajax({
        url: this.href,
        type: 'GET',
        dataType: 'json',
        success: function(data) {
          $(".reviewTitle").html(data["title"])
          $(".reviewContent").html(data["content"])
        },
        error: function(data) {
          alert('No review found. Write one!')
        },
      });
      e.preventDefault();
    });
  });


// load new review form on game show page
$(function() {
  $(".review_game").on("click", function(e) {
    var url = this.href
    $(".newReview").load(url + ' #reviewForm');
    e.preventDefault();
  });
  this.madeReview;
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
