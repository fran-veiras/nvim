local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<Return>')
keymap.set('n', 'tc', ':tabclose<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- keymap.set("n", "<C-k>", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-- tree map 
keymap.set('n', '<C-b>', ':NvimTreeToggle<Return>')
keymap.set('', '<C-f>', ':Telescope live_grep<Return>')

keymap.set('', '<C-p>', ':Telescope find_files<Return>')

keymap.set('', '<C-s>', ':w<Return>') -- save 

keymap.set('', '<C-z>', ':u<Return>') -- back

keymap.set('', '<C-x>', ':d<Return>') -- remove line



keymap.set('', 'c', ':yank<Return>') -- copy lines selected


-- split
keymap.set('', 'vs', ':vertical split<Return>')

-- new comment 
keymap.set('', '<C-/>', ':norm i //<Return>')

-- end of line
keymap.set('', '<S-l>', ':normal $<Return>')

-- begin of line
keymap.set('', '<S-h>', ':normal _<Return>')


