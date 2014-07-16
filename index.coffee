# Description:
#   When hubot hears someone call for an `animal lod`, it will show one.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   animal lod - Display a picture of an angry animal
#
# Author:
#   pjaspers

bobsisms = require './data/bobs.json'

module.exports = (robot) ->
  robot.respond /\bbob(sism)?\b( me)?/i, (msg) ->
    bobsism = msg.random bobsisms
    msg.send "#{bobsism.wv} (#{bobsism.nl})"
