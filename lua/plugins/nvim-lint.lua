return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  -- commit = "0d2650564ce5a8bf8d5a4a4dd05b004936b03215",

  config = function()
    local lint = require("lint")
    local custom_xml_path = vim.fn.expand("$HOME/.config/checkstyle/custom.xml")

    lint.linters.checkstyle.args = { "-c", custom_xml_path }
    lint.linters.checkstyle.cmd = "/home/linuxbrew/.linuxbrew/bin/checkstyle"

    lint.linters_by_ft = {
      java = {
        "checkstyle",
      },
      python = {
        "ruff",
      },
    }

    local function getDiagnosticsNamespace()
      for key, val in pairs(vim.diagnostic.get_namespaces()) do
        if val.name == "checkstyle" then
          return key
        end
      end
    end

    local lint_enabled = true

    function _G.toggle_linter()
      if lint_enabled then
        vim.diagnostic.reset(getDiagnosticsNamespace())
        print("Checkstyle disabled")
      else
        lint.try_lint()
        print("Checkstyle enabled")
      end
      lint_enabled = not lint_enabled
    end

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave", "BufEnter" }, {
      callback = function()
        if lint_enabled then
          lint.try_lint()
        end
      end,
    })
  end,
}
