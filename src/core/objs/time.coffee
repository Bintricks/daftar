###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : Time Class | class that contain information about Time instances
@Copyright : 2014 Bintricks
@License   : The MIT License
@Comments  : N/A
----------------------------------------------------------------------------------
###
class Time
	constructor: (@day=1, @month=1, @year=2014) ->
		#
	#non static members
	@id: ""
	@hour:24
	@minute:0
	@second:0
	@daytime:"AM"
	@weekday:"Saturday"
	description:""
	comments:[]
	
	#static members
	@schema: {
		id          : String,
		year        : Number,
		month       : Number,
		day         : Number,
		weekday     : String,
		hour        : Number,
		minute      : Number,
		second      : Number,
		description : String,
		comments    : Array
	}

root.DafTime = Time