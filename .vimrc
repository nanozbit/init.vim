 " Plugin install vim-plug
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
		let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-emmet', 'coc-snippets', 'coc-git', 'coc-powershell', 'coc-pairs']
 	Plug 'joshdick/onedark.vim'
	Plug 'scrooloose/nerdtree'  
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
call plug#end()


"Configuration Editor
set number
colorscheme onedark 
set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" Disable documentation windowi
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
