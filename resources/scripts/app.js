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
});
