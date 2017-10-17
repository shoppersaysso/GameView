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
