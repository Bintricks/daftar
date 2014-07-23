###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : Note Class | class that contain note information
@Copyright : 2014 Bintricks
@License   : The MIT License
@Comments  : N/A
----------------------------------------------------------------------------------
###

class Note
	constructor: (@title,@body) ->
		@time = (new Date).toISOString()

	# non static members
	id:""
	comments:[]

	# static members
	@schema:{
		id       : String,
		title    : String,
		body     : String,
		time     : String,
		comments : Array		
	}
	
# export the class definition to node root	
root.DafNote = Note