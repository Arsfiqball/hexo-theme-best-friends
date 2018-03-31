$('#return-to-top').click(function() {      // When arrow is clicked
  $('body,html').animate({
    scrollTop : 0                       // Scroll to top of body
  }, 1000);
});

$('.dropdown').click(function(e) {
  $(this).toggleClass('is-active');
});

$(document).ready(function(){
  $('pre code').each(function(i, block) {
    block.innerHTML = block.innerHTML.trim();
    hljs.highlightBlock(block);
  });

  $('code.hljs').each(function(i, block) {
    hljs.lineNumbersBlock(block, { singleLine: true });
  });

  $('.share-button').click(function(e) {
    e.preventDefault();
    window.open($(this).attr('href'), 'fbShareWindow', 'height=500, width=320, top=' + ($(window).height() / 2 - 275) + ', left=' + ($(window).width() / 2 - 225) + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
    return false; 
  });

  twemoji.parse(document.body);
});
