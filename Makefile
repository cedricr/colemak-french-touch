all:
	kalamine build colemak-french-touch.toml
	mv -f dist/colemkft.svg img
	cp -f img/colemkft.svg img/colemkft_1dk.svg
	cp -f img/colemkft.svg img/colemkft_altgr.svg
	cp -f img/colemkft.svg img/colemkft_all.svg
	cp -f img/colemkft.svg img/colemkft_ansi.svg
	sed -i 's/iso intlBackslash/ansi mixed/g' img/colemkft_ansi.svg
	sed -i 's/iso intlBackslash/ergo ol40/g' img/colemkft.svg
	sed -i 's/iso intlBackslash/ergo ol40 dk/g' img/colemkft_1dk.svg
	sed -i 's/iso intlBackslash/ergo ol40 altgr/g' img/colemkft_altgr.svg
	sed -i 's/iso intlBackslash/ergo ol40 mixed/g' img/colemkft_all.svg

clean:
	rm -rf dist/*
	rm -rf img/*
