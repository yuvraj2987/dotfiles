" Ansible files
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
" WePay specific ansible definition
au BufRead,BufNewFile */infrastructure/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */roles/*/tasks/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */roles/*/defaults/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */roles/*/vars/*.yml set filetype=yaml.ansible

