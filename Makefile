.PHONY: zshrc

zshrc:
	@cp zshrc ~/.zshrc

vscode:
	@/bin/ln -s ~/repos/dotfiles/vscode-user-settings.json ~/Library/Application\ Support/Code/User/settings.json

vimrc:
	@/bin/ln -s ~/repos/dotfiles/vimrc ~/.vimrc

install:
	npm install -g spaceship-prompt
	brew install zsh-syntax-highlighting \
	zsh-autosuggestions
