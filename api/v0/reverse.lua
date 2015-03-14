local ngx = require("ngx")
local tools = require("tools")

ngx.say(tools.reverse(ngx.unescape_uri(ngx.var.arg_w)))
