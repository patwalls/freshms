@Projects = React.createClass
  getInitialState: ->
    projects: @props.data
  getDefaultProps: ->
    projects: []
  addProject: (project) ->
    projects = @state.projects.slice()
    projects.push project
    @setState projects: projects
  render: ->
    React.DOM.div
      className: 'projects'
      React.DOM.h2
        className: 'title'
        'Projects'
      React.createElement ProjectForm, handleNewProject: @addProject
      React.DOM.hr null
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Title'
            React.DOM.th null, 'Artist'
            React.DOM.th null, 'Link'
            React.DOM.th null, 'Anticipated Date'
            React.DOM.th null, 'Leak Date'
            React.DOM.th null, 'Leaked?'
        React.DOM.tbody null,
          for project in @state.projects
            React.createElement Project, key: project.id, project: project
