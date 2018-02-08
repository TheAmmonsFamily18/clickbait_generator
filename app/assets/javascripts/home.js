function CBGgetNewHeadline(event) {
  var headlineType = $(this).attr('id');
  $.get('/home/generate',
        'headline_type=' + headlineType,
        onGetSuccess
       );
}

function onGetSuccess(xhr) {
  console.log(xhr);
}

window.onload = function(){
  $('.button-container__button').click(CBGgetNewHeadline);
};
