" Start at the 13th line
autocmd BufWinEnter * exe 'normal 13G'

"" Start in insert mode
autocmd BufWinEnter {COMMIT_EDIT,TAG_EDIT}MSG start

" Highlight GitCommit Subject line as Red if there are more than 50 characters.
highlight GitSubjectLine guifg=red ctermfg=red
syntax match GitSubjectLine /\%13l\%51c.*/

" Highlight GitCommit Body lines as Red if there are more than 72 characters.
highlight GitBodyLine guifg=red ctermfg=red
match GitBodyLine /\%73v.*/
