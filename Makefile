REPO=/repo/cpan2deb-lucid
create_repo:
	echo $(REPO)
	mkdir -p $(REPO)/binary
	mkdir -p $(REPO)/source
	mkdir -p $(REPO)/mini-dinstall/incoming
	chmod a+w $(REPO)/mini-dinstall/incoming
	chmod +t $(REPO)/mini-dinstall/incoming
	dpkg-scansources $(REPO)/source /dev/null | gzip -9c > $(REPO)/source/Sources.gz
	dpkg-scanpackages $(REPO)/binary /dev/null | gzip -9c > $(REPO)/binary/Packages.gz