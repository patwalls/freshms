  @ProjectForm = React.createClass
    getInitialState: ->
      title: ''
      link: ''
      leak_date: ''
    handleChange: (e) ->
      name = e.target.name
      @setState "#{ name }": e.target.value
    valid: ->
      @state.title && @state.link && @state.leak_date
    handleSubmit: (e) ->
      console.log('submit is trying')
      e.preventDefault()
      $.post '', { project: @state }, (data) =>
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
            placeholder: 'Title'
            name: 'title'
            value: @state.title
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Link'
            name: 'link'
            value: @state.link
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'date'
            className: 'form-control'
            placeholder: 'Leak Date'
            name: 'leak_date'
            value: @state.leak_date
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create Project'
