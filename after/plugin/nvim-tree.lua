local status, tree = pcall(require, "nvim-tree")

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

tree.setup {
  on_attach = on_attach,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = { dotfiles = false, custom = { '^.git$' }}
}

