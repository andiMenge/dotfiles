.PHONY: zshrc

zshrc:
	@cp zshrc ~/.zshrc

vscode:
	@/bin/ln -s ~/repos/misc/dotfiles/vscode-user-settings.json ~/Library/Application\ Support/Code/User/settings.json

install:
	npm install -g spaceship-prompt
	brew install zsh-syntax-highlighting \
	zsh-autosuggestions