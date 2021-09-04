make:
	nvim --headless -u NORC \
		--cmd 'lua require("zenbones.build").build()' \
		--cmd 'q'
