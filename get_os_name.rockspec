package = 'get_os_name'
version = '0.0.1-1'
source = {
  url = "git://github.com/huakim/lua_get_os_name.git",
}
description = {
  detailed = "  ",
  homepage = "https://github.com/huakim/lua_get_os_name",
  license = "LGPL",
  summary = "Get OS name and architecture",
}
build = {
  modules = {
    subprocess = {
      sources = {
        "get_os_name.lua"
      },
    },
  },
  type = "builtin",
}
dependencies = {
  "lua >= 5.1",
}
