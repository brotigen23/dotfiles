.PHONY: clean
clean:
	rm -rf ~/.local/share/nvim
	rm -rf ~/.local/state/nvim
	rm -rf ~/.cache/nvim
	rm -rf ~/.config/nvim/lazy-lock.json


.PHONY: backup
backup:
	mv ~/.config/nvim{,.bak}
	mv ~/.local/share/nvim{,.bak}
	mv ~/.local/state/nvim{,.bak}
	mv ~/.cache/nvim{,.bak}