local env = {
  name = "tokuboilerplate",
  version = "0.0.1-1",
  license = "MIT",
  public = false,
  cflags = {
    "-Wall", "-Wextra",
    "-I$(shell luarocks show santoku --rock-dir)/include/",
  },
  dependencies = {
    "lua == 5.1",
    "santoku >= 2.0.0, < 3.0.0",
    "santoku-sqlite >= 2.0.0, < 3.0.0",
    "santoku-sqlite-migrate >= 2.0.0, < 3.0.0",
    "lsqlite3 >= 0.9.6-1",
    "argparse >= 0.7.1-1",
  },
  test = {
    dependencies = {
      "santoku-fs >= 2.0.0, < 3.0.0",
    },
  },
}

env.homepage = "https://github.com/YOUR-GITHUB-USER/" .. env.name
env.tarball = env.name .. "-" .. env.version .. ".tar.gz"
env.download = env.homepage .. "/releases/download/" .. env.version .. "/" .. env.tarball

return {
  type = "lib",
  env = env,
}
