-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Kitty honors OSC 12 for an application-specific cursor color. Resetting it
-- with OSC 112 on exit returns to the red cursor configured in kitty.
local function set_cursor_color(sequence)
  io.stdout:write(sequence)
  io.stdout:flush()
end

local cursor_color_group = vim.api.nvim_create_augroup("kitty_cursor_color", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  group = cursor_color_group,
  callback = function()
    set_cursor_color("\27]12;#ffffff\7")
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  group = cursor_color_group,
  callback = function()
    set_cursor_color("\27]112\7")
  end,
})
