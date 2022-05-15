set background=dark

hi clear
let g:colors_name="nightv"

if exists("g:syntax_on")
    syntax reset
endif

let s:primary='#262626'
let s:onPrimary='#039BE5'
let s:surface='#434343'
let s:onSurface='#DEDEDE'
let s:surfaceVariant='#515151'

exe 'hi Normal guibg=' .. s:primary .. ' guifg=' .. s:onPrimary

exe 'hi CursorLine cterm=NONE guibg=' .. s:surface
exe 'hi CursorLineNr cterm=NONE guibg=' .. s:surface .. ' guifg=' .. s:onSurface
exe 'hi LineNr guifg=' .. s:onSurface
 
exe 'hi Pmenu guibg=' .. s:surface .. ' guifg=' .. s:onSurface
exe 'hi PmenuSel guibg=' .. s:surfaceVariant

exe 'hi Comment guifg=' .. s:onSurface
exe 'hi Identifier guifg=' .. '#9075BF'
exe 'hi Type guifg=' .. '#E57373'
exe 'hi Function guifg=' .. '#FF8F00'
exe 'hi Constant guifg=' .. '#AFB42B'

exe 'hi WildMenu guibg=' .. s:surface .. ' guifg=' .. s:onSurface
