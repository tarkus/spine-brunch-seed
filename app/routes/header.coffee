class Header extends Spine.Controller
  className: "header"

  render: =>
    @html @template("header")
      title: window.title
      subtitle: window.subtitle
    @

module.exports = Header
