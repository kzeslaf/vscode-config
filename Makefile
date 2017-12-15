mkfile_path := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	ln -sf $(mkfile_path)conf/settings.json ~/.config/Code/User/settings.json
	ln -sfT $(mkfile_path)conf/snippets ~/.config/Code/User/snippets
	$(mkfile_path)/pyenv/install.sh
