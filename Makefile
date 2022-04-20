.DEFAULT_GOAL := all
.PHONY := new build gather

new: #create a new course section
	./.scripts/make_new_section.sh
clean:
	rm -rf gen
	find ./*/ -type f -name Makefile -execdir make clean \;
build_all: #build all course sections
	find ./*/ -type f -name Makefile -execdir make build \;
gather_all: #gather all courses section in root folder gen
	mkdir -p gen
	find ./*/gen/*.pdf -execdir cp {} ../../gen/ \;
all: clean build_all gather_all
