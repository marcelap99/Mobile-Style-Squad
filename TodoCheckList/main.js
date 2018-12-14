$(document).ready(function(){


      $('#addItem').submit(function(e){
        e.preventDefault();

        let newItemToAdd = $('#textBox').val();
        var deleting = '<a class="del_line" href="#"><button id="myXbutton">X</button></a>&nbsp;';

       $('#items').append('<li>' + newItemToAdd + " " + deleting + '</li>');

       $('li').delegate(".del_line", "click", function() {
          $(this).parent().remove();
          return false;
      });


        $('#textBox').val('');

        });












});
