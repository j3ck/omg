" ================== Airline config ==================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#bufferline#enabled = 1

"powerline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '🔒'
let g:airline_symbols.linenr = '✄'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
let g:airline#extensions#tabline#right_sep = '⮂'
let g:airline#extensions#tabline#right_alt_sep = '⮃'

" ==================  CtrlP config ==================
let g:ctrlp_working_path_mode = 'rw'


" ==================  OpenUrl config ==================
let g:open_url_custom_keymap = 0

" ==================  Syntastic settings ==================
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }
let g:syntastic_html_checkers = ['handlebars']
let g:syntastic_error_symbol = '✖'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_full_redraws = 1

" ==================  NERDTree ==================
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1
let g:nerdtree_tabs_focus_on_files = 1
let NERDTreeDirArrows=1
let NERDChristmasTree=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ==================  Vim Indent Guides ==================
set ts=4 sw=4
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1

" ==================  Choose Win ==================
" if you want to use overlay feature
let g:choosewin_overlay_enable          = 1
" overlay font broke on mutibyte buffer?
let g:choosewin_overlay_clear_multibyte = 1

" ==================  AutoSave ==================
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0

" ==================  Easy Tags ==================
set tags=~/.vimtags
let g:easytags_dynamic_files = 1
let g:easytags_updatetime_min = 1
let g:easytags_resolve_links = 1
let g:easytags_on_cursorhold = 0
let g:easytags_always_enabled = 0
let g:easytags_syntax_keyword = 'always'
let g:easytags_async = 1

" ==================  TagBar ==================
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_autoclose = 1

" ==================  Vim Move ==================
let g:move_key_modifier = 'C'

" ==================  CtrlP setup ==================
let g:ctrlp_working_path_mode = 0
let g:ctrlp_extensions = ['mark', 'menu', 'cmdline']

" ==================  Vim signify ==================
let g:signify_vcs_list = [ 'git' ]

" ==================  Undotree ==================
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif

"" =================== NeoSnippets ===================

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"" ================== Neocomplete ==================

" Disable AutoComplPop.
let g:acp_enableAtStartup = 1

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:neocomplete#fallback_mappings = ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif

let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" Enable JS autocomplete
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

"" ==================  Emmet ==================
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ==================  Multiple Curosr Higlight ==================
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
