-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'NeogitOrg/neogit',
    lazy = true,
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'nvim-mini/mini.pick', -- optional
      'folke/snacks.nvim', -- optional
    },
    cmd = 'Neogit',
    keys = {
      { '<leader>gg', '<cmd>Neogit<cr>', desc = 'Show Neogit UI' },
    },
  },
  {
    'windwp/nvim-ts-autotag',
    ft = { 'html', 'javascriptreact', 'typescriptreact', 'xml' },
    config = function()
      require('nvim-ts-autotag').setup {
        -- Optional: You can add configuration options here
        -- For example, to disable closing for self-closing tags (e.g., <img> in HTML)
        -- disable_autotag_for_filetypes = { "xml" }, -- Example of disabling for specific filetypes
      }
    end,
  },
}
