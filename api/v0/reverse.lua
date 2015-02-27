local ngx = require("ngx")

local word = ngx.unescape_uri(ngx.var.arg_w)
local reverse = {}
for i = #word, 1, -1 do
  reverse[#reverse+1] = word:sub(i, i)
end

ngx.say(table.concat(reverse))
