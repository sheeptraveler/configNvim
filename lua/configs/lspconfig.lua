-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "pyright", "ltex", "ruff" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- MY CONFIGS
--LATEX ltex-ls
  lspconfig.ltex.setup{
  settings = {
    ltex = {
      language = "pt-BR",
    }
  }
}
--PYRIGHT
  lspconfig.pyright.setup({
    filetypes = {"python"},
    settings = {
      python = {
        analysis = {
          diagnosticMode = "workspace",
          diagnosticSeverityOverrides = {
            reportOptionalMemberAccess = "warning",
          }
        }
      }
    }
})
