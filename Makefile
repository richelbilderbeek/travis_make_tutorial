all: travis_make_hello_world/Makefile
	cd travis_make_hello_world; make > /dev/null ; cd ..

travis_make_hello_world/Makefile:
	git clone travis_make_hello_world
