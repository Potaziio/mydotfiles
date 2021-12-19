function! myspacevim#before() abort
  let g:Vsd={}
  let g:Vsd.contrast=0
  let g:spacevim_enable_statusline_display_mode=1
  let g:vim_current_word#enabled=1
  let g:UltiSnipsExpandTrigger="<leader>j"
  let g:ycm_autoclose_preview_window_after_insertion = 1
  set smartindent
  set tabstop=4
  set shiftwidth=4

  let g:coc_global_extensions=['coc-omnisharp']
  
  "set spelllang=en
  "setlocal spell spelllang=en_us
 
  " let g:tokyonight_style = 'storm'

  let g:ycm_confirm_extra_conf = 0

  let g:indentLine_conceallevel=1

  let g:indentLine_enabled=1

  let g:indentLine_color_term=196

  let g:indentLine_char_list=['|', '¦', '┆', '┊']

  let g:presence_log_level = "debug"

  let g:syntastic_java_checkers = []

  let g:OmniSharp_highlighting = 0
endfunction 

function! ConcealToggle()
  if &conceallevel 
    set conceallevel=0
  else
    set conceallevel=1
  endif
endfunction

function! myspacevim#after() abort
  set tabstop=4
  set shiftwidth=4
  map <leader>x :VsdContrast <CR>
  " nnoremap <F5> <C-[> :w <bar> :!sh run.compile <CR>
  nnoremap <F5> <c-[> :wall <bar> :Gradle runClient <CR>
  "nnoremap <F5> :CMakeSelectTarget First_Game<CR>:CMakeSelectBuildType Debug<CR>:CMakeBuild First_Game<CR>:CMakeRun<CR>
  "nnoremap <F6> :CMakeSelectTarget First_Game<CR>:CMakeSelectBuildType Release<CR>:CMakeSelectBuild First_Game<CR>:CMakeRun<CR>
  nnoremap <F6> <c-[> :wall <bar> :!javac *.java <CR>
  nnoremap <F7> :CMake <CR>
  
  nnoremap <leader>c :call ConcealToggle() <CR>
  let g:ale_linters = {'cpp': ['clang']}
endfunction
