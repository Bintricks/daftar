###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : Contact Class | class that contain information about contact instances
@Copyright : 2014 Bintricks
@License   : The MIT License
@Comments  : N/A
----------------------------------------------------------------------------------
###
class Contact
	constructor: (@name="") ->
		#
	#non static members
	id:""
	address:""
	phone:""
	job:""
	birthdate:""
	comments:[]
	image:{}
	
	#static members
	@schema: {
		id          : String,
		name        : String,
		job         : String,
		address     : String,
		phone       : String,
		birthdate   : String,
		comments    : Array ,
		image       : Object
	}

root.DafContact = Contact