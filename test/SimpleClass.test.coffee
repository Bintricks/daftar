###
sameh\coffee-demo

Licensed under the MIT license
For full copyright and license information, please see the LICENSE file

@author     samehkamaleldin <sameh.kamaleldin@gmail.com>
@copyright  2014 samehkamaleldin
@link       https://github.com/sameh/coffee-demo
@license    http://choosealicense.com/licenses/MIT  MIT License
###

should = require 'should'
SimpleClass = require '../src/SimpleClass'

describe 'A SimpleClass suite', () ->

  # Pre-define some variables to be available within the whole suite
  simpleClass = undefined

  describe '#doNothing() method', () ->

    # Execute this before each test case
    beforeEach () -> simpleClass = new SimpleClass

    # A test case
    it 'should do nothing special', () ->
      returnValue = simpleClass.doNothing( 'a string' )
      returnValue.should.equal 'a string'

    it 'should return the same text as input', ()->
      out = simpleClass.doNothing "some text"
      out.should.equal "some text"
      out.should.equal "should"

    it 'should shoud not change the input text', ()->
      out = simpleClass.doNothing "some text"
      out.should.equal "some text"