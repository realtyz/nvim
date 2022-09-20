local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
local pluginKeys = {}

map("n", "<C-p>", ":Telescope find_files<CR>", opt)

map("n", "<C-Left>", "<C-w>h", opt)
map("n", "<C-Down>", "<C-w>j", opt)
map("n", "<C-Up>", "<C-w>k", opt)
map("n", "<C-Right>", "<C-w>l", opt)

-- switch bewteen tabs
map("n", "<A-Left>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-Right>", ":BufferLineCycleNext<CR>", opt)
-- close buffer with moll/vim-bbye
map("n", "<A-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- toggle nvim-cmptree
pluginKeys.nvimTreeList = {
	-- open file or dir
	{ key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
	-- open file with screen split
	{ key = "v", action = "vsplit" },
	{ key = "h", action = "split" },
	-- show hidden files 
	{ key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
	{ key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
	-- file operations
	{ key = "<F5>", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
}
pluginKeys.mapLSP = function(mapbuf)
  -- rename
  mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
  -- code action
  mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  -- go xx
  mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
  mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
  mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  -- diagnostic
  mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
end

-- nvim-cmp 
pluginKeys.cmp = function(cmp)
	return {
		-- show completion menu
		["<A-l>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
		-- previous 
		["<Up>"] = cmp.mapping.select_prev_item(),
		-- next
		["<Down>"] = cmp.mapping.select_next_item(),
		-- confirm
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace
		}),
	}
end

return pluginKeys
