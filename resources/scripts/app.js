$('#return-to-top').click(function() {      // When arrow is clicked
  $('body,html').animate({
    scrollTop : 0                       // Scroll to top of body
  }, 1000);
});

hljs.initHighlightingOnLoad();

$(document).ready(function(){
  $('code.hljs').each(function(i, block) {
    hljs.lineNumbersBlock(block);
  });

  $('.share-button').click(function(e) {
    e.preventDefault();
    window.open($(this).attr('href'), 'fbShareWindow', 'height=500, width=320, top=' + ($(window).height() / 2 - 275) + ', left=' + ($(window).width() / 2 - 225) + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
    return false; 
  });
});
