$('#top-bar a').click (e) ->
  faqId = $(@).attr('href');
  $('html, body').animate
    scrollTop : $(faqId).offset().top 
  , 'fast'