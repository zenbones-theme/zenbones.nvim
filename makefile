make:
	nvim --headless -u NORC \
		--cmd 'lua require("zenbones.build").run()' \
		--cmd 'q'
