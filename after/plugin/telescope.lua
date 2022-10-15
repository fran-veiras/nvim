local status, tl = pcall(require, "telescope")

require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      file_ignore_patterns = { "node%_modules/.*", "yarn.lock/.*" }
    }

  },
  extensions = {
    'env'
  }
}

tl.load_extension('env')
