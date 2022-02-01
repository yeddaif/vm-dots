-------------------------------------------------------------------
--       ____                      _      _
--      / ___|___  _ __ ___  _ __ | | ___| |_
--     | |   / _ \| '_ ` _ \| '_ \| |/ _ \ __|
--     | |__| (_) | | | | | | |_) | |  __/ |_
--      \____\___/|_| |_| |_| .__/|_|\___|\__|
--                          |_|
-------------------------------------------------------------------
----------- Basic -------------------------------------------------
 require'compe'.setup{
       enabled = true;
    autocomplete = true,
    min_length = 1,
    preselect = "enable",
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 20,
    max_kind_width = 20,
    max_menu_width = 20,
    documentation = {
      border = "single",
      winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
      max_width = 120,
      min_width = 60,
      max_height = math.floor(vim.o.lines * 0.3),
      min_height = 1,
    },

    source = {
      path = { kind = "   " },
      buffer = { kind = "  " },
      calc = { kind = "   " },
      vsnip = { kind = "  " },
      nvim_lsp = { kind = "  " },
      nvim_lua = false,
      spell = { kind = "  " },
      tags = false,
      vim_dadbod_completion = false,
      snippets_nvim = false,
      ultisnips = false,
      treesitter = false,
    },
}
----------- disable diagnostic virtual text  ----------------------
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = true,
    }
)
----------- Adjust snippet support  -------------------------------
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}
