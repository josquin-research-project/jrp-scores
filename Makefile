## jrp-scores Makefile
##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Thu Dec 26 16:48:50 PST 2013
## Last Modified: Sat Dec 28 15:53:55 PST 2013
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
## "make"        -- Download any updates to online JRP files.
##
## "make update" -- Download any updates to online JRP files.
##
## "make clean" -- Delete directories of data created by this makefile,
##     such as kern-reduced, pdf, and midi which may be found
##     in each composer's directory.
##
## Make commands which require Humdrum Extras to be installed:
##
## "make kern-reduced" -- Create reduced-rhythm versions of the data files
##     by dividing note durations by 4 so that whole notes become
##     quarter notes.  This is necessary to use the data with rhythm
##     analysis tools in the standard Humdrum Toolkit.
##
## "make kern-notext" -- Remove **text spines from data and store
##     output in kern-notext directories for each composer directory.
##
## "make genres" -- Groups work by genre by downloading from kernScores.
##
## If Humdrum Extras is not installed, you can use web downloaded versions
## of the above make commands:
##
## "make web-pdf" -- Download PDF graphical music scores from the JRP website.
##
## "make web-pdf-notext" -- Download PDFs of graphical music scores from the JRP 
##    website which do not include lyrics.
##
## "make web-reduced" -- Same as "make reduced", but download from the
##    JRP website without the need to have Humdrum Extras installed.
##

# targets which don't actually refer to files/directories:
.PHONY : 

all:
	@echo ''
	@echo 'Run this makefile with one of the following labels:'
	@echo '   "make clean"       : delete data directories created by this makefile.'
	@echo '   "make update"      : download any new changes in online data repository.'
	@echo ''
	@echo 'Comands requiring Humdrum Extras to be installed.'
	@echo '   "make kern-reduced": create rhythmically reduced kern files.'
	@echo '   "make kern-notext" : remove lyrics from scores.'
	@echo '   "make genres"      : group works by genre.'
	@echo ''
	@echo 'JRP website downloads:'
	@echo '   "make web-pdf"     : download score PDFs from the JRP website.'
	@echo '   "make web-pdf-notext" : download score PDFs without lyrics.'
	@echo '   "make web-kern-reduced" : download rhythmically reduced kern files.'
	@echo ''

BASEURL   = http://josquin.stanford.edu
DATAURL   = $(BASEURL)/data?
PDFTYPE   = notationwitheditorialwithtext
PDFNOTEXT = notationwitheditorialnotext
REDUCED   = humdrumreduced

# If wget is not present on the computer, try using curl since the
# computer is most likely an OS X one:

WGET = `which wget`
ifeq ($(WGET),) 
   WGET = curl
else 
   WGET = wget -O-
endif

############################################################################

##############################
#
# make kern-reduced -- Create Humdrum **kern data which does not contain any
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

reduced: kern-reduced
kernreduced: kern-reduced
kern-reduced:
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
# JRP website (much slower, but no extra software installation is required).
#

webkernreduced: web-kern-reduced
webreduced: web-kern-reduced
web-kernreduced: web-kern-reduced
webkern-reduced: web-kern-reduced
web-kern-reduced:
	for dir in [A-Z]??/kern;				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../kern-reduced;			\
	      for file in *.krn;				\
	      do						\
	         echo "   Downloading file $$file ...";		\
	         $(WGET) "$(DATAURL)a=$(REDUCED)&f=$$file" 	\
	            > ../kern-reduced/$$file;			\
	      done						\
	   )							\
	done



##############################
#
# make kern-notext -- Remove **text spines from data and store in
#     directory called kern-notext.
#

kernnotext: kern-notext
kern-notext:
	for dir in [A-Z]??/kern; 				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../kern-notext;			\
	   for file in *.krn;					\
	   do							\
	      extractx -i '**kern' $$file > ../kern-notext/$$file;	\
	   done							\
	   )							\
	done



########################################
#
# make web-midi -- Download PDF files of graphical music notation
#     which are generated from the source **kern Humdrum data.
#

midi: web-midi
webmidi: web-midi
web-midi:
	for dir in [A-Z]??/kern;				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../midi;				\
	      for file in *.krn;				\
	      do						\
	         echo "   Downloading MIDI for $$file ...";	\
	         $(WGET) "$(DATAURL)a=midi&f=$$file" 		\
	            > ../midi/`basename $$file .krn`.mid;	\
	      done						\
	   )							\
	done



########################################
#
# make web-pdf -- Download PDF files of graphical music notation
#     which are generated from the source **kern Humdrum data.
#

pdf: web-pdf
webpdf: web-pdf
web-pdf:
	for dir in [A-Z]??/kern;				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../pdf;				\
	      for file in *.krn;				\
	      do						\
	         echo "   Downloading PDF for $$file ...";	\
	         $(WGET) "$(DATAURL)a=$(PDFTYPE)&f=$$file" 	\
	            > ../pdf/`basename $$file .krn`.pdf;	\
	      done						\
	   )							\
	done



########################################
#
# make web-pdf-notext -- Download PDF files of graphical music notation,
#     removing any lyrics from the music.
#

pdfnotext: web-pdf-notext
pdf-notext: web-pdf-notext
webpdfnotext: webpdf-notext
webpdf-notext: web-pdf-notext
web-pdfnotext: web-pdf-notext
web-pdf-notext:
	for dir in [A-Z]??/kern;				\
	do							\
	   echo Processing composer $$dir;			\
	   (cd $$dir; mkdir -p ../pdf-notext;			\
	      for file in *.krn;				\
	      do						\
	         echo "   Downloading PDF for $$file ...";	\
	         $(WGET) "$(DATAURL)a=$(PDFNOTEXT)&f=$$file" 	\
	            > ../pdf-notext/`basename $$file .krn`.pdf;	\
	      done						\
	   )							\
	done



##############################
#
# make genres -- Download scores organized by genres from the
#      kernScores website.
#

genres: Zma Zmo Zso

# 
# Download files from kernScores related to masses (excluding fragments):
#

zma: Zma
Zma:
	mkdir -p Zma/kern; (cd Zma/kern; humsplit h://jrp/Zma)

# 
# Download files from kernScores related to motets:
#

zmo: Zmo
Zmo:
	mkdir -p Zmo/kern; (cd Zmo/kern; humsplit h://jrp/Zmo)

# 
# Download files from kernScores related to songs:
#

zso: Zso
Zso:
	mkdir -p Zso/kern; (cd Zso/kern; humsplit h://jrp/Zso)

# 
# Download securely attributed works of Josquin:
#

joa: Joa
Joa:
	mkdir -p Joa/kern; (cd Joa/kern; humsplit h://jrp/Joa)

# 
# Download not securely attributed works of Josquin:
#

job: Job
Job:
	mkdir -p Job/kern; (cd Job/kern; humsplit h://jrp/Job)



##############################
#
# make update -- Download any changes in the Github repositories for
#      each composer.
#

update: github-pull
githubupdate: github-pull
githubpull: github-pull
github-pull:
	git pull --recurse-submodules



##############################
#
# make clean -- Remove all automatically generated or downloaded data files.  
#     Make sure that you have not added your own content into the directories 
#     in which these derivative files are located; otherwise, these will be 
#     deleted as well.
#

clean:
	-rm -rf [A-Z]??/kern-reduced
	-rm -rf [A-Z]??/kern-notext
	-rm -rf [A-Z]??/midi
	-rm -rf [A-Z]??/pdf
	-rm -rf [A-Z]??/pdf-notext
	-rm -rf Zma
	-rm -rf Zmo
	-rm -rf Zso
	-rm -rf Joa
	-rm -rf Job


