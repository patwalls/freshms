@Project = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, titleFormat(@props.project.title)
      React.DOM.td null, @props.project.link
      React.DOM.td null, @props.project.date
