function require(name)
    end
io = require(io)

-- lua = lua.version
path = "./AppData/Roaming"
java = "./.minecraft"
bedrock = "./"

function locate(j)
    local f = assert(io.open(j, "r"))
    local content = f:lines("*all")
    io.open(content)
    if j == content then
        print("Found your minecraft Java folder!")
        if true then
            
        end
    end
end

locate(java)