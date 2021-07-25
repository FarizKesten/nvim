" This was windows version
"set rtp+=~/.fzf
"§set rtp+=~/.vim/tabnine-vim
" -------------------------------------------------
" sources 
" -------------------------------------------------
source ~/vimfiles/autoload/plug.vim
" -------------------------------------------------
" Plugins 
" -------------------------------------------------
call plug#begin('~/vimfiles/plugged')   
"fzf is a general-purpose command-line fuzzy finder. 
"The plugin provides mappings to easily delete, change and add such
"surroundings in pairs.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"change, deleta , add surroundings. Awesome.
Plug 'tpope/vim-surround'
"sneak
"Plug 'justinmk/vim-sneak'
""Rangers - View files/ directories
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
"provides automatic closing of quotes, parenthesis, brackets
Plug 'Raimondi/delimitMate'
"Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
"syntax checking
"Plug 'vim-syntastic/syntastic'
"premier Vim plugin for Git
Plug 'tpope/vim-fugitive'
"visualizes undo history and makes it easier to browse and switch between
"different undo branches.
Plug 'mbbill/undotree'
" comment out codes
Plug 'preservim/nerdcommenter'
"allows you to use <Tab> for all your insert completion needs
"Plug 'ervandew/supertab'
"colorschemes
Plug 'flazz/vim-colorschemes'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
" Add icons to plugins ( always add this at the very last one!)
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ghifarit53/tokyonight-vim'
"autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IPython integration
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

call plug#end()

filetype plugin on

set encoding=utf-8
let mapleader = " "

" -------------------------------------------------
" Colors 
" -------------------------------------------------
let s:colors = {
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
  \ }

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" -------------------------------------------------
" Rangers 
" -------------------------------------------------
let g:NERDTreeHijackNetrw = 0  "// add this line if you use NERDTree
let g:ranger_replace_netrw = 1 "// open ranger when vim open a directory
" 
" Navigations 
" -------------------------------------------------
"split navigations
noremap <C-J> <C-W><C-J> 
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
set splitbelow 
set splitright

"let g:sneak#label = 1
" -------------------------------------------------
" syntastic
" -------------------------------------------------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 1
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_warning_symbol = "⚠"
"let g:syntastic_cpp_compiler = 'gcc'
" let g:syntastic_cpp_compiler_options = ' -std=c++11'
" -------------------------------------------------
" Registers 
" -------------------------------------------------
set hidden " saving buffers in a background
set noswapfile" stop swapping file in a buffer 
"set clipboard=unnamed
set clipboard=unnamedplus
set directory=~/.vim/tmp
" -------------------------------------------------
" Backups 
" -------------------------------------------------
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
" -------------------------------------------------
" Visu 
" -------------------------------------------------
"" Line numbers
set number " show line numbers
set rnu " setting relative number
set nohlsearch " after done searching stop highlighting
" -------------------------------------------------
" Styling options
" -------------------------------------------------
"indenting options
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=8 "make sure cursor not to low in screen
set incsearch "no word highlight when searching
set signcolumn=yes
set noerrorbells " no dingaling-ling
" -------------------------------------------------
" GUI 
" -------------------------------------------------
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

set background=dark 
syntax enable
set signcolumn=yes
"set colorcolumn=80
" true colours 
set t_Co=256  

"if (has("termguicolors"))   
    "set termguicolors 
 "endif
"colorscheme neodark
" -------------------------------------------------
" air-lines 
" -------------------------------------------------
"set lazyredraw
let g:airline_powerline_fonts = 10
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '⮀'
let g:airline_right_sep = '⮂'
let g:airline_symbols.linenr = 'ݰ'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = 'ϒ'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_alt_sep = '⮁'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = 'ש'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp' 

"-------------------------------------------------
" CtrlP 
" -------------------------------------------------
" Ignore some folders and files for CtrlP indexing 
" let g:ctrlp_custom_ignore ={
"             \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',   
"              \ 'file':'\.so$\|\.dat$|\.DS_Store$'   
"              \ }
" let g:ctrlp_cache_dir ='~/.cache/ctrlp'
" if executable('ag')   
"     let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' 
" endif
"-------------------------------------------------
" Key-Bindings 
" -------------------------------------------------
nnoremap <C-f> :CtrlP .<CR>
nnoremap <leader>un :UndotreeToggle<CR>
nnoremap <leader>q <C-v> 
nnoremap <leader>p :FZF<CR>
nnoremap <leader>b :bnext<CR>
nnoremap <leader>v :bprev<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprev<CR>
" open vimrc in vertical split 
nnoremap <leader>ev :vsplit<cr>
nnoremap <leader>eh :split<cr>
"NERDTree
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" -------------------------------------------------
"git
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gg :G log --oneline --graph --decorate<CR>
" -------------------------------------------------
" Coc -completions
" -------------------------------------------------
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>af <Plug>(coc-format-selected)
nmap <leader>af  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>ee  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>ap :<C-u>CocListResume<CR>
