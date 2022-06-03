set termguicolors
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c

call plug#begin('~/.vim/plugged')
" A nice color scheme i found for Vim.
Plug 'ayu-theme/ayu-vim'
" VS-Code like plugin for coding (Primarily in C)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" A colorscheme which looks very nice.
Plug 'joshdick/onedark.vim'
" A better bar for the bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" A file manager for Vim
Plug 'preservim/nerdtree'
" Another colorscheme
Plug 'Binaryify/OneDark-Pro'
call plug#end()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let ayucolor="dark"
colorscheme ayu
