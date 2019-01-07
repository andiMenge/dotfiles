.PHONY: zshrc

zshrc:
	@/bin/ln -s ~/repos/misc/dotfiles/zshrc ~/.zshrc

vscode:
	@/bin/ln -s ~/repos/misc/dotfiles/vscode-user-settings.json ~/Library/Application\ Support/Code/User/settings.json