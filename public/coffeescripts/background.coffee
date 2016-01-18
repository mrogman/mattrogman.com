Background =

  init: ->
    this.$el = $('body').children 'div.background'
    this.$el
      .css
        opacity: '0'
        width: '100vw'
        height: '100vh'
        top: '0'
        left: '0'
      .animate
        opacity: '0.75'
        #width: '105vw'
        #height: '105vh'
        #top: '-2.5vh'
        #left: '-1.5vw'
      , 2000, 'easeOutQuint'
    this

module.exports = Background
