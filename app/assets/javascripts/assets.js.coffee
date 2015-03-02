$ ->
   $('#assets').imagesLoaded ->
       $('#assets').masonry
           itemSelector: '.box'
           isFitWidth: true
