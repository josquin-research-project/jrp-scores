## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Thu Dec 26 16:48:50 PST 2013
## Last Modified: Thu Dec 26 16:48:53 PST 2013
## Filename:      Makefile
## Syntax:        GNU makefile
##
## Description: 
##
## Makefile for basic processing of JRP meta-repository data files.
## To run this makefile, type (without quotes) one of the following
## commands in a bash terminal (usually the default terminal shell
## in linux, and also /Applications/Utilities/Terminal.app in OS X 
## computers).
##
## "make reduced" -- Create reduced-rhythm versions of the data files
##                   by dividing note durations by 4 so that whole notes
##                   become quarter notes.  This is necessary to use
##                   the data with rhythm analysis tools in the standard
##                   Humdrum Toolkit.
##
## If Humdrum Extras is not installed, you can use web download versions
## of the above make commands to do processing:
##
## "make webreduced" -- Same as "make reduced", but download from the
## 		     JRP website without the need to have Humdrum Extras 
##                   installed.
##

# targets which don't actually refer to files/directories:
.PHONY : 

all:
	@echo 'Run this makefile with one of the following labels:'
	@echo '   "make reduced" : create rhythmically reduced kern files.'
	@echo 'Web equivalents if Humdrum extras are not installed:'
	@echo '   "make webpdf" : download PDF files of scores from the JRP website.'
	@echo '   "make webreduced" : download rhythmically reduced kern files.'

WGET    = wget
BASEURL = http://josquin.stanford.edu
DATAURL = $(BASEURL)/data?
PDFTYPE = notationwitheditorialwithtext


##############################
#
# make reduced -- Create Humdrum **kern data which does not contain any
#     rational reciprocal rhythms.  Standard **recip data cannot represent 
#     non-integer subdivisions of the whole note (excluding augmentation
#     dots).  The extended reciprocal value for a triplet whole note is
#     3%2 which means that the duration is 2/3rds of a whole note. 
#
#     After running "make reduced", a subdirectory called "kern-reduced"
#     will be generated in each composer directory (parallel to the 
#     "kern" subdirectories that contain the original Humdrum **kern data
#     for the scores.
#
#     This label requires that the "rscale" tool from the Humdrum Extras
#     package is installed (see https://github.com/craigsapp/humextra).
#     If you do not have it installed, instead run "make webreduced").
#

reduced:
	for dir in [A-Z]??/kern; 				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../kern-reduced;			\
	   for file in *.krn;					\
	   do							\
	      rscale -f 1/4 $$file > ../kern-reduced/$$file;	\
	   done							\
	   )							\
	done

#
# make webreduced -- same result as "make reduced" but download data from
#    JRP website (slower, but no extra software installation is required).
#

Xwebreduced:
	for dir in [A-Z]??/kern; 				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../kern-reduced;			\
	   for file in *.krn;					\
	   do							\
	      rscale -f 1/4 $$file > ../kern-reduced/$$file;	\
	   done							\
	   )							\
	done



########################################
#
# make webpdf -- Download PDF files of graphical music notation
#     which are generated from the source **kern Humdrum data.
#

webpdf:
	for dir in [A-Z]??/kern;				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../pdf;				\
	      for file in *.krn;				\
	      do						\
	         echo "   Downloading PDF for $$file ...";	\
	         wget "$(DATAURL)a=$(PDFTYPE)&f=$$file" 	\
	            -O ../pdf/`basename $$file .krn`.pdf;	\
	      done						\
	   )							\
	done



##############################
#
# make update -- Download any changes in the Github repositories for
#      each composer.
#

update: githubpull
githubupdate: githubpull
githubpull:
	git pull 
	git submodule foreach git pull



##############################
#
# make clean -- Remove all automatically generated data files.  Make sure
#     that you have not added your own content into the directories in which
#     these derivative files are located; otherwise, these will be deleted
#     as well.
#

clean:
	-rm -rf [A-Z]??/kern-reduced
	-rm -rf [A-Z]??/pdf


