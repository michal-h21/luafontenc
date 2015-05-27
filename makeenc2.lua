local loadenc = require "loadenc"
local enc = loadenc.load(arg[1])
local symbols = loadenc.parse(enc)
local glyphs = require "glyphload"

print "local m = {" 
for k,v in pairs(symbols) do 
  print("["..k .."] = 0x" .. (glyphs:getGlyph(v) or "nil") ..",")
end
print "}"
