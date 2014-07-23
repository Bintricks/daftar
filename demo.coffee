###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : dbutil Class | class that contain mongodb data communication
@Copyright : 2014 Bintricks
@License   : The MIT License
@Comments  : N/A
----------------------------------------------------------------------------------
###

mongoose = require "mongoose"
require "./src/core/objs"
require "./src/util/cmd"

CMD_STRINGS.ERR_NOTE_BODY_REQUIRED

###mongoose.connection.on "open" , (err) -> console.log "connection opened"
mongoose.connection.on "close", (err) -> console.log "connection closed"

mongoose.connect "mongodb://localhost/daftar"
note_model = mongoose.model "notes", DafNote.schema
noteObj    = new note_model {title:"Alhamdullelah",body:"This is the body"}
noteObj.save (err,dt) -> console.log "note [#{dt.title}] has been saved!"

disconnectionfn=() -> mongoose.disconnect()
setTimeout disconnectionfn,1000###

