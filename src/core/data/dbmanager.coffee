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

require '../objs/'
mongoose = require 'mongoose'

class DbManager
	constructor: (@dbname="daftar",mongoose=null) -> @start_connection	

	#non static members
	start_connection: ()->
		mongoose.connection.on 'open',(err,dt) ->
			DbManager.connected = true
			#console.log "connection opened!"
		mongoose.connect "mongodb://localhost/#{@dbname}"

	close_connection: ()->		 #IdoNothing = true	
		mongoose.connection.on "close",(err,dt) ->
			DbManager.connected = false
			#console.log "connection closed"
		mongoose.disconnect()

	@busy      : false
	@connected : false

	# data exporting functions
	saveNote : (noteObj)->
		if mongoose.connection.readyState is 0 then @start_connection()
		DbManager.busy = true
		notes_model    = mongoose.model "notes", DafNote.schema
		newnote        = new notes_model noteObj
		newnote.save (err,dt)->
			if err
				console.log err
			console.log "Note Created: #{dt.title} !"
			DbManager.busy = false

# register to node root
root.DbManager = DbManager
