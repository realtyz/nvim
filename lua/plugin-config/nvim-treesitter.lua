local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	vim.notify("'nvim-treesitter' not found!")
	return
end

treesitter.setup({
	-- 安装 language parser
	-- :TSInstallInfo 命令查看支持的语言
	ensure_installed = { 
		"json", 
		"html", 
		"css", 
		"vim", 
		"lua", 
		"javascript", 
		"typescript", 
		"tsx",
		"rust",
		"go"
	},
	-- 启用代码高亮模块
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
})
