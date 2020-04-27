package = "key-auth-consumer"
version = "2.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/virajrajput96/key-auth-consumer",
  tag = "v2.0"
}

description = {
  summary = "The Key-Auth-Consumer Plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/virajrajput96/key-auth-consumer",
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
    ["kong.plugins.key-auth-consumer.migrations"] = "kong/plugins/key-auth-consumer/migrations/init.lua",
    ["kong.plugins.key-auth-consumer.migrations.000_base_key_auth"] = "kong/plugins/key-auth-consumer/migrations/000_base_key_auth.lua",
    ["kong.plugins.key-auth-consumer.migrations.002_130_to_140"] = "kong/plugins/key-auth-consumer/migrations/002_130_to_140.lua",
    ["kong.plugins.key-auth-consumer.handler"] = "kong/plugins/key-auth-consumer/handler.lua",
    ["kong.plugins.key-auth-consumer.schema"] = "kong/plugins/key-auth-consumer/schema.lua",
    ["kong.plugins.key-auth-consumer.daos"] = "kong/plugins/key-auth-consumer/daos.lua",
  }
}
