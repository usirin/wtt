iz = (obj) -> new WTT(obj)

class WTT
  constructor: (@obj) ->

  checkType = (obj, name) -> {}.toString.call(obj) is "[object #{name}]"
  anArray: ->
    (Array.isArray or (val) -> checkType(val, 'Array'))(@obj)

  aFunction: -> typeof @obj == "function"
  aString:  -> checkType @obj, 'String'
  aNumber:  -> checkType @obj, 'Number'
  anObject: -> checkType @obj, 'Object'
  aBoolean: -> checkType @obj, 'Boolean'

module?.exports = iz
