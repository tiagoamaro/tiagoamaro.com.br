scrollSpeed = 'fast'
fadeSpeed = 'fast'
minimumWindowScrollHeight = 200

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