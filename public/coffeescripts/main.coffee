$ ->
  do Background.init

  $accountIcons = $('.account-icons').find 'i'
  $contentBox = $('.content')
  $contentInner = $('.content-inner')

  window.iconOrigColor = $accountIcons.css 'color'

  $contentBox.css opacity: '0'

  #content box animation
  window.setTimeout ->
    window.contentBox =
      width: $contentBox.width()
      height: $contentBox.height()

    $contentInner.hide()
    $contentBox.css opacity: '1'

    $contentBox
      .css(
        opacity: '0'
        width: '10%'
        height: '10%')
      .animate(
        opacity: '1'
        width: window.contentBox.width + 'px'
        height: window.contentBox.height + 'px'
      600, 'easeOutBack', ->
        $contentInner.fadeIn 'fast'
        $(this).removeAttr('style')
    )
  , 400

  #icon highlight animation on interval
  iconHighlight = ->
    $accountIcons.each (i, icon) ->
      interval = i * 100
      window.setTimeout ->
        $(icon)
          .trigger('mouseenter')
          .delay(200)
          .trigger('mouseleave')
      , interval

  startIconHighlight = setInterval iconHighlight, 10000

  #icon event bindings
  $accountIcons.parent('a').on
    mouseenter: ->
      clearInterval startIconHighlight # stop interval when cursor over icon
      $(this).children().stop().animate
        color: '#006086'
      1000
    mouseleave: ->
      startIconHighlight = setInterval iconHighlight, 10000 # restart interval
      $(this).children().animate
        color: window.iconOrigColor
      1000
  true
