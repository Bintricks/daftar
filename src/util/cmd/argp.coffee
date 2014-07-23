###
----------------------------------------------------------------------------------
@Project   : Daftar | Smart notes and todos management application
@Author    : Sameh Kamal
@Module    : argument processor | module that process cmd args
@Copyright : 2014 Bintricks
@License   : The MIT License
@Comments  : N/A
----------------------------------------------------------------------------------
###
program = require 'commander'

program
  .version 'daftar v0.0.1'
  .usage   '[options] <arguments ...>'
  .option  '-n, --note'  , 'Add new note'
  .option  '-t, --todo'  , 'Add new todo'
  .parse(process.argv);

root.DafArgs = 
  cmd : "NULL"
  data:  null

if program.note?
  if program.args.length > 0  
    if program.args.length > 2
      echo CMD_STRINGS.ERR_TOO_MUCH_ARGS
      process.exit
    if program.args.length is 2
      args = program.args
    else
      args = [null,program.args[0]]

    root.DafArgs = 
      cmd  : "NEW_NOTE"
      data : args
  else
    echo CMD_STRINGS.ERR_NOTE_BODY_REQUIRED
    process.exit
else
  echo program._version

root.CMD_TYPE =
  NEW_NOTE : "NEW_NOTE"