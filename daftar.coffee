###
sameh\coffee-demo

Licensed under the MIT license
For full copyright and license information, please see the LICENSE file

@project    Daftar | Smart notes and todos management application
@module     Application's initialisation and startup script
@author     samehkamaleldin <sameh.kamaleldin@gmail.com>
@copyright  2014 samehkamaleldin
@link       https://github.com/sameh/coffee-demo
@license    MIT License
###

require './src/util/cmd/'
require './src/core/objs/'
require './src/core/data/'

switch DafArgs.cmd
  when CMD_TYPE.NEW_NOTE
    noteObj = DafArgs.data
    DafDbMan.saveNote new DafNote noteObj[0],noteObj[1]


