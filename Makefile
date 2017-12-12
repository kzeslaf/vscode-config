mkfile_path := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	ln -sf $(mkfile_path)conf/settings.json ~/.config/Code/User/settings.json
	ln -sf $(mkfile_path)conf/snippets ~/.config/Code/User/snippets
