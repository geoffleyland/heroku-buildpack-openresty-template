local env = require"env"
ngx.say(("%s:%s"):format(env.DYNO, env.PORT))
