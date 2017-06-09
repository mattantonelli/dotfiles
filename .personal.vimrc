" turn on left and right in command mode
nnoremap <Left>  <Left>
nnoremap <Right> <Right>

" turn on arrow keys in insert mode
inoremap <Left>  <Left>
inoremap <Down>  <Down>
inoremap <Up>    <Up>
inoremap <Right> <Right>

" scroll like less with up and down
nnoremap <silent> <Up> kzz
nnoremap <silent> <Down> jzz

" jellybeans !!
colorscheme jellybeans

" airline
let g:airline_theme='jellybeans'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'PASTE'
let g:airline_symbols.notexists = ''
let g:airline_symbols.readonly = ''

" remap kk to ESC
inoremap <silent> kk <ESC>

" syntax highlighted fences!
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']
