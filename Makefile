.PHONY: zshrc httpie vimrc

zshrc:
	@cp zshrc ~/.zshrc

vscode:
	@/bin/ln -s ~/repos/dotfiles/vscode-user-settings.json ~/Library/Application\ Support/Code/User/settings.json

vimrc:
	@/bin/ln -s ~/repos/dotfiles/vimrc ~/.vimrc

httpie:
	@mkdir ~/.httpie
	@/bin/ln -s ~/repos/dotfiles/httpie/config.json ~/.httpie/config.json

npm:
	@/bin/ln -s ~/repos/dotfiles/npmrc ~/.npmrc

install:
	npm install -g spaceship-prompt
	brew install zsh-syntax-highlighting \
	zsh-autosuggestions
