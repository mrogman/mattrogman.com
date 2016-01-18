Background =

  init: ->
    this.$el = $('body').children 'div.background'
    this.$el
      .css
        opacity: '0'
        width: '120vw'
        height: '120vh'
        top: '-10vh'
        left: '-10vw'
      .animate
        opacity: '1'
        width: '105vw'
        height: '105vh'
        top: '-2.5vh'
        left: '2.5vw'
      , 2000, 'easeOutQuint'
    this

module.exports = Background
