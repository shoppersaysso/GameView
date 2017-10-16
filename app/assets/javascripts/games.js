$(document).ready(function(){
// games more details
  $(function() {
     $(".js-game-more").on('click', function() {
       var gameId = $(this.id).selector;
       $.get("/games/" + gameId + "/details", function(data) {
           $("#details-" + gameId).text(data)
       });
     });
   });


}) // end of document ready
