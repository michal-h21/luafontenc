local loadenc = require "loadenc"
local enc = loadenc.load(arg[1])
local symbols = loadenc.parse(enc)
local glyphs = require "glyphload"

print "local m = {" 
for k,v in pairs(symbols) do 
  local g = glyphs:getGlyph(v):gsub(" .*","") or "nil"
  print("["..k .."] = 0x" .. g ..",")
end
print "}\n return m"
