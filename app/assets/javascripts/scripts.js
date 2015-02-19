$(function() {
  $('.modal').on('hidden.bs.modal', function(){
    console.log(this);
      $(this).find('form')[0].reset();
  });
});
