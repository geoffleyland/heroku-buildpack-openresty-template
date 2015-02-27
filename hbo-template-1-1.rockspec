package = "hbo-template"
version = "1-1"
source =
{
  url = "test",
}
build =
{
  type = "builtin",
  modules = {},
}
dependencies =
{
  -- we don't need LuaFileSystem for the demo,
  -- but I want to prove LuaRocks works.
  "luafilesystem"
}