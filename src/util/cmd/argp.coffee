# ------------------------------------------------------------------------------
# - Project     : daftar | the commandline notes and todos application
# - File        : argp.coffee
# - Module      : argument-processor
# - Description :
# ------------------------------------------------------------------------------
echo = console.log

program = require 'commander'
fn_args = require 'minimist'

argv = fn_args process.argv.slice 2
create_new = argv.n?

echo arg