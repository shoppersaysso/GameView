$(document).ready(function(){
// next user
  $(function () {
    $(".js-next-user").on("click", function() {
      var nextId = parseInt($(".js-next-user").attr("data-id")) + 1;
      $.getJSON("/users/" + nextId + "/review_list", function(data) {
        $(".userEmail").text(data["email"]);
        $.each(".userReviews").text(data["reviews"], function( index, value ) {
          alert( index + ": " + value );
        })
       // re-set the id to current on the link
       $(".js-next-user").attr("data-id", data["id"]);
    });
    });
  });

// previous user
  $(function () {
    $(".js-previous-user").on("click", function() {
      var prevId = parseInt($(".js-previous-user").attr("data-id")) - 1;
      $.getJSON("/users/" + prevId + "/review_list", function(data) {
        $(".userEmail").text(data["email"]);
        $.each(".userReviews").text(data["reviews"], function( index, value ) {
          alert( index + ": " + value );
        })
       // re-set the id to current on the link
       $(".js-previous-user").attr("data-id", data["id"]);
     })
    });
  });

  // <div class="userReviews"><% @user.review_list do |review| %>
  //   <h2 class="reviewTitle"><strong><%= review.title %></strong></h2>
  //   <h4 class="gameTitle"><em><%= review.game.title %></em></h4>
  //   <h3 class="reviewContent"><%= review.content %></h3>

}); // end of document ready function
