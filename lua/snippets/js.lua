local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("javascript", {
  s("component", {
    t("import View from '"),
    i(1, "path/to.html"),
    t({ "?raw'", "", "class " }),
    i(2, "ClassName"),
    t({
      " extends HTMLElement {",
      "\tconstructor() {",
      "\t\tsuper();",
      "\t}",
      "",
      "\tconnectedCallback() {",
      "\t\tthis.innerHTML = View;",
      "\t\t",
    }),
    i(0, ""),
    t({
      "",
      "\t}",
      "}",
      "",
      "customElements.define('",
    }),
    i(3, "element-name"),
    t("', "),
    rep(2),
    t(");"),
  }),
  s("log", {
    t("console.log("),
    i(1),
    t(");"),
    i(0),
  }),
})
