local alpha = require("alpha")
local builtin = require('telescope.builtin')
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val ={


       

         "╔═══════════════╗" ,
         "║               ║" ,
         "║ █████████████ ║" ,
         "║      ███      ║" ,
         "║      ███      ║" ,
         "║      ███      ║" ,
         "║      ███      ║" ,
         "║ ██   ███   ██ ║" ,
         "║  ███████████  ║" ,
         "║               ║" ,
         "╚═══════════════╝" ,

}

dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "󰱼  > Find file", ":Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "󰩈 > Quit NVIM", ":qa<CR>"),
}





