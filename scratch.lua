local Process = require("lazy.manage.process")
local out, exitcode = Process.exec({ "luarocks.bat", "--version" })

print(vim.inspect(out))
print(exitcode)
