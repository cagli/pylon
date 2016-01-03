
var ready, set_positions;

set_positions = function(){
    // loop through and give each chapter a data-pos
    // attribute that holds its position in the DOM
    $('.panel-default').each(function(i){
        $(this).attr("data-pos",i+1);
    });
}


ready = function(){
     //call sortable on our div with the sortable class
    set_positions();
    $('.sortable').sortable();

//after the order changes
    $('.sortable').sortable().bind('sortupdate', function(e, ui) {
        var course = $('.panel-default').data("course");
        // array to store new order
        updated_order = []
        // set the updated positions
        set_positions();

        // populate the updated_order array with the new task positions
        $('.panel-default').each(function(i){
            updated_order.push({ id: $(this).data("id"), position: i+1 });
             console.log($(this).data("id"));
        });
        for (var k in updated_order){
             if (updated_order.hasOwnProperty(k)) {
             console.log('key is: ' + k + ', value is: ' + updated_order[k]);}}
        // send the updated order via ajax
        $.ajax({
            url:  '/librairie/'+course+'/edit',
            type: "PUT",
            data: { order: updated_order }
        });
    });


}
$(document).ready(ready);
$(document).on('page:load', ready);