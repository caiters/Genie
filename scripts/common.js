(function(){

  // main menu open/close
  $('#mainMenu > a').click(function(e){
    e.preventDefault();
    if( $('#mainMenu.open').length){
      $('#mainMenu > ul').slideUp(150, function(){
        $('#mainMenu li, #mainMenu').removeClass('open');
        $('mainMenu ul').attr('style','');
      });
    } else {
      $('#mainMenu > ul').slideDown(150, function(){
        $('#mainMenu').toggleClass('open');
        $('#mainMenu > ul').attr('style','');
      });
    }
  });

  // main menu (sub level) open/close
  $('#mainMenu li.has-child > a').click(function(e){
    e.preventDefault();
    var $clickedLink = $(this);
    if($(this).parent('li').hasClass('open')){
      $clickedLink.siblings('ul').slideUp(150, function(){
        $clickedLink.parent('li').removeClass('open');
        $(this).attr('style', '');
      });
    } else {
      $('#mainMenu li.has-child ul').slideUp(150, function(){
        $(this).parent('li').removeClass('open');
        $(this).attr('style','');
      });
      $clickedLink.siblings('ul').slideDown(150, function(){
        $(this).parent('li').addClass('open');
        $(this).attr('style','');
      });
    }
  });

  // search open/close
  $('#openSearch').click(function(e){
    e.preventDefault();
    $('#header').toggleClass('search-open');
  });

  // accordion

  $('.expand-items').each(function(){
    var $accordion = $(this);
    $('a', $accordion).click(function(e){
      e.preventDefault();
      var $clickedLink = $(this);
      var $clickedLi = $(this).parent('li');

      //if this accordion is already open, just close it
      if( $clickedLi.hasClass('open')){
        $clickedLink.siblings('ul').slideUp(function(){
          $(this).attr('style','');
          $clickedLi.removeClass('open');
        });
      } else {
        // otherwise, close other open pieces of this accordion and then open this one
        $('li.open ul, li.open div', $accordion).slideUp(function(){
          $(this).parent('li').removeClass('open');
          $(this).attr('style', '');
        });
        $clickedLink.siblings('ul, div').slideDown(function(){
          $(this).attr('style','');
          $clickedLi.addClass('open');
        });
      }

    });
  });
})();
