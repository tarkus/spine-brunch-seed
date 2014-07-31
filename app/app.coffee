Header     = require './routes/header'
Footer     = require './routes/footer'

Home       = require './routes/home'

Spine.Controller.include
  
  template: (name) -> (require "./views/#{name}") or (->)

class Stage extends Spine.Stack
  className: "stage"

  controllers:
    home: Home

  constructor: ->
    @el = $("<div id='page-wrapper'/>").addClass(@className).appendTo($("#wrapper")) unless @el?
    @footer = new Footer
    @footer.render()

    super
    
  #default: 'dashboard'
  
class SampleApp extends Spine.Controller
  className: "app"
  
  constructor: ->
    super

    @header  = new Header

    @append @header.render()

    @stage = new Stage
    @setStack @stage


    @routes
      "*any": =>
        @stage.home.active()

$ ->
  $.ajaxSetup cache: false

  $.ajaxPrefilter (options, originalOptions, xhr) =>
    options.url = "#{base_uri}#{options.url}" unless options.url.indexOf("http://") is 0
    options

  app = new SampleApp el: $("#wrapper")
  Spine.Route.setup()

  window.App = app


