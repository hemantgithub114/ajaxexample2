$(document).ready(function() {
  $('#new_item').on('ajax:success', function(event) {
    $('#items-list').html(event.detail[2].responseText);
  });
});
