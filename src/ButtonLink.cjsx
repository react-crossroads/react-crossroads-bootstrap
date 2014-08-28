React = require 'react'
Button = require 'react-bootstrap/Button'
RouteTo = require 'react-crossroads/lib/mixins/RouteTo'

ButtonLink = React.createClass
  displayName: 'ButtonLink'
  mixins: [ RouteTo ]
  render: ->
    @transferPropsTo(
      <Button
        href={@getHref()}
        onClick={@handleRouteTo}>
        {@props.children}
      </Button>
    )

module.exports = ButtonLink
