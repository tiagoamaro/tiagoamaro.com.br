# go top button based on a tutplus tutorial
# link: http://webdesign.tutsplus.com/tutorials/htmlcss-tutorials/quick-tip-implement-a-sticky-back-to-top-button/
minimumWindowScrollHeight = 200

goTop = $('#go-top')
$(window).scroll ->
  if $(@).scrollTop() > minimumWindowScrollHeight
    goTop.show()
  else
    goTop.hide()