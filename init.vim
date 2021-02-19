" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhinz/vim-startify'

" " Initialize plugin system
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'davidhalter/jedi-vim' 
Plug 'morhetz/gruvbox'   
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold' 
Plug 'neomake/neomake'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0  
let g:jedi#use_splits_not_buffers = "right"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]  

let g:neomake_python_enabled_makers = ['pylint']                                                                      
call neomake#configure#automake('nrwi', 500)                                                                          
                                                                                                                      
                                                                                                                      
set background=dark " use dark mode                                                                                   
" set background=light " uncomment to use light mo                                                                    
                                                                                                                      
if has('nvim')                                                                                                        
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                                                       
else                                                                                                                  
  Plug 'Shougo/deoplete.nvim'                                                                                         
  Plug 'roxma/nvim-yarp'                                                                                              
  Plug 'roxma/vim-hug-neovim-rpc'                                                                                     
endif                                                                                                                 
let g:deoplete#enable_at_startup = 1         

let g:airline_theme='simple'

