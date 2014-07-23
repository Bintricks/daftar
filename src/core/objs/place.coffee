###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : Place Class | class that contain information about places instances
@Copyright : 2014 Bintricks
@License   : The MIT License
----------------------------------------------------------------------------------
###

class Place
	constructor: (@name="",@type) ->
		if type?
			# ...
		else
			# ...
	#non static members
	id:""
	address:""
	phone:""
	magnitude:""
	latitude:""
	description:""
	comments:[]
	image:{}
	
	#static members
	@schema: {
		id          : String,
		name        : String,
		type        : String,
		address     : String,
		phone       : String,
		description : String,
		latitude    : String,
		magnitude   : String,
		comments    : Array ,
		image       : Object
	}

root.DafPlace = Place