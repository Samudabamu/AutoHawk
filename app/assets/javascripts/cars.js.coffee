# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


`$( document ).ready(function() {

$('#make').change(function(e){
    var modelList = getModelList($(this).val());
    $('#model').html('');

    $.each(modelList,function(i,o){
        $('<option>' + o + '</option>').appendTo('#model');
    });
});

function getModelList(val){


    if (val == 1)
        return ['a','b','c'];
    if(val == 2)
        return [1,2,3,4];
    return
}

});`
