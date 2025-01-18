return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason-tool-installer
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- configure mason-lspconfig
		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- Web Development
				"tsserver", -- TypeScript/JavaScript
				"html", -- HTML
				"cssls", -- CSS
				"tailwindcss", -- TailwindCSS
				"svelte", -- Svelte
				"emmet_ls", -- Emmet
				"prismals", -- Prisma
				"graphql", -- GraphQL
				"jsonls", -- JSON

				-- Lua
				"lua_ls", -- Lua

				-- Python
				"pyright", -- Python
				"ruff",

				-- Rust
				"rust_analyzer", -- Rust

				-- Go
				"gopls", -- Go

				-- Shell
				"bashls", -- Bash

				-- Docker
				"dockerls", -- Docker

				-- Markdown
				"marksman", -- Markdown

				-- C/C++
				"clangd", -- C/C++

				-- YAML
				"yamlls", -- YAML

				-- Terraform
				"terraformls", -- Terraform
			},
			automatic_installation = true, -- Automatically install servers
		})

		-- configure mason-tool-installer
		mason_tool_installer.setup({
			ensure_installed = {
				-- Formatters
				"prettier", -- JavaScript/TypeScript/HTML/CSS formatter
				"stylua", -- Lua formatter
				"black", -- Python formatter
				"isort", -- Python import sorter

				-- Linters
				"eslint_d", -- JavaScript/TypeScript linter
				"pylint", -- Python linter

				-- Shell tools
				"shellcheck", -- Shell linter
				"shfmt", -- Shell formatter

				-- Docker
				"hadolint", -- Dockerfile linter

				-- YAML
				"yamllint", -- YAML linter
			},
		})
	end,
}
