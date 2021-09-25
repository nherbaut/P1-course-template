This is the template I use for my Paris 1 Courses in MIAGE.

The course is divided in sections, to create a new section use ```make_new_section.sh``` and set the name. Once the new section has been created, ```cd``` in the new folder and use the makefiles to build and run the LaTeX/Beamer presentaitons.
This template supports Beamer notes and interactive presentations features with your mouse/tablet.

# LATEX/Beamer Template for my courses

## Disclaimer

I only run this template on my Ubuntu machine, not sure it works on other systems.

## Prerequisite

* a Latex distribution (TexLive)
* pandoc
* makefile
* pdfpc for presenting

## Usage

* ```make build``` to build pdf presentations
* ```make run``` to run the presentation on dual screen with tablet-friendly annotations
* ```make clean``` to remove produced artifacts


