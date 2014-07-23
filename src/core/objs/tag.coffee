###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : Tag Class | class that contain information about Tag instances
@Copyright : 2014 Bintricks
@License   : The MIT License
@Comments  : N/A
----------------------------------------------------------------------------------
###
class Tag
	constructor: (@name="") ->
		#
	#non static members	
	id          : ""
	description : ""
	properties  : []
	comments    : []
	
	#static members
	@schema: {
		id          : String,
		name        : String,
		description : String,
		properties  : Array,
		comments    : Array
	}

root.DafTag = Tag