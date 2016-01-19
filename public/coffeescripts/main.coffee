$ ->
  do Background.init

  $accountIcons = $('.account-icons').find 'i'
  $contentBox = $('.content')
  $contentInner = $('.content-inner')

  window.iconOrigColor = $accountIcons.css 'color'

  $contentBox.css opacity: '0'

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
