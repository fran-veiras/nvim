require("chatgpt").setup({
    api_key_cmd = "echo " .. vim.fn.shellescape(vim.fn.getenv("OPENAI_API_KEY"))
})

