

var j = jQuery.noConflict();
j(document).ready(function(){
    j('#datetimepicker4').datetimepicker();
})

j(document).ready(function() {
    j("#comp").masonry({
        // options
        itemSelector : '.masonry-item',
        // options...
    	isFitWidth: true

    });
});

/*Focus at the beggining of the form*/
j(function(){
  j(".Fname").focus();
});

/*Alerts fade out*/

j(function() {
  var flashCallback;
  flashCallback = function() {
    return j(".flash-message").fadeOut();
  };
  j(".flash-message").bind('click', (function(_this) {
    return function(ev) {
      return j(".flash-message").fadeOut();
    };
  })(this));
  return setTimeout(flashCallback, 3000);
});


/* The dropdownFor Category*/

   j( document).on( 'click', '.dropdown-menu li', function( event ) {

      var $target = j( event.currentTarget );
      console.log($target.text());

       j('#competition_category').val($target.text().toString());

      $target.closest( '.btn-group' )
         .find( '[data-bind="label"]' ).text( $target.text() )
            .end()
         .children( '.dropdown-toggle' ).dropdown( 'toggle' );

      return false;

   });

/*Google Maps*/
j(document).ready(function() {
    var autocomplete = new google.maps.places.Autocomplete(j("#competition_location")[0], {});

    google.maps.event.addListener(autocomplete, 'place_changed', function() {
        var place = autocomplete.getPlace();
        console.log(place.address_components);
    });
});

    






