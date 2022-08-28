if exists("g:loaded_nvim_dummy_text")
    finish
endif
let g:loaded_nvim_dummy_text = 1

command! -range Vtmt lua require("nvim-dummy-text").insertVermontMountains()
