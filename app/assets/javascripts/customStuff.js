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