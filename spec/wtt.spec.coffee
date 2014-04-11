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

  describe "#anArray", ->
    it "returns true if given is an array", ->
      expect(iz([]).anArray()).toBe yes

    it "returns false if given is not an array", ->
      expect(iz("dumb").anArray()).toBe no
      expect(iz(123).anArray()).toBe no
      expect(iz(true).anArray()).toBe no
      expect(iz(->).anArray()).toBe no
      expect(iz({}).anArray()).toBe no
      expect(iz(null).anArray()).toBe no
      expect(iz(undefined).anArray()).toBe no

  describe "#aString", ->
    it "returns true if given is an array", ->
      expect(iz('string').aString()).toBe yes
      expect(iz(new String 'string').aString()).toBe yes

    it "returns false if given is not a string", ->
      expect(iz([]).aString()).toBe no
      expect(iz(123).aString()).toBe no
      expect(iz(true).aString()).toBe no
      expect(iz(->).aString()).toBe no
      expect(iz({}).aString()).toBe no
      expect(iz(null).aString()).toBe no
      expect(iz(undefined).aString()).toBe no

  describe "#aNumber", ->
    it "returns true if given is a number", ->
      expect(iz(1).aNumber()).toBe yes

    it "returns false if given is not a string", ->
      expect(iz([]).aNumber()).toBe no
      expect(iz("dumb").aNumber()).toBe no
      expect(iz(true).aNumber()).toBe no
      expect(iz(->).aNumber()).toBe no
      expect(iz({}).aNumber()).toBe no
      expect(iz(null).aNumber()).toBe no
      expect(iz(undefined).aNumber()).toBe no

  describe "#anObject", ->
    it "returns true if given is an object", ->
      expect(iz({}).anObject()).toBe yes

    it "returns false if given is not an object", ->
      expect(iz([]).anObject()).toBe no
      expect(iz("dumb").anObject()).toBe no
      expect(iz(true).anObject()).toBe no
      expect(iz(->).anObject()).toBe no
      expect(iz(1).anObject()).toBe no
      expect(iz(null).anObject()).toBe no
      expect(iz(undefined).anObject()).toBe no

  describe "#aBoolean", ->
    it "returns true if given is a boolean", ->
      expect(iz(true).aBoolean()).toBe yes

    it "returns false if given is not a boolean", ->
      expect(iz([]).aBoolean()).toBe no
      expect(iz("dumb").aBoolean()).toBe no
      expect(iz({}).aBoolean()).toBe no
      expect(iz(->).aBoolean()).toBe no
      expect(iz(1).aBoolean()).toBe no
      expect(iz(null).aBoolean()).toBe no
      expect(iz(undefined).aBoolean()).toBe no

