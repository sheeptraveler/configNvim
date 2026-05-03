require("nvchad.configs.lspconfig").defaults()
--------------------------------------------------
-- MY CONFIGS
--LATEX ltex-ls
local filetypes = {
  'bib',
  'gitcommit',
  'markdown',
  'org',
  'plaintex',
  'rst',
  'rnoweb',
  'tex',
  'pandoc',
  'quarto',
  'rmd',
  'context',
  'html',
  'xhtml',
  'mail',
  'text',
}

vim.lsp.config.ltex = {
-- require('lspconfig').ltex.setup({
  cmd = { 'ltex-ls' },
  filetypes = filetypes,
  root_markers = {'.git'},
  settings = {
    ltex = {
      enabled = filetypes,
      language = "pt-BR",
    },
  },
}

--PYRIGHT
  vim.lsp.config.pyright = {
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
}
--------------------------------------------------
local servers = { "html", "cssls", "clangd", "ltex", "pyright", "ruff", "sqls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 



