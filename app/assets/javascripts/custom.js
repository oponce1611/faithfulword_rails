$(document).ready(function() {
 
  $("#owl-demo").owlCarousel({
        loop: true,
        autoplay:true,
        autoplayTimeout:7500,
        center: true,  
        navigation : true, // Show next and prev buttons
        slideSpeed : 5000,
        paginationSpeed : 5000,
        items : 1, 
        itemsDesktop : false,
        itemsDesktopSmall : false,
        itemsTablet: false,
        itemsMobile : false
 
    });
    $('.grid').masonry({
        itemSelector: '.grid-item',
        columnWidth: 220,
        gutter: 17
    });
 
});