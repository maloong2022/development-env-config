if !exists('g:loaded_cmp') | finish | endif

set completeopt=menuone,noinsert,noselect

lua <<EOF
  local cmp = require'cmp'
  local lspkind = require'lspkind'

  cmp.setup({
    snippet = {
      expand = function(args)
              -- For `vsnip` users.
      vim.fn["vsnip#anonymous"](args.body)

      -- For `luasnip` users.
      -- require('luasnip').lsp_expand(args.body)

      -- For `ultisnips` users.
      -- vim.fn["UltiSnips#Anon"](args.body)

      -- For `snippy` users.
      -- require'snippy'.expand_snippet(args.body)
      -- require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<A-.>'] = cmp.mapping(cmp.mapping.complete(),{'i','c'}),
      ['<A-,>'] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                  }),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
      }),
    },
    sources = cmp.config.sources({
              { name = 'nvim_lsp' },
              -- For vsnip users.
              { name = 'vsnip' },
              -- For luasnip users.
              -- { name = 'luasnip' },
              --For ultisnips users.
              -- { name = 'ultisnips' },
              -- -- For snippy users.
              -- { name = 'snippy' },
              }, { { name = 'buffer' },
                 { name = 'path' }
    }),
    formatting = {
      format = lspkind.cmp_format({
          with_text = true, -- do not show text alongside icons
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          before = function (entry, vim_item)
            vim_item.menu = "["..string.upper(entry.source.name).."]"
            return vim_item
          end

      })
    }
  })

    -- Use buffer source for `/`.
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })
  
  -- Use cmdline & path source for ':'.
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
        { name = 'cmdline' }
      })
  })

  vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
EOF

