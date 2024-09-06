local function setup()
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

	parser_config.e2 = {
		install_info = {
			url = "https://github.com/mrdgo/tree-sitter-e2.git", -- local path or git repo
			files = { "src/parser.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
		},
	}

	parser_config.e2ir = {
		install_info = {
			url = "https://github.com/mrdgo/tree-sitter-e2ir.git", -- local path or git repo
			files = { "src/parser.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
		},
	}

	vim.filetype.add({
		extension = {
			e2 = "e2",
		},
		pattern = {
			[".*/e2compiler/.*.ir"] = "e2ir",
		},
	})
end

return {
	setup = setup,
}
