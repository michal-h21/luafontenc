local loadenc = require "loadenc"
local enc = loadenc.load(arg[1])
local symbols = loadenc.parse(enc)
local glyphs = require "glyphload"

print "local m = {" 
for k,v in pairs(symbols) do 
  local g = glyphs:getGlyph(v) or "0"
  g = g:gsub(" .*","")
  print("["..k .."] = 0x" .. g ..",")
end
print "}\n return m"
