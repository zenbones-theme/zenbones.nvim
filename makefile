make:
	nvim --headless -u NORC \
		--cmd 'set rtp+=.' \
		--cmd 'lua require("zenbones.shipwright").run()' \
		--cmd 'q'
