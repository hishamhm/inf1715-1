--==============================================================================
-- Dependency
--==============================================================================

local Parser = require "lib/parser"
local Language = require "lib/mini0"


--==============================================================================
-- Data Structure
--==============================================================================

local Syntactic = {}

-- stores the language gramatical functions
local grammar_rules


--==============================================================================
-- Private Methods
--==============================================================================



--==============================================================================
-- Initialize
--==============================================================================

grammar_rules = Language.GetRules()


--==============================================================================
-- Public Methods
--==============================================================================

--Open:
--  parameters:
--    [1] $table   - table with tokens read in lexical
--  return:
--    [1] $boolean - false if found any problem, true otherwise
--    [2] $string  - only when [1] is false, informing which error occurs
function Syntactic.Open (t)
  if (_DEBUG) then print("SYN :: Open") end
  assert(t and type(t) == "table")
  Parser.Open(t)
  return true
end


--==============================================================================
-- Return
--==============================================================================

return Syntactic