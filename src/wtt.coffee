iz = (obj) -> new WTT(obj)

class WTT
  constructor: (@obj) ->

  aFunction: ->
    typeof @obj == "function"

module?.exports = iz
