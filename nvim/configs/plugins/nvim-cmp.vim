set completeopt=menu,menuone,noselect

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'
  local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
    }, {
      { name = 'buffer', keyword_length = 1 },
    }),
    experimental = {
      ghost_text = true
    },
    formatting = {
      format = lspkind.cmp_format({
        mode = 'symbol', -- show only symbol annotations
        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

        -- The function below will be called before any actual modifications from lspkind
        -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
        before = function (entry, vim_item)
          return vim_item
        end
      })
    }
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['rust_analyzer'].setup {
  --  capabilities = capabilities
  -- }

  local lsp_attach = function(client, buf)
    -- Example maps, set your own with vim.api.nvim_buf_set_keymap(buf, "n", <lhs>, <rhs>, { desc = <desc> })
    -- or a plugin like which-key.nvim
    -- <lhs>        <rhs>                        <desc>
    -- "K"          vim.lsp.buf.hover            "Hover Info"
    -- "<leader>qf" vim.diagnostic.setqflist     "Quickfix Diagnostics"
    -- "[d"         vim.diagnostic.goto_prev     "Previous Diagnostic"
    -- "]d"         vim.diagnostic.goto_next     "Next Diagnostic"
    -- "<leader>e"  vim.diagnostic.open_float    "Explain Diagnostic"
    -- "<leader>ca" vim.lsp.buf.code_action      "Code Action"
    -- "<leader>cr" vim.lsp.buf.rename           "Rename Symbol"
    -- "<leader>fs" vim.lsp.buf.document_symbol  "Document Symbols"
    -- "<leader>fS" vim.lsp.buf.workspace_symbol "Workspace Symbols"
    -- "<leader>gq" vim.lsp.buf.formatting_sync  "Format File"

    vim.api.nvim_buf_set_option(buf, "formatexpr", "v:lua.vim.lsp.formatexpr()")
    vim.api.nvim_buf_set_option(buf, "omnifunc", "v:lua.vim.lsp.omnifunc")
    vim.api.nvim_buf_set_option(buf, "tagfunc", "v:lua.vim.lsp.tagfunc")
  end


  require('lspconfig')['pyright'].setup {
    capabilities = capabilities,
    on_attach = lsp_attach,
  }

  require("rust-tools").setup({
    server = {
      capabilities = capabilities,
      on_attach = lsp_attach,
    }
  })

EOF

" The reason the language server isnt working anymore and u are here poking around is because the path to the language server has changed
" it was ~.\.vscode\extensions\[ver]rust_analyzer\server\rust_analyzer.exe
