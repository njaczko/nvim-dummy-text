if exists("g:loaded_nvim_dummy_text")
    finish
endif
let g:loaded_nvim_dummy_text = 1

lua require("nvim-dummy-text")
command! -range Vtmt lua insertVermontMountains()
