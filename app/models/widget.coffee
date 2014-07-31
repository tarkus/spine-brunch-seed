class Widget extends Spine.Model

  @configure "Widget", "name", "size", "content", "group"
  @extend Spine.Model.Ajax
  @extend Spine.ModelParty

  @url: "/widget"

module.exports = Widget

