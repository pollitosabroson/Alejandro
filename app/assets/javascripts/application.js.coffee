//= require jquery
//= require jquery_ujs
//= require jquery.fullPage.js
//= require jquery.slimscroll.min.js
//= require_tree .

$(document).ready ->
  pepe = $.fn.fullpage(
    slidesColor: ["#1bbc9b", "#4BBFC3", "#7BAABE", "whitesmoke", "#ccddff"]
    anchors: ["firstPage", "secondPage", "3rdPage", "4thpage", "lastPage"]
    menu: "#menu"
    afterLoad: (anchorLink, index) ->
      
      #section 2
      if index is 2
        
        #moving the image
        $("#section1").find("img").delay(500).animate
          left: "0%"
        , 1500, "easeOutExpo"
        $("#section1").find("p").first().fadeIn 1800, ->
          $("#section1").find("p").last().fadeIn 1800

      
      #section 3
      if anchorLink is "3rdPage"
        
        #moving the image
        $("#section2").find(".intro").delay(500).animate
          left: "0%"
        , 1500, "easeOutExpo"
  )