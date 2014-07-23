# ------------------------------------------------------------------------------
# - Project     : daftar | the commandline notes and todos application
# - File        : argp.coffee
# - Module      : argument-processor
# - Description :
# ------------------------------------------------------------------------------

program = require 'commander'

program
  .version 'daftar v0.0.1'
  .option  'note'  , 'Add new note'
  .option  'todo'  , 'Add new todo'  
  .parse(process.argv);

argv    = (require 'minimist') process.argv.slice 2
echo argv
root.CMD_TYPE = 
  ADD_NOTE : 0
  ADD_TODO : 1
  GET_NOTE : 2
  GET_TODO : 3

echo program
args = argv._

if args.length > 0
  key = args[0]
    
  