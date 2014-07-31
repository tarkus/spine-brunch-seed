class Home extends Spine.Controller

  constructor: ->
    super
    @render()

  render: =>
    @replace @template("home")()
    @

module.exports = Home
