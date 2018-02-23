# Installs a copy of the theme on the folder `~/.oh-my-zsh/themes/`
name=bullet-train.zsh-theme
dest_dir=$(HOME)/.oh-my-zsh/custom/themes

install: $(dest_dir)
	cp ./$(name) $(dest_dir)

# Symlinks the theme for easier development
link: $(dest_dir)
	ln -sF `pwd`/bullet-train.zsh-theme $(dest_dir)

$(dest_dir):
	mkdir -p $(dest_dir)

clean:
	rm -f $(dest_dir)/$(name)
