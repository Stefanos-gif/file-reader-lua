print("Enter the filename to read:")
local filename = io.read()

local file = io.open(filename, "r")

if not file then
    print("Could not open file " .. filename)
    return
end

print("Contents of " .. filename .. ":\n")

for line in file:lines() do
    print(line)
end

file:close()
