# ------------------------------------------------------------------------------
# - Project     : daftar | the commandline notes and todos application
# - File        : style.coffee
# - Module      : cmd resources
# - Description :
# ------------------------------------------------------------------------------

colors = require 'colors'

colors.setTheme
  silly  : 'rainbow',
  input  : 'grey'   ,
  verbose: 'cyan'   ,
  prompt : 'grey'   ,
  info   : 'green'  ,
  data   : 'grey'   ,
  help   : 'cyan'   ,
  warn   : 'yellow' ,
  debug  : 'blue'   ,
  error  : 'red'

prim_msg  = (msg) -> 
  msg = " #{msg} "
  return "#{msg.info.inverse.bold}"

err_msg  = (msg) -> 
  msg = " #{msg} "
  return "#{" ERROR ".error.inverse.bold}#{msg.white.inverse}"
info_msg = (msg) -> 
  msg = " #{msg} "
  return "#{" INFO ".info.inverse.bold}#{msg.white.inverse}"
warn_msg = (msg) -> 
  msg = " #{msg} "
  return "#{" WARNING ".warn.inverse.bold}#{msg.white.inverse}"

root.CMD_STRINGS = 
  DAFTAR_APP_TITLE       : prim_msg "Daftar Commandline Interface    "
  ERR_NOTE_BODY_REQUIRED : err_msg "Note description required",
  ERR_TODO_BODY_REQUIRED : err_msg "Todo description required"

