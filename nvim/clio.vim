" vim-test use yarn to run apollo test suite
let test#enabled_runners = ["ruby#rspec"]

" ALE Settings
let b:ale_linters = {
\  'coffeescript': ['coffeelint'],
\  'ruby': ['rubocop', 'ruby'],
\  'typescript': ['tsserver', 'tslint'],
\}

let g:ale_ruby_rubocop_options =
\  "--config ~/clio/themis/.rubocop.yml"
let g:ale_typescript_tslint_options = 
\ "--config ~/clio/themis/tlsint.json"
let g:ale_coffeescript_coffeelint_options =
\ "--rules ~/clio/themis/coffeelint.json"

nmap <leader>d obinding.pry<esc>
