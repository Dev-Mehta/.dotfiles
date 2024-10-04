require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'lua_ls', 'rust_analyzer', 'pyright' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

require('lspconfig').pyright.setup({
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

require('lspconfig').typescript.setup({
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifierPreference = 'non-relative',
      },
    },
  },
})

require('lspconfig').gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})
