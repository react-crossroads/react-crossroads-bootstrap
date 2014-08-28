React = require 'react'
ActiveState = require 'react-crossroads/lib/mixins/ActiveState'
RouteTo = require 'react-crossroads/lib/mixins/RouteTo'

IsActiveMixin =
  mixins: [
    ActiveState
    RouteTo
  ]

  getInitialState: ->
    isActive: false

  componentWillReceiveProps: (nextProps) ->
    @setState
      isActive: ActiveState.statics.isActive nextProps.to, nextProps.params

  updateActiveState: ->
    @setState
      isActive: ActiveState.statics.isActive @props.to, @props.params

module.exports = IsActiveMixin
