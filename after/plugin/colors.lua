function ColorMyPencils(color)
    color = color or "doubletrouble"
    --color = color or "NeoSolarized"
    --color = color or "everforest"
    vim.cmd.colorscheme(color)
    vim.opt.cursorline = true
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000f1c" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none"})

    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#00ff00" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#00cdff" })
    vim.api.nvim_set_hl(0, "CursorlineNr", { fg = "#ff8e00", bold = true })
    vim.api.nvim_set_hl(0, "LIneNrBelow", { fg = "#00ff00" })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#018281" })
end

--#004040
--#009e95
-- #00aea1
-- #009e95
-- #018281
ColorMyPencils()

