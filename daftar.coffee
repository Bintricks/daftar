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

argv = (require 'minimist') process.argv.slice 2

dbman = new DbManager
if argv.n?
  switch argv.n
    when "note"
      if typeof argv._[0] is string  = "string"
        if argv[1]? and typeof argv[1] is string
          title = argv._[0]
          body = argv._[1]
          note = new DafNote title,body
          dbman.saveNote note
        else
          body = argv[0]
          note = new DafNote "Note",body
          dbman.saveNote note
      else
        console.log "\n#{("Error").red.inverse}: Note description required"
        process.exit      
    when "todo"
      console.log "new todo" 
setTimeout dbman.close_connection,50
