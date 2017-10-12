'use strict'

$(document).ready(function(){
    $("#showSignUp").click(function(){
        $("#login").addClass("hidden");
        $("#signup").removeClass("hidden");

    });
    $("#showLogIn").click(function(){
        $("#login").removeClass("hidden");
        $("#signup").addClass("hidden");

    });
    // $.get('/list_items/31.json', function(listItemObject){

// games
$(function() {
  $(".js-more").on("click", function() {
    var gameId = $(this.id).selector;
    $.get("/games/" + gameId + "/details", function(game) {
        $("#body-" + gameId ).html(game);
    });
  });
});

//reviews truncated
$(function () {
  $(".review-more").on("click", function() {
    var reviewId = $(this.id).selector;
    $.getJSON("/reviews/" + reviewId + "/content", function(data) {
      $("#body-" + reviewId).html(data);
    });
  });
});

});
