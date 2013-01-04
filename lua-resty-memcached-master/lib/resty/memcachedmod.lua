-- Copyright (C) 2012 XiaoKang Jia (kangness)
local sub = string.sub
local escape_uri = ngx.escape_uri
local unescape_uri = ngx.unescape_uri
local match = string.match
local tcp = ngx.socket.tcp
local strlen = string.len
local insert = table.insert
local concat = table.concat
local setmetatable = setmetatable
local type = type
local error = error
