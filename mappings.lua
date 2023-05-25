 ---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>u"] = { vim.cmd.UndotreeToggle, "Undotree Toggle" },
    ["n"] = { "nzzzv" }, --Centers next find
    ["N"] = { "Nzzzv" }, --Centers next find
    ["<C-Up>"] = { ":resize -2<CR>", "Decrease window size" },
    ["<C-Down>"] = { ":resize +2<CR>", "Increase window size" },
    ["<C-Left>"] = { ":vertical resize -2<CR>", "Decrease window size" },
    ["<C-Right>"] = { ":vertical resize +2<CR>", "Increase window size" },
    ["<leader>bd"] = { ":bd<CR>", "Close current buffer" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
  },
  t = {
    ["<C-Up>"] = { "<cmd>resize -2<CR>", "Decrease window size" },
    ["<C-Down>"] = { "<cmd>resize +2<CR>", "Increase window size" },
    ["<C-Left>"] = { "<cmd>vertical resize -2<CR>", "Decrease window size" },
    ["<C-Right>"] = { "<cmd>vertical resize +2<CR>", "Increase window size" },
  },
  v = {
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected lines up" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selected lines down" },
  },
}

M.debug = {
   n = {
     ["<F5>"] = { function() require("dap").continue() end, "Continue" },
     ["<F9>"] = { function() require("dap").toggle_breakpoint() end, "toggle breakpoint" },
     ["<F10>"] = { function() require("dap").step_over() end, "step over" },
     ["<F11>"] = { function() require("dap").step_into() end, "step into" },
     ["<F12>"] = { function() require("dap").step_out() end, "step out" },
     ["[d"] = { function() require("dap").goto_next() end, "goto next" },
     ["]d"] = { function() require("dap").goto_prev() end, "goto prev" },
   },
   i = {
     ["<C-h>"] = { function() vim.lsp.buf.signature_help() end, "signature help" },
   },
 }

 M.lspconfig = {
   n = {
     ["<leader>vws"] = { function() vim.lsp.buf.workspace_symbol() end, "workspace symbol" },
     ["<leader>vca"] = { function() vim.lsp.buf.code_action() end, "code action" },
     ["<leader>vrn"] = { function() vim.lsp.buf.references() end, "rename" },
     ["<leader>vrr"] = { function() vim.lsp.buf.references() end, "references" },
   }
 }
-- more keybinds!

return M
