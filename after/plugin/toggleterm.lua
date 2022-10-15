local status, toggleterm = pcall(require, "toggleterm")

toggleterm.setup {
  size = 20,
  open_mapping = [[<c-j>]],
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved', 
    -- like `size`, width and height can be a number or function which is passed the current terminal
    winblend = 3,
  },  
}


