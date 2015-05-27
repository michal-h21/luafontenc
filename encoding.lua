local M = {}
local encodings = {}
local fonttypes = {}
local loaded_encodings = {}

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
  return enc
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
}

local loadEnc = function(encid)
  local supported_fontenc = M.supported_fontenc
  local encid = encid
  local enc = string.lower(encodings[encid] or M.default_fontenc)
  print(enc, supported_fontenc[enc])
  return {}
end

local getFontType = function(f)
  local fonttype = fonttypes[f] 
  if fonttype then return fonttype end
  local curr_font = font.fonts[f]
  local font_type = curr_font.format
  fonttypes[f] = font_type
  print(font_type)
  return font_type
end

local getChar = function(char, encid)
  local enc = loadEnc(encid)
  if not enc then return char end
  return enc[char]
end

local utfchar = unicode.utf8.char


function M.callback(head)
  for n in node.traverse_id(37,head) do
    local curr_font = n.font
    local font_type = getFontType(curr_font)
    if font_type ~="opentype" or font_type ~= "truetype" then
      local encid = node.has_attribute(n,999)
      print(utfchar(n.char), getChar(n.char, encid))
    end
  end
  return head
end
return M
