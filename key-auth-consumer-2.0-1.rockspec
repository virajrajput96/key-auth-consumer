package = "key-auth-consumer"
version = "2.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/eyolas/kong-plugin-key-auth-referer",
  tag = "v2.0"
}

description = {
  summary = "The Hello World Plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/virajrajput96/key-auth",
  detailed = [[
      An example key-auth plugin. Bootstrap your plugin development.
      Consumer doesn't have to contain '/' or '#'
  ]],
}
dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.key-auth.migrations"] = "kong/plugins/key-auth/migrations/init.lua",
    ["kong.plugins.key-auth.migrations.000_base_key_auth"] = "kong/plugins/key-auth/migrations/000_base_key_auth.lua",
    ["kong.plugins.key-auth.migrations.002_130_to_140"] = "kong/plugins/key-auth/migrations/002_130_to_140.lua",
    ["kong.plugins.key-auth.handler"] = "kong/plugins/key-auth/handler.lua",
    ["kong.plugins.key-auth.schema"] = "kong/plugins/key-auth/schema.lua",
    ["kong.plugins.key-auth.daos"] = "kong/plugins/key-auth/daos.lua",
  }
}