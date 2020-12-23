set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

"Override extended.vim
"set termguicolors
colorscheme gruvbox
set shiftwidth=2
set tabstop=2
set mouse=a

"Markdown
set conceallevel=2
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_fold_level = 1

"wiki.vim

"turning next line on disables cursor wrap-around
"set nocompatible
filetype plugin indent on
syntax on
let g:wiki_root = '~/Documents/Wiki'
let g:wiki_link_extension = '.md'
let g:wiki_filetypes = ['md']
let g:wiki_link_target_type = 'md'

" Formatting
execute pathogen#infect()

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}

let g:ale_linters = {
\  'javascript': ['eslint'],
\}
let g:ale_eslint_executable = 'eslint_d --cache'
let g:syntastic_javascript_eslint_args = ['--fix']
let g:jsx_ext_required = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:prettier#autoformat = 1
"autocmd BufNewFile,BufRead *.js,*.jsx set filetype=javascript
"autocmd InsertLeave *.js :ALEFix

" Unused Snippets
"autocmd BufWritePre *.js,*.jsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

