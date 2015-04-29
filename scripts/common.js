(function(){
  $('#mainMenu > a').click(function(e){
    e.preventDefault();
    $('#mainMenu').toggleClass('open');
  });

  $('#mainMenu li.has-child > a').click(function(e){
    e.preventDefault();
    if($(this).parent('li').hasClass('open')){
      $(this).parent('li').removeClass('open');
    } else {
      $('#mainMenu li.has-child').removeClass('open');
      $(this).parent('li').toggleClass('open');
    }
  });
  $('#openSearch').click(function(e){
    e.preventDefault();
    $('#header').toggleClass('search-open');
  });
})();
