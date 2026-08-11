local env = {
  name = "tokuboilerplate",
  version = "0.0.1-1",
  license = "MIT",
  cflags = {
    "-Wall", "-Wextra",
    "-I$(shell luarocks show santoku --rock-dir)/include/",
  },
  dependencies = {
    "lua == 5.1",
    "santoku >= 1.0.0, < 2.0.0",
    "santoku-sqlite >= 1.0.0, < 2.0.0",
    "santoku-sqlite-migrate >= 1.0.0, < 2.0.0",
    "lsqlite3 >= 0.9.6-1",
    "argparse >= 0.7.1-1",
  },
  test = {
    dependencies = {
      "santoku-fs >= 1.0.0, < 2.0.0",
    },
  },
}

return {
  type = "lib",
  env = env,
}
