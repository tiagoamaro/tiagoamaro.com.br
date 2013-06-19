scrollSpeed = 'fast'
fadeSpeed = 'fast'
minimumWindowScrollHeight = 200

$('#top-bar .top-bar-section a').click (e) ->
  faqId = $(@).attr('href');
  $('html, body').animate
    scrollTop : $(faqId).offset().top 
  , scrollSpeed

# go top button based on a tutplus tutorial
# link: http://webdesign.tutsplus.com/tutorials/htmlcss-tutorials/quick-tip-implement-a-sticky-back-to-top-button/

$('#go-top').click (e) ->
  $('html, body').animate
    scrollTop : 0
  , scrollSpeed

goTop = $('#go-top')
$(window).scroll ->
  if $(@).scrollTop() > minimumWindowScrollHeight
    goTop.show()
  else
    goTop.hide()