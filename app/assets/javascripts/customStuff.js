

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


j(function(){
  j(".Fname").focus();
});

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