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
      isActive: @isActive nextProps.to, nextProps.params

  updateActiveState: ->
    @setState
      isActive: @isActive @props.to, @props.params

module.exports = IsActiveMixin
