###
sameh\coffee-demo

Licensed under the MIT license
For full copyright and license information, please see the LICENSE file

@author     samehkamaleldin <sameh.kamaleldin@gmail.com>
@copyright  2014 samehkamaleldin
@link       https://github.com/sameh/coffee-demo
@license    http://choosealicense.com/licenses/MIT  MIT License
###

###
SimpleClass documentation

@since  0.1.0
###
class SimpleClass

  ###
  Do absolutely nothing and still return something

  @param    {text}    string      The string to be returned - untouched, of course
  @return   string
  @since    0.1.0
  ###
  doNothing: ( text ) ->

    # Really do nothing...
    return text


module.exports = SimpleClass
