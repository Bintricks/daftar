mongoose = require 'mongoose'
mongoose.connect 'mongodb://localhost/daftar'

note  = mongoose.model 'note',{ title: String, priority:Number, body: String, comments:Array, attachments:Array, link: Array}
todo  = mongoose.model 'todo',{ title: String, priority:Number, body: String, link: Array}

kitty = new note { title: 'Sad', age:12 }

kitty.save null

note.find {},console.log 