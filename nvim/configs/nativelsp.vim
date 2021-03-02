let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_matching_smart_case = 1
let g:completion_trigger_on_delete = 0
let g:completion_enable_auto_paren = 1

let g:completion_chain_complete_list = {
            \ 'default' : {
            \   'default': [
            \       {'complete_items': ['lsp', 'buffers', 'snippet']},
            \       {'mode': '<c-p>'},
            \       {'mode': '<c-n>'}],
            \   'comment': [],
            \   'string' : [
            \       {'complete_items': ['path']}]
            \ }}

augroup CompletionTriggerCharacter
    autocmd!
    autocmd BufEnter * let g:completion_trigger_character = ['.']
    autocmd BufEnter *.c,*.cpp,.true let g:completion_trigger_character = ['.', '::']
augroup end

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

:lua << EOF

local lspconfig = require('lspconfig')
local completion = require('completion')

local on_attach = function(client, bufnr)
    completion.on_attach()

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
            hi LspReferenceRead cterm=bold ctermbg=DarkRed guibg=DarkRed
            hi LspReferenceText cterm=bold ctermbg=DarkRed guibg=DarkRed
            hi LspReferenceWrite cterm=bold ctermbg=DarkRed guibg=DarkRed
            augroup lsp_document_highlight
            autocmd!
                autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
        ]], false)
    end
end

local servers = {'vimls', 'tsserver', 'html', 'cssls', 'jsonls', 'cmake'}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup { on_attach = on_attach }
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        signs = true,
        underline = false,
        virtual_text = { spacing = 4, prefix = '' },
        update_in_insert = false,
    }
)

lspconfig["clangd"].setup { 
    on_attach = on_attach,
    cmd = { "clangd",
            "--compile-commands-dir=cmake-build-debug",
            "--all-scopes-completion",
            "--background-index",
            "--completion-style=detailed",
            "--header-insertion=iwyu",
            "--header-insertion-decorators",
            "--suggest-missing-includes",
            "--pch-storage=memory",
            "--offset-encoding=utf-8",
            "--fallback-style=Google",
            "--limit-results=50"
    }
}

EOF

command! LspServerInfo lua print(vim.inspect(vim.lsp.buf_get_clients()))
command! LspServerReload lua vim.lsp.stop_client(vim.lsp.get_active_clients())
command! LspListDiagnostics lua vim.lsp.diagnostic.set_loclist()
command! LspLineDiagnostics lua vim.lsp.diagnostic.show_line_diagnostics()
command! LspFormat exec 'lua vim.lsp.buf.formatting_sync(nil, 1000)'
command! LspRename lua vim.lsp.buf.rename();
command! LspSymbols lua vim.lsp.buf.workspace_symbol();
