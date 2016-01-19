$ ->
  do Background.init
  $accountIcons = $('.account-icons').find 'i'
  window.iconOrigColor = $accountIcons.css 'color'
  $accountIcons.parent('a').on
    mouseenter: ->
      $(this).children().stop().animate
        color: '#006086'
      1000
    mouseleave: ->
      $(this).children().animate
        color: window.iconOrigColor
      1000
  true
