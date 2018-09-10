basepath=$(realpath .)

foo:
	echo $(basepath)

install:
	ln -sf $(basepath)/myrepos ~/.mrconfig
	ln -sf $(basepath)/gbp.conf ~/.gbp.conf
	ln -sf $(basepath)/pbuilderrc ~/.pbuilderrc
	ln -sf $(basepath)/gitconfig ~/.gitconfig
	sudo ln -sf ~/.pbuilderric /root/.pbuilderrc
	echo "source $(basepath)/debenv" >> ~/.bashrc
