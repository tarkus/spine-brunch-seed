# Spine on Brunch

This is a [Spine](http://spinejs.com) app skeleton for [Brunch](http://brunch.io/)

Main technologies are [CoffeeScript](http://coffeescript.org/),
[Stylus](http://learnboost.github.com/stylus/),
[Jade](http://jade-lang.com).

# Getting Started

    brunch new gh:tarkus/spine-brunch-seed
    npm start

# Overview
    
    config.coffee
    README.md
    /app/
      configenv.coffee
      /assets/
        images/
        fonts/
      /lib/
      models/
      styles/
      views/
      app.coffee
      index.html.jade
    /test/
    /vendor/
      javascripts/
      stylesheets/

* `config.coffee` contains configuration of your app. You can set plugins /
languages that would be used here.
* `app/configenv.coffee` contains script for bridging environment variables into your app. 
See more info on [jsenv-brunch](https://github.com/rcs/jsenv-brunch)
* `app/app.coffee` contains script for bootstrapping your app. 
* `app/index.html.jade` contains jade template for index.html, your app's main entry. 
Would be compiled and then copied to `public/index.html`.
* `app/assets` contains static files. Contents of the directory would 
be copied to `public/` without change.
Other `app/` directories could contain files that would be compiled. Languages,
that compile to JS or js files and located in app are
automatically wrapped in module closure so they can be loaded by
`require('module/location')`.
* `app/models` contain data models your app could use.
* `app/views` contains partials your app could use.
* `test/` contains feature & unit tests.
* `vendor/` contains all extra third-party code which cannot be installed via [Bower](http://bower.io). 
The code wouldn’t be wrapped in
modules, it would be loaded instantly instead.


# Other

Version of software this skeletion uses:

* jQuery 1.11.1
* Spine 1.3.2
* Underscore 1.6.0
* FontAwesome 4.1.0


# License

[WTFPL](http://www.wtfpl.net/txt/copying/)

