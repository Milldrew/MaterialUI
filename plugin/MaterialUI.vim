" Move into App.js after creating a react app and run this command 
" It deletes out most of the stuff you dont need or want, youc an customize
" after that
nnoremap <leader>ra :!npm i -S @material-ui/core; npm i -S @material-ui/icons; rm index.css; rm App.css<CR>7Gci(<h1>React Ready</h1> <C-[> :!npm i -S eslint prettier <CR> :w<CR>:e ../public/index.html <CR>



"SCRIPTS FOR IMPORTING MATERIAL UI COMPONENTS THROUGH DELETION
"
:function MaterialImportDelete(module) 
:  echom a:module
:  execute "normal ggOimport ".a:module." from \"@material-ui/core/".a:module."\";"
:endfunction

nnoremap \mud diw:call MaterialImportDelete("<C-R>"")<CR><C-o>
inoremap \mud <esc>hdiw:call MaterialImportDelete("<C-R>"")<CR><C-o>

"SCRIPTS FOR IMPORTING MATERIAL UI THROUGH YANKING
"

:function MaterialImportYank(module) 
:  echom a:module
:  execute "normal ggOimport ".a:module." from \"@mui/material/".a:module."\";"
:endfunction
nnoremap \muy yiw:call MaterialImportYank("<C-R>0")<CR><C-o>

"SRIPTS FOR IMPOTRING MATERIAL UI ICONS THROUGH YANKING

:function MaterialImportIconYank(module) 
:  echom a:module
:  execute "normal ggOimport ".a:module." from \"@mui/icons-material/".a:module."\";"
:endfunction
nnoremap \miy yiw:call MaterialImportIconYank("<C-R>0")<CR><C-o>

"SCRIPTS FOR AUTOMATING CODE CREATION

:function CreateFunctionComponent(name)
: echom a:name
: execute "normal ifunction ".a:name."() {return (<div><span>foo</span></div>)}"
:endfunction

inoremap <leader>fc <esc>hdiw:call CreateFunctionComponent("<C-R>"")<CR>




