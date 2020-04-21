repo_names = \
  travis_make_hello_world \
  travis_make_pdflatex \
  travis_make_one_step \
  travis_make_two_steps

makefile_names = $(foreach repo_name,$(repo_names),$(repo_name)/Makefile)

all: $(makefile_names)

$(repo_names):
	git clone https://github.com/richelbilderbeek/$@.git

$(makefile_names): $(repo_names)
	cd $(dir $@) && $(MAKE)

to_develop:
	for repo_name in $(repo_names); do \
	  cd $$repo_name && git checkout develop && cd .. ; \
	done

push:
	for repo_name in $(repo_names); do \
	  cd $$repo_name && git push && cd .. ; \
	done

pull:
	for repo_name in $(repo_names); do \
	  cd $$repo_name && git pull && cd .. ; \
	done

clean:
	rm -rf $(repo_names)

