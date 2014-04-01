--==============================================================================
-- Dependency
--==============================================================================



--==============================================================================
-- Data Structure
--==============================================================================

local Tokens = {}

-- code of each token
--  {
--    ["token id"] = $number,
--  }
local codes = {
  COMMENT_LINE  = 610,
  COMMENT_BLOCK = 620,
  K_IF          = 101,
  K_THEN        = 102,
  K_ELSE        = 103,
  K_WHILE       = 104,
  K_LOOP        = 105,
  K_FUN         = 106,
  K_RETURN      = 107,
  K_NEW         = 108,
  K_STRING      = 109,
  K_INT         = 110,
  K_CHAR        = 111,
  K_BOOL        = 112,
  K_TRUE        = 113,
  K_FALSE       = 114,
  K_AND         = 115,
  K_OR          = 116,
  K_NOT         = 117,
  K_END         = 118,
  STRING        = 200,
  NUMBER        = 300,
  ["OP_("]      = 401,
  ["OP_)"]      = 402,
  ["OP_,"]      = 403,
  ["OP_:"]      = 404,
  ["OP_>"]      = 405,
  ["OP_<"]      = 406,
  ["OP_>="]     = 407,
  ["OP_<="]     = 408,
  ["OP_="]      = 409,
  ["OP_<>"]     = 410,
  ["OP_["]      = 411,
  ["OP_]"]      = 412,
  ["OP_+"]      = 413,
  ["OP_-"]      = 414,
  ["OP_*"]      = 415,
  ["OP_/"]      = 416,
  LINE_END      = 500,
  ID            = 800,
  ERROR         = 000,
}


--==============================================================================
-- Public Methods
--==============================================================================

function Tokens.GetTokensList ()
  return codes
end

function Tokens.GetTokenName (token_code)
  assert(type(token_code) == "number")
  for name, code in pairs(codes) do
    if (code == token_code) then
      return name
    end
  end
  return nil
end


--==============================================================================
-- Private Methods
--==============================================================================



--==============================================================================
-- Return
--==============================================================================

return Tokens