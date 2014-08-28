React = require 'react'
NavItem = require 'react-bootstrap/NavItem'
IsActiveMixin = require './IsActiveMixin'

NavItemLink = React.createClass
  displayName: 'NavItemLink'
  mixins: [ IsActiveMixin ]
  render: ->
    @transferPropsTo(
      <NavItem
        href={@getHref()}
        active={@state.isActive}
        onClick={@handleRouteTo}>
        {@props.children}
      </NavItem>
    )

module.exports = NavItemLink
