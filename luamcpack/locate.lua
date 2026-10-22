-- lua = lua.version
local lfs = require("lfs")
local io = require("io")
project = "./luamcpack"
AppData = assert(os.getenv("APPDATA"), "APPDATA error!")
jMc = AppData .. "/.minecraft"
--[[
print("Welcome! Lua is accepting two directories.")
print("Bedrock: Minecraft Bedrock")
print("Java: .minecraft") 
io.write("Java or Bedrock? Make sure you type the full folder.")
s = io.read()
]]

local a =  lfs.attributes(jMc)
if a then
    for b in lfs.dir(AppData) do
        print(b)
        if b == jMc then
            print("We found your folder!")
            os.execute("lua ./write.lua")
            return "Operation completed successfully!"
        end
    end
elseif not a then
    return "Uh oh! Is your folder existent? Is it a file? The folder was not found!"
end

auth_token = nil
username = nil
