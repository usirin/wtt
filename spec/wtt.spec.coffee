iz = require "../src/wtt"

describe "WTT", ->
  describe ".iz", ->
    it "works", ->
      expect(iz).toBeDefined()

  describe "#aFunction", ->
    it "returns true if given is a function", ->
      fn = -> return yes
      aFunction = iz(fn).aFunction()
      expect(aFunction).toBe yes

    it "returns false if given is not a function", ->
      expect(iz("dumb").aFunction()).toBe no
      expect(iz(123).aFunction()).toBe no
      expect(iz(true).aFunction()).toBe no
      expect(iz([]).aFunction()).toBe no
      expect(iz({}).aFunction()).toBe no
      expect(iz(null).aFunction()).toBe no
      expect(iz(undefined).aFunction()).toBe no
