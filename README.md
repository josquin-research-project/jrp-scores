# JRP Digital Scores #

This repository contains digital music scores in the Humdrum data
format from the [Josquin Research Project](http://josquin.stanford.edu).
The main web interface for these scores is http://josquin.stanford.edu
which allows searching and browsing the scores as well as conversions
into other data formats such as MIDI and interfaces to some online
analysis tools.  These scores encompass music of the early Renaissance
(*c*1420 to *c*1520), mostly representing the [Franco-Flemish
School](http://en.wikipedia.org/wiki/Franco-Flemish_School), and
are primarily intended from computational analysis.  As a result,
only a few works include text/lyrics suitable for vocal performance.

# Composers #

Individual composers' works are archived independently, and each of their
repositories can be viewed by clicking in the first column of the
table below.  Each composer is assigned a unique three-letter code
listed in the first column that is the name of the directory/folder in
the meta-repository which contains each composer's works.


<table>
   <tr><td> <a href=https://github.com/josquin-research-project/Ano>Ano</a> </td><td> Anonymous			</td><td> (<a href=http://josquin.stanford.edu/#Ano>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Anonymous_work>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Agr>Agr</a> </td><td> Alexander Agricola	</td><td> (<a href=http://josquin.stanford.edu/#Agr>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Alexander_Agricola>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Bus>Bus</a> </td><td> Antoine Busnoys		</td><td> (<a href=http://josquin.stanford.edu/#Bus>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Antoine_busnoys>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Duf>Duf</a> </td><td> Guillaume Du Fay		</td><td> (<a href=http://josquin.stanford.edu/#Duf>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Guillaume_Du_Fay>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Jap>Jap</a> </td><td> Jean Japart		</td><td> (<a href=http://josquin.stanford.edu/#Jap>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Jean_Japart>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Jos>Jos</a> </td><td> Josquin des Prez		</td><td> (<a href=http://josquin.stanford.edu/#Jos>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Josquin_des_Prez>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Mou>Mou</a> </td><td> Jean Mouton		</td><td> (<a href=http://josquin.stanford.edu/#Mou>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Jean_Mouton>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Obr>Obr</a> </td><td> Jacob Obrecht		</td><td> (<a href=http://josquin.stanford.edu/#Obr>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Jacob_Obrecht>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Ock>Ock</a> </td><td> Johannes Ockeghem		</td><td> (<a href=http://josquin.stanford.edu/#Ock>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Johannes_Ockeghem>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Ort>Ort</a> </td><td> Marbrianus de Orto	</td><td> (<a href=http://josquin.stanford.edu/#Ort>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Marbrianus_de_Orto>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Pip>Pip</a> </td><td> Matthaeus Pipelare	</td><td> (<a href=http://josquin.stanford.edu/#Pip>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Matthaeus_Pipelare>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Rue>Rue</a> </td><td> Pierre de la Rue		</td><td> (<a href=http://josquin.stanford.edu/#Rue>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Pierre_de_la_rue>Wikipedia</a>) </td></tr>
</table>

Within each directory/folder of the repository is a subdirectory/subfolder
called ```kern``` that contains the actual scores in the **kern data
type of the Humdrum data file format.


# Download #

To download this Github repository with
[git](http://en.wikipedia.org/wiki/Git_%29software%29) in a terminal, type:

<code>git clone --recursive https://github.com/josquin-research-project/jrp-scores</code>

The ```--recursive``` option is needed to download each of the individual composer 
repostories inside of the meta-repository.

This repository cannot be downloaded in useful format from the
ZIP link on the Github website, since the included repositories for
each composer will not be included in that ZIP file.  You must
either use [git](http://en.wikipedia.org/wiki/Git_%29software%29)
software or download the individual composers' ZIP files linked
from the table above.

In a unix terminal, you can check to see if git is installed by
typing ```which git```.  If the terminal replies with a path to
git, then you can proceed with the above cloning to download the
repository.  If not, then usually you can use a package manager to
install, such as ```apt-get install git``` or ```yum install git```.
On Apple OS X computers, git can be installed directly from
[here](http://git-scm.com/download/mac) or by more experienced users
from a mac package manager such as [Homebrew](http://brew.sh).  If
you have a comic-book view of the computer world, you can download GUI
interfaces for git [here](http://git-scm.com/downloads/guis).  A
[Github/git plugin](http://eclipse.github.com) is also available
for the Eclipse IDE ([see video](http://www.youtube.com/watch?v=ptK9-CNms98)).


# Update #

After you have downloaded this repository with `git`, you can check 
periodically for updates for all composers's works using this command:

<code>git pull; git submodule foreach git pull</code>

Or alternatively:

<code>git pull --recurse-submodules</code>


# Processing scores #

The digital scores in this repository are designed to work with the
Humdrum Toolkit ([github](https://github.com/kroger/humdrum)) as
well as [Humdrum Extras](http://extra.humdrum.org)
([github](https://github.com/craigsapp/humextra)).

## Rhythm representation considerations ##

For proper rhythmic parsing in the Humdrum Toolkit, some files
containing rational rhythmic values need to be diminuted by a factor
of four to convert whole notes, (typically the rhythmic level of a
beat in the early Renaissance) into a quarter notes (the typical
modern rhythmic level for beats).  This can be done with the
[rscale](http://extras.humdrum.org/man/rscale) tool to apply the
rhythmic scaling of 1/4 to all notes of all scores.  In a unix bash
shell, this can be done with a command like this:

<code>rscale -f 1/4 oldfile > newfile</code>

The makefile in base directory of this repository has commands
which will generate reduced versions of all files.  Use
(if [Humdrum Extras](https://github.com/craigsapp/humextra) is installed):

<code>make reduced</code>

or otherwise try:

<code>make webreduced</code>

to download the reduced form from the JRP website ([example](http://josquin.stanford.edu/data?a=humdrumreduced&f=Jos2721-La_Bernardina)).

## Other example processing ##

Here are some other interesting processing actions:

* Determine works that include text/lyrics: <code>grep -rl '\\*\\*text' \*/kern/\*</code>


# Alternate score access #

## JRP website ## 

The website http://josquin.stanford.edu is a high-level interface
to these scores with a lower-level access to the data, data
conversions, and analytic tools using URL parameters in the web
address.  On JRP website, each score has a "work info" page generated
with this format:

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=info&f=Jos2721</code>

Where ```Jos2721``` is the JRP catalog number 2721 for Josquin's collection
of works, and ```info``` is the action being applied to the given work (file).  
A title may optionally follow the catalog number (with exact spelling of the
title in the database):

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=info&f=Jos2721-La_Bernardina</code>

A file extention can also be given (.krn in this case) but will always be ignored.

Example Humdrum data file access by setting the *action* to "humdrum":

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=humdrum&f=Jos2721-La_Bernardina</code>

Example MIDI data file access by setting the *action* to "midi":

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=midi&f=Jos2721-La_Bernardina</code>

Example graphical music scores in PDF format with four possible styles:
* Without editorial accidentals or text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationnoedit&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```
* Without editorial accidentals but with text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationnoeditwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```
* With editorial accidentals but without text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationwitheditorial&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```
* With editorial accidentals and with text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationwitheditorialwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```

Scores are generated from the original Humdrum **kern scores found
in this repository for each work, so the music notation in the PDF
files should match exactly.  Online PDF files of the scores are created
using [hum2muse](http://extra.humdrum.org/man/hum2muse) converter which
translates Humdrum files into MuseData file which can then be converted
into PostScript files with [muse2ps](http://muse2ps.ccarh.org).

For convenient access to PDF scores for each work, the makefile in
base directory/folder of the repository can download the PDF graphical
music scores (with editorial accidentals and text) with this command:

```make webpdf```


## kernScores website ## 

The [kernScores](http://kern.humdrum.org) library of musical scores for analysis
in the Humdrum Toolkit has a page dedicated to the JRP scores:

<code>http://kern.humdrum.org/browse?l=jrp</code>


## Humdrum Extras commands ## 

The [Humdrum Extras] library/tools contain internal knowledge for how to download
the digital scores on the command line.  To download from the JRP website, the filename
is prefixed by ```jrp://```.  To download from the kernScores website, the prefix is
```humdrum://``` or ```h://``` for short.  KernScores access requires the exact file
name (catalog number, title, file extension), while JRP access requires only the 
catalog number:

Examples:

<code>humcat h://jrp/Jos/Jos2721-La_Bernardina.krn</code>

<code>humcat jrp://Jos2721</code>

The kernScores downloading method is typically only useful for downloading an entire
set of composers works.  Try the following humextra command to download all
of the works for Ockeghem:

<code>humsplit h://jrp/Ock</code>

The kernScores website has five meta-collections of the scores, two for Josquin
authenticity levels, and three for the main genres of mass, motet and song.  These
can be downloaded like this on the command line:

Secure Josquin set:

<code>mkdir Joa; (cd Joa; humsplit h://jrp/Joa)</code>

Not secure Josquin set:

<code>mkdir Job; (cd Job; humsplit h://jrp/Job)</code>

All mass sections:

<code>mkdir Zma; (cd Zma; humsplit h://jrp/Zma)</code>

All motets:

<code>mkdir Zmo; (cd Zmo; humsplit h://jrp/Zmo)</code>

All songs:

<code>mkdir Zso; (cd Zso; humsplit h://jrp/Zso)</code>








