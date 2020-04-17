all: travis_make_hello_world/Makefile travis_make_pdflatex/Makefile
	cd travis_make_hello_world; make > /dev/null ; cd ..
	cd travis_make_pdflatex; make > /dev/null ; cd ..

travis_make_hello_world/Makefile:
	git clone https://github.com/richelbilderbeek/travis_make_hello_world.git

travis_make_pdflatex/Makefile:
	git clone https://github.com/richelbilderbeek/travis_make_pdflatex.git

clean:
	rm -rf travis_make_hello_world
	rm -rf travis_make_pdflatex

