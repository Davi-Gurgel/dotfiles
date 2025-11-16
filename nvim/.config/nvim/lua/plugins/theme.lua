 return {
     "vague-theme/vague.nvim",
     lazy = false,
     priority = 1000,

     config = function()
         vim.cmd("colorscheme vague")
         vim.cmd("hi statusline guibg=NONE")
     end
 }
