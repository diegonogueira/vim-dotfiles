call altr#remove_all()
call altr#define('web/%/%.ex', 'lib/%/%.ex', 'test/%/%_test.exs')
nmap ,gt <Plug>(altr-forward)
