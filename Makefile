repo_names = travis_make_hello_world travis_make_pdflatex travis_make_one_step

all: travis_make_hello_world/Makefile travis_make_pdflatex/Makefile travis_make_one_step/Makefile
	cd travis_make_hello_world; make > /dev/null ; cd ..
	cd travis_make_one_step; make > /dev/null ; cd ..
	cd travis_make_pdflatex; make > /dev/null ; cd ..

travis_make_hello_world/Makefile:
	git clone https://github.com/richelbilderbeek/travis_make_hello_world.git

travis_make_one_step/Makefile:
	git clone https://github.com/richelbilderbeek/travis_make_one_step.git

travis_make_pdflatex/Makefile:
	git clone https://github.com/richelbilderbeek/travis_make_pdflatex.git

clean:
	rm -rf repo_names

