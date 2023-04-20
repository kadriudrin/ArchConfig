function ColorUp(color, bg)
	color = color or "duckbones"
	bg = bg or "dark"
	vim.o.termguicolors=true
	vim.o.background=bg
	vim.cmd.colorscheme(color)
end

ColorUp("pop-punk", "dark")
