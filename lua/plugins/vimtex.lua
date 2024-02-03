return{
  'lervag/vimtex',
  config = function()
            -- Set Evince as the PDF viewer
            vim.g.vimtex_view_method = 'general'
            vim.g.vimtex_view_general_viewer = 'evince'
            vim.g.vimtex_compiler_method = 'latexmk'

            -- Optional: Automatically start continuous compilation on opening a tex file
            vim.g.vimtex_compiler_latexmk = {
                ['background'] = 1,
                ['continuous'] = 1,
            }

            -- Additional optional settings
            -- vim.g.vimtex_quickfix_enabled = 0
            -- vim.g.vimtex_syntax_enabled = 1
            -- vim.g.vimtex_fold_enabled = 1
            -- Autocommand to compile on idle
vim.api.nvim_create_autocmd({"TextChanged", "TextChangedI"}, {
  pattern = {"*.tex"},
  callback = function()
    vim.defer_fn(function()
      -- Check if the buffer is modified before saving
      if vim.bo.modified then
        vim.cmd('silent w')
      end
    end, 500) -- Adjust the 500ms delay as needed
  end,
})
   
  end
}
