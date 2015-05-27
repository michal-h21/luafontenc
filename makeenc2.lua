local loadenc = require "loadenc"
local enc = loadenc.load(arg[1])
local symbols = loadenc.parse(enc)
local glyphs = require "glyphload"

for k,v in pairs(symbols) do 
  print(k,v, glyphs:getGlyph(v))
end

