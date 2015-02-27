# heroku-openresty-buildpack-template

This is a template for using
[heroku-openresty-buildpack](https://github.com/geoffleyland/heroku-buildpack-openresty).
Sorry for the mouthful of a name, but at least it's definitive.

Usage:

    git clone https://github.com/geoffleyland/heroku-buildpack-openresty-template.git
    cd heroku-buildpack-openresty-template
    heroku apps:create hbo-template
    heroku buildpack:set https://github.com/geoffleyland/heroku-buildpack-openresty
    git push heroku master

(you'll need to change the app name in `heroku app:create hbo-template`
since I'm using `hbo-template` already)

It'll spend quite a while building LuaJIT, Openresty and LuaRocks, but then,
with a bit of luck, you should be able to visit
https://whateveryoucalledyourapp.herokuapp.com and see a word of your choice
spelt backwards!

(At the moment, there's a version of this running at
[https://hbo-template.herokuapp.com](https://hbo-template.herokuapp.com))

What's there is just enough to show an index.html and have a little API.

You can persuade it to run locally as well, but you'll need to install all the
parts, and have them in your path.  I'll detail that later.
