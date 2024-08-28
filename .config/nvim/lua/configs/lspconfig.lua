require("java").setup()
require("lspconfig").jdtls.setup {}
-- EXAMPLE
local M = {}

local lspconfig = require "lspconfig"

M.on_attach = function(_, bufnr)
  vim.diagnostic.config {
    virtual_text = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = " ",
        [vim.diagnostic.severity.WARN] = " ",
        [vim.diagnostic.severity.INFO] = " ",
        [vim.diagnostic.severity.HINT] = " 󰌵",
      },
    },
    float = {
      focusable = false,
      border = "rounded",
    },
  }

  require("lsp_signature").on_attach({
    bind = true,
    hi_parameter = "LspSignatureActiveParameter",
    handler_opts = {
      border = "rounded",
    },
  }, bufnr)
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "html", "cssls" }
local util = require "lspconfig/util"
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = M.on_attach,
  capabilities = M.capabilities,
}

lspconfig.gopls.setup {
  on_attach = M.on_attach,
  capabilities = M.capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}
