-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()


local servers = {
  "html",
  "cssls",
  "clangd",
  "hyprls",
  "biome",
  "pylsp",
  "ruby_lsp",
  "pug",
  "kotlin_language_server",
  "omnisharp",
  "qmlls",
  "rust_analyzer"
}

vim.lsp.config("qmlls", {
  cmd = { "qmlls", "-E" },
})

vim.lsp.enable(servers)

-- local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end
--
-- -- Custom setup for Biome
-- lspconfig.biome.setup {
--   on_attach = nvlsp.on_attach,
--   capabilities = nvlsp.capabilities,
--   cmd = { "biome", "lsp-proxy" },
--   filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "svelte" },
-- }
--
-- -- Custon setup for Pylsp
-- lspconfig.pylsp.setup {
--   on_attach = nvlsp.on_attach,
--   capabilities = nvlsp.capabilities,
--   settings = {
--     pylsp = {
--       plugins = {
--         pycodestyle = { enabled = true },
--         pylint = { enabled = true },
--       },
--     },
--   },
-- }
--
-- -- Custom setup for OmniSharp (C#)
-- local pid = vim.fn.getpid()
-- lspconfig.omnisharp.setup {
--   on_attach = nvlsp.on_attach,
--   capabilities = nvlsp.capabilities,
--   cmd = { "omnisharp", "-z", "--hostPID", tostring(pid), "DotNet:enablePackageRestore=false", "--encoding", "utf-8", "--languageserver" },
--   filetypes = { "cs", "vb" },
--   settings = {
--     RoslynExtensionsOptions = {
--       enableDecompilationSupport = false,
--       enableImportCompletion = true,
--       enableAnalyzersSupport = true,
--     },
--   },
-- }
