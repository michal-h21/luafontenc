local M = {}
local encodings = {}
local fonttypes = {}
local loaded_encodings = {}
local utfchar = unicode.utf8.char

local glyph_id = node.id "glyph"

local function loadEnc(encid)
  local supported_fontenc = M.supported_fontenc
  local encid = encid
  local enc = string.lower(encodings[encid] or M.default_fontenc)
  if supported_fontenc[enc] then
     local loaded = loaded_encodings[enc]
     if loaded then return loaded end
     local m = require("encodings."..enc)
     local t = {}
     for k,v in pairs(m) do
       t[v] = k
     end
     loaded_encodings[enc] = t
     return t
  else
    -- chars will be not replaced
    return nil
  end
end

encodings.max = 0
function M.getEncId(s)
  local enc = encodings[s] 
  if not enc then
    encodings.max = encodings.max + 1
    enc = encodings.max
  end
  encodings[s] = enc
  -- save also enc id
  encodings[enc] = s
  local status = loadEnc(enc)
  if not status then 
    print("luafontenc warning: cannot load encoding "..s)
  end
  return enc, status
end

M.default_fontenc = "T1"
M.supported_fontenc = {
  ot6 = true
, ts1 = true
, ly1 = true
, ["ix-utf8"] = true
, ot1 = true
, luc = true
, t2b = true
, lgr = true
, utf8 = true
, t2a = true
, oms = true
, ot2 = true
, x2 = true
, t2c = true
, t5 = true
, lcy = true
, l7x = true
, pmboxdraw = true
, lae = true
, t1 = true
, il2 = true
}


local getFontType = function(f)
  local fonttype = fonttypes[f] 
  if fonttype then return fonttype end
  local curr_font = font.fonts[f]
  if not curr_font then 
    print("luafontenc: can't load font number "..f)
    return nil 
  end
  local font_type = curr_font.format
  fonttypes[f] = font_type
  print(font_type)
  return font_type
end

local getChar = function(char, encid)
  local enc = loadEnc(encid)
  if not enc then return char end
  print(utfchar(char), enc[char])
  return enc[char]
end



function M.callback(head)
  for n in node.traverse_id(glyph_id,head) do
    local curr_font = n.font
    local font_type = getFontType(curr_font)
    if font_type ~="opentype" and font_type ~= "truetype" then
      local encid = node.has_attribute(n,999)
      n.char = getChar(n.char, encid) or n.char
    end
  end
  return head
end
return M
