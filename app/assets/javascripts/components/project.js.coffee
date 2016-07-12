@Project = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.project.title
      React.DOM.td null, @props.project.artist
      React.DOM.td null, @props.project.link
      React.DOM.td null, @props.project.anticipated_release_date
      React.DOM.td null, @props.project.leak_date
      React.DOM.td null, hasItLeaked(@props.project.leaked)
