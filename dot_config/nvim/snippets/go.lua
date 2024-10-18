local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
  s("fn", fmt([[
func {}({}) {} {{
    {}
}}
]], {
    i(1, "funcName"),
    i(2, "params"),
    i(3, "returnType"),
    i(0)
  }))

 -- For loop
  s("for", fmt([[
for {} {} {} {{
    {}
}}
]], {
    i(1, "i := 0;"),
    i(2, "i < 10;"),
    i(3, "i++"),
    i(0)
  })),

  -- If statement
  s("if", fmt([[
if {} {{
    {}
}}
]], {
    i(1, "condition"),
    i(0)
  })),

  -- Error check
  s("iferr", fmt([[
if err != nil {{
    return {}
}}
]], {
    i(0, "err")
  })),

  -- Struct definition
  s("struct", fmt([[
type {} struct {{
    {}
}}
]], {
    i(1, "StructName"),
    i(0)
  })),

})