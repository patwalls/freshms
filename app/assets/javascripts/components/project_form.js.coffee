  @ProjectForm = React.createClass
    getInitialState: ->
      link: ''
    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value
    valid: ->
      @state.link
    handleSubmit: (e) ->
      e.preventDefault()
      $.post 'projects', { project: @state }, (data) =>
        @props.handleNewProject data
        @setState @getInitialState()
      , 'JSON'
    render: ->
      React.DOM.form
        className: 'form-inline'
        onSubmit: @handleSubmit
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'hasitleaked.com link'
            name: 'link'
            value: @state.link
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Add New Project'
