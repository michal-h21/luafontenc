#!/usr/bin/env texlua
kpse.set_program_name("luatex")

local enc = arg[1] 

local encfile = kpse.find_file(enc.."enc.dfu")

local f = io.open(encfile,"r")
local contents = f:read("*all")
f:close()
local i = 0

print "local m = {"
for x in contents:gmatch('DeclareUnicodeCharacter{([^%}]+)}') do
  print("["..i.."]=0x"..x..",")
  i = i + 1
end

print("}\nreturn m")
