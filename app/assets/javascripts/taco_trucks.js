$(function(){
  // We could use all this code to do the Ajax form submit, but remote: true handles all that for us
  // $('#new_taco_truck').on('submit', function(){
  //   var data = $(this).serialize();
  //   $.ajax({
  //     type: 'POST',
  //     url: 'taco_trucks',
  //     data: data,
  //     success: function(){ console.log("Ajax!!!!!") }
  //   })
  //   return false;
  // });

  // Rails will delete the taco truck from the database with using just remote: true, but you need to remove taco trucks from the view with javaScript after you click the delete link.
  $(document).on('confirm:complete', function(e, answer) {
    if (answer) {
      // After you click "OK" on the alert box, you want to remove the table row
      $(e.target).closest('tr').remove();
    } else {
      // could handle some kind of callback here if the user cancels the delete alert
    }
  });
});