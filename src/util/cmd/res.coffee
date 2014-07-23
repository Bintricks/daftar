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
  info   : 'blue'  ,
  data   : 'grey'   ,
  help   : 'cyan'   ,
  warn   : 'yellow' ,
  debug  : 'blue'   ,
  error  : 'red'

root.prim_msg  = (msg) -> 
  msg = " #{msg} "
  return "#{msg.info.inverse.bold}"

root.err_msg  = (msg) -> 
  msg = " #{msg} "
  return "#{" ERROR ".error.inverse.bold}#{msg.white.inverse}"
root.info_msg = (msg) -> 
  msg = " #{msg} "
  return "#{" INFO ".info.inverse.bold}#{msg.white.inverse}"
root.warn_msg = (msg) -> 
  msg = " #{msg} "
  return "#{" WARNING ".warn.inverse.bold}#{msg.white.inverse}"

root.CMD_STRINGS = 
  DAFTAR_APP_TITLE       : prim_msg "Daftar Commandline Interface"
  INF_NOTE_CREATED       : info_msg "Note Created Successfully"
  ERR_NOTE_BODY_REQUIRED : err_msg  "Note description required"
  ERR_TOO_MUCH_ARGS      : err_msg  "Too much arguments"
  