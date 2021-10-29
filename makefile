make:
	nvim --headless -u NORC \
		--cmd 'set rtp+=.' \
		--cmd 'lua require("zenbones.build").run()' \
		--cmd 'q'
