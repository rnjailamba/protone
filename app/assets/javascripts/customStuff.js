/*Date time Picker*/
var j = jQuery.noConflict();
j(document).ready(function(){
    j('#competition_startDateText').datetimepicker({
      sideBySide: true,
      format: "MMMM Do YYYY, h a",
       widgetPositioning: {
        vertical: 'top',
        horizontal: 'right'
      }

      
    });

    
    j('#competition_endDateText').datetimepicker({
      sideBySide: true,
      format: "MMMM Do YYYY, h a",
       widgetPositioning: {
        vertical: 'top',
        horizontal: 'right'
      }
      
    });
    j("#competition_startDateText").on("dp.change",function (e) {
        j('#competition_endDateText').data("DateTimePicker").minDate(e.date);
    });
    j("#competition_endDateText").on("dp.change",function (e) {
        j('#competition_startDateText').data("DateTimePicker").maxDate(e.date);
    });

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

   j( document).on( 'click', '.categ li', function( event ) {

      var $target = j( event.currentTarget );
      console.log($target.text());

       j('#competition_category').val($target.text().toString());

      $target.closest( '.btn-group' )
         .find( '[data-bind="label"]' ).text( $target.text() )
            .end()
         .children( '.dropdown-toggle' ).dropdown( 'toggle' );

      return false;

   });

    j( document).on( 'click', '.onOff li', function( event ) {

      var $target2 = j( event.currentTarget );
      console.log($target2.text());

       j('#competition_onOff').val($target2.text().toString());

      $target2.closest( '.btn-group' )
         .find( '[data-bind="label"]' ).text( $target2.text() )
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


/*Access code*/
j( document).on( 'click', '.letMeIn', function( event ) {


  
  
  var entry = j('#accessCode').val();
  console.log(entry);
  if (entry == "e") {
    window.location="/competitions";
    return false;

  }
  else
  {
    alert("Retry the code you were sent");
      return true;
  }

  

});
    






