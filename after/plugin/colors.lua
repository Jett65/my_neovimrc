
function ColorMyPencils(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color) 
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none"}) 

    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#00ff00"} )
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#00cdff"}) 
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ff8e00", bold = true } )
    vim.api.nvim_set_hl(0, "LIneNrBelow", { fg = "#00ff00"} )

end

ColorMyPencils()
