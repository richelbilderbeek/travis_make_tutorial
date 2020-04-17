all: travis_make_hello_world/Makefile
	cd travis_make_hello_world; make > /dev/null ; cd ..

travis_make_hello_world/Makefile:
	git clone https://github.com/richelbilderbeek/travis_make_hello_world.git
