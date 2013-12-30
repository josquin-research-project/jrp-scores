# JRP Digital Scores #

This repository contains digital music scores in the Humdrum data
format from the [Josquin Research Project](http://josquin.stanford.edu).
The primary web interface for these scores is http://josquin.stanford.edu
which allows online searching and browsing, conversions into other
data formats, such as MIDI and graphical notation, as well as
interfaces to some online analysis tools.  These scores encompass
music of the early Renaissance (*c*1420 to *c*1520), mostly
representing the [Franco-Flemish
School](http://en.wikipedia.org/wiki/Franco-Flemish_School) and are
mainly intended from computational analysis.  As a result only a
few works include text/lyrics suitable for vocal performance.

A peculiar aspect in music of the sixteenth century (from a modern
viewpoint) is an incomplete notation of accidentals needed for
performance.  Editorial accidentals have been added to these scores
to realize the performance practice of the time.  An "i" character
immediately following an accidental indicates that it was not written
in the original notation.  When written without an "i" after it,
the accidental is found in the original notation, either from the
key signature, or an explicit accidental written immediately before
the note.

Another conceptual difference is the use of mensuration signs.
These evolved (decayed) into time signatures.  The most common
mensuration in the music is Cut-C, from which modern cut-time
originates.  In this mensuration the *beat* is at the whole-note
rhythmic level, and the metric cycle is two beats (a breve). Circle
mensuration is the second most common mensuration in the music.
This represents three whole-note beats per rhythmic cycle (dotted
breve).  Mensuration signs also convey tempo, so MIDI files on the
[JRP](http://josquin.stanford.edu) website made from these scores
typically interpret tempo from the mensuration signs in the data
(with the tempo slowing down over the generations due to smaller
rhythmic values becoming more common).  Modern time signatures are
present in the data as a result of using music notation software
for data entry and are of secondary concern (notice that they are
not displayed in the scores on the [JRP](http://josquin.stanford.edu)
website.

Barlines had not yet been invented in the 15th century, so all
barlines in the data are interpreted; however, these are less open
to interpretation compared to editorial accidentals.  Typically
barlines represent breves (double whole notes) durations, although
they sometimes represent longs (quadruple whole notes), and may
include patterns of dashed and solid lines to indicate the implied
long (solid lines) and breve (dash line) metric grid of the music.

All parts are encoded in modern notation that is sensitive to the
original mensural notation intent of the fifteenth century.  The
main difference is that all rhythmic durations and augmentation
dots are make explicit rather than dependent on a note's musical
context.  Since the original parts were not written in modern score
layout during the fifteenth century, mensuration changes sometimes
do not occur at the same point in each part.  For example, one part
may have a whole note in Cut-C mensuration while another part has
a dotted whole note in 3 mensuration.  This is represented in the
data with the same rhythmic duration in each part, usually as a
whole note and a triplet dotted whole note using an ```*rscale:3/2```
interpretation in the second part to indicate that it is to be
displayed with a rhythmic duration 3/2 longer (i.e., convert the
triplet dotted whole note into a non-triplet dotted whole note).

Mensural music (particularly in masses) often will notate music in
*prolation*.  For example when music is in prolation between parts,
a whole note in one part will have the same duration has a half-note
in another part (2:1 prolation).  The ```*rscale``` rhythmic-scaling
interpretation will also be used in these cases.  All parts in the
data have a 1:1 rhythmic scaling against each other for analytic
purposes.  Applying the ```*rscale``` factor will cause a part to
be displayed in its original rhythmic values (i.e., reverse the
resolution of the prolation).

Triplet brackets are given explicitly in the data using "V" and "Z"
characters (this will change in the future).  Triplet brackets
indicate music that was originally in colored notation, which is a
mensural equivalent of triplets.  Music in 3 mensuration (an alternate
mensural method of showing triplets) may be represented as modern
rhythmic triplets in the data, but will not contain triplet brackets.

Ligatures are groups of notes with their heads attached to each other which
typically gives information about the rhythm of the notes in mensural
notation.  Usually modern notation of mensural music will place brackets
around individual notes which were originally part of a ligature group.
However, ligatures are not indicated in this data.


# Composers #

Individual composers' works are archived independently, and each of their
repositories can be viewed by clicking in the first column of the
table below.  Each composer is assigned a unique three-letter code
listed in the first column that is the name of the directory in
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

Within each directory of the repository is a subdirectory
called ```kern``` that contains the actual scores in the **kern data
type of the Humdrum data file format.

Currently, composers with complete (or nearly complete) sets of
encoded works include: Josquin, Ockeghem, La Rue and de Orto.


# Filenames #

Each file in the database starts with a unique JRP catalog number.
This consists of a three-letter composer ID as listed above,
followed by a four-digit number to represent a specific work by
that composer.  Typically the first digit of the catalog number
will indicate the genre of the work: 1 for masses, 2 for motets,
and 3 for secular songs (see the ```!!!AGN``` reference record
inside of the file for the actual genre designations).  The music
of Josquin is an exception, where the first two digits indicate its
volume number in the New Josquin Edition, and the last two digits
indicate the enumerated position of the work within that volume.

After the four-digit work number, an optional letter indicates that
a *movement*-level encoding of a work is found in the file.  This
system is used for storing mass sections in separate files, where
"a" is the first section (usually the Kyrie section), "b" is the
second section (usually the Gloria section), and so on.

Work-level variants are indicated in the catalog number by adding
a dot after the work number, followed by a variant number (of any
digit length).  Variants at the movement level are indicated by
placing a dot after the variant letter(s) followed by a variant
letter (or more than one lower-case letter).  If a file contains
an enumerable subsection of a movement, an optional digit will be
appended to the catalog number (which may itself be followed by a
dot and variant digits).  Movement subsection numbers are not yet
present in any datafile (and neither are Movement sub-subsections
which would alternate back to letters like movement-level labels).

After the catalog number, each filename contains a dash followed
by title information.  The title information may have up to three
fixed fields, each separated by a dash from the other.  The first
component of the title information is the title of the work.  This
is optionally followed by the title of the movement (i.e., mass
section names, such as the standard sections: kyrie, gloria, credo,
sanctus, and agnus [dei]).  A third optional section of the title
in the filename is variant information.  Spaces in the title are
encoded as underscore characters in the filenames.  Two underscores
in a row indicate a slash in the title.  No accent marks are given
in the filename titles since they are
[POSIX](http://en.wikipedia.org/wiki/POSIX) compliant; see the
```!!!OTL``` reference record within each file for the proper
accentuation of work titles.

Title information in filenames are a courtesy for human beings.  As
such they can be removed from filenames, leaving only the unique
catalog numbers. (Removing catalog numbers will not result in
unique filenames since a composer may write several songs with the
same title).


# Download #

To download this Github repository using
[git](http://en.wikipedia.org/wiki/Git_%29software%29) in a terminal, type:

<code>git clone --recursive https://github.com/josquin-research-project/jrp-scores</code>

The ```--recursive``` option is needed to download each of the individual composer 
repositories inside of the meta-repository.

This repository cannot be downloaded in a very useful format from
the ZIP link on the Github website, since the included repositories
for each composer will not be included in that ZIP file.  You must
either use [git](http://en.wikipedia.org/wiki/Git_%29software%29)
software or separately download each of the individual composers'
ZIP files linked from the table above.

In a unix terminal, you can check to see if git is installed by
typing ```which git```.  If the terminal replies with a path to
git, then you can proceed with the above cloning to download the
repository.  If not, then typically you can use a package manager
to install git, such as ```apt-get install git``` or ```yum install
git``` in linux.  On Apple OS X computers, git can be installed
directly from [here](http://git-scm.com/download/mac) or by more
experienced users from a mac package manager such as
[Homebrew](http://brew.sh).  If you have a comicbook-like view of the
computer world, you can download GUI interfaces for git
[here](http://git-scm.com/downloads/guis).  A [Github/git
plugin](http://eclipse.github.com) is also available for the Eclipse
IDE ([watch video](http://www.youtube.com/watch?v=ptK9-CNms98)).


# Update #

After you have downloaded this repository with `git`, you can check 
periodically for updates for all composers' works using this command:

<code>git pull --recurse-submodules</code>

Alternatively, the makefile in the base directory can be used to run this command:

<code>make update</code>


# Processing scores #

The digital scores in this repository are designed to work with the
[Humdrum Toolkit](http://www.humdrum.org/Humdrum)
([github](https://github.com/kroger/humdrum)) as well as [Humdrum
Extras](http://extra.humdrum.org)
([github](https://github.com/craigsapp/humextra)).
A makefile in the base directory of the repository contains some
basic processing commands which either require 
[Humdrum Extras](http://extras.humdrum.org) to manipulate the
data files, or commands (starting with "web") which download data
generated online by the [JRP website](http://josquin.stanford.edu).

Here are some of the make commands which you can run in the base directory
of the downloaded repository:

<table>
<tr><td width=200 colspan=2> No additional software needed: </td></tr>
<tr><td><tt>make</tt></td>
    <td>  List all of the possible make commands (i.e., this list).
    </tr>
<tr><td><tt>make&nbsp;update</tt></td>
    <td>  Download any updates to the online repository.
    </tr>
<tr><td><tt>make&nbsp;clean</tt></td>
    <td>  Delete directories of data created by this makefile, such as
	  `kern-reduced`, `midi`, `pdf`, `pdf-notext`
          will be stored in a directory called `kern-reduced` within
          each composer's directory.
    </tr>
<tr><td><tt>make&nbsp;notitle</tt></td>
    <td>  Remove titles from files names and store in directory
         called kern-notitle in each composer's directory.
    </tr>
<tr><td><tt>make&nbsp;web-pdf</tt></td>
    <td>  Download PDF files for graphical music scores for each piece from the
	  <a href=http://josquin.stanford.edu>JRP website</a>.
    </tr>
<tr><td><tt>make&nbsp;web-pdf-notext</tt></td>
    <td>  Download PDF files for graphical music scores for each piece from the
	  <a href=http://josquin.stanford.edu>JRP website</a> with lyrics removed
	  from all parts.
    </tr>
<tr><td><tt>make&nbsp;web-kern-reduced</tt></td>
    <td>  Download version of the data file which divides all note durations
          by a factor of four.  This data is useful for doing rhythmic
	  analysis with the standard Humdrum Toolkit.  
    </tr>
<tr><td colspan=2> <a href=http://github.com/craigsapp/humextra>Humdrum Extras</a>
      installation required: </td></tr>
<tr><td><tt>make&nbsp;kern-reduced</tt></td>
    <td>  Decrease all note durations by a factor of four.  Output data 
          will be stored in a directory called <tt>kern-reduced</tt> within
          each composer's directory.  Similar to <tt>make web-reduced</tt>, but
	  much faster.
    </tr>
<tr><td><tt>make&nbsp;kern-notext</tt></td>
    <td>  Remove lyrics from all parts. Resulting data
          will be stored in a directory called <tt>kern-notext</tt> within
          each composer's directory.  
    </tr>
<tr><td><tt>make&nbsp;genres</tt></td>
    <td>  Download works organized by genre from kernScores.
    </tr>
<tr><td colspan=2> <a href=http://github.com/kroger/humdrum>Humdrum Toolkit</a>
      installation required: </td></tr>
<tr><td><tt>make&nbsp;census</tt></td>
    <td>  Run <tt>census&nbsp;-k</tt> on all works.
    </tr>
</table>



### Rhythm representation considerations ###

For proper rhythmic parsing in the Humdrum Toolkit, some files
containing rational rhythmic values need to be diminuted by a factor
of four to convert whole notes (typically the rhythmic level of a
beat in the early Renaissance), into quarter notes (the typical
modern rhythmic level for beats).  This can be done with the
[rscale](http://extras.humdrum.org/man/rscale) tool to apply a
rhythmic scaling of 1/4 to all notes in all scores:

<code>rscale -f 1/4 oldfile > newfile</code>

A makefile in the base directory of this repository ([this
one](https://github.com/josquin-research-project/jrp-scores/blob/master/Makefile)
contains instructions to generate reduced rhythmic versions of all
files.  Type (if [Humdrum Extras](https://github.com/craigsapp/humextra)
is installed):

<code>make reduced</code>

or if humextras is not installed, type:

<code>make web-reduced</code>

to download the reduced form from the JRP website ([example](http://josquin.stanford.edu/data?a=humdrumreduced&f=Jos2721-La_Bernardina)).  This will create
subdirectories in each composer directory named 
```kern-reduced``` with the reduced rhythmic versions of the data files.



### Other example processing ###

Here are some other interesting processing actions:

* Determine works that include text/lyrics: <code>grep -rl '\\*\\*text' \*/kern/\*</code>


# Alternate data access #

### JRP website ###

The website http://josquin.stanford.edu is a high-level interface
to these scores, but also includes lower-level access to the data,
data conversions, and analytic tools using URL parameters in the
web address.  On the JRP website, each score has a "work info" page
generated with this format:

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=info&f=Jos2721</code>

Where ```Jos2721``` is the JRP catalog number 2721 from Josquin's
collection of works, and ```info``` is the *action* being applied
to the given work (file) which causes the work-info page to be
displayed.  A title may optionally follow the catalog number (with
exact spelling of the title in the database):

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=info&f=Jos2721-La_Bernardina</code>

A file extension can also be given (.krn in this case) but will
always be ignored.  Example Humdrum data file access by setting the
*action* to "humdrum":

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=humdrum&f=Jos2721-La_Bernardina</code>

Example MIDI data file access by setting the *action* to "midi":

<code>http://jrp.stanford.edu/cgi-bin/jrp?a=midi&f=Jos2721-La_Bernardina</code>

Example graphical music scores in PDF format with four possible styles:
* Without editorial accidentals or text: <code>http://jrp.stanford.edu/cgi-bin/jrp?a=notationnoedit&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie</code>
* Without editorial accidentals but with text: <code>http://jrp.stanford.edu/cgi-bin/jrp?a=notationnoeditwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie</code>
* With editorial accidentals but without text: <code>http://jrp.stanford.edu/cgi-bin/jrp?a=notationwitheditorial&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie</code>
* With editorial accidentals and with text: <code>http://jrp.stanford.edu/cgi-bin/jrp?a=notationwitheditorialwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie</code>

Scores are generated from the original Humdrum **kern scores found
in this repository for each work, so music notation in the PDF files
should match exactly.  Online PDF files of the scores are created
using the [hum2muse](http://extra.humdrum.org/man/hum2muse) converter
which translates Humdrum files into MuseData file which can then
be converted into PostScript files with
[muse2ps](http://muse2ps.ccarh.org).


### kernScores website ###

The [kernScores](http://kern.humdrum.org) library of musical scores
for analysis in the Humdrum Toolkit has a page dedicated to the JRP
scores:

<code>http://kern.humdrum.org/browse?l=jrp</code>


### Humdrum Extras tools/library ###

The [Humdrum Extras](http://extra.humdrum.org) tools/library
([github](https://github.com/craigsapp/humextra)) contains internal
knowledge for how to download the digital scores on the command
line.  To download from the JRP website, the filename is prefixed
by ```jrp://```.  To download from the kernScores website, the
prefix is ```humdrum://```, or ```h://``` for short.  KernScores
access requires the exact file name (catalog number, title, file
extension), while JRP access requires only the catalog number.

Examples:

<code>humcat h://jrp/Jos/Jos2721-La_Bernardina.krn<br>
humcat jrp://Jos2721-La_Bernardina.krn<br>
humcat jrp://Jos2721</code>

Since it requires the full filename for accessing individual
files, the kernScores downloading method is instead mostly useful
for downloading an entire set of composer's works.  Try the following
humextra command to download all of the works for Ockeghem:

<code>mkdir Ock; cd Ock; humsplit h://jrp/Ock</code>

The kernScores website has five meta-collections of the scores: two for Josquin
authenticity levels, and three for the main genres of mass, motet and song.  These
can be downloaded like this on the command line:

<table>
<tr>
<td>

Secure Josquin set:
</td><td>
<code>mkdir -p Joa/kern; (cd Joa/kern; humsplit h://jrp/Joa)</code>
</td></tr><tr><td>

Not secure Josquin set:
</td><td>
<code>mkdir -p Job/kern; (cd Job/kern; humsplit h://jrp/Job)</code>
</td></tr><tr><td>

All mass sections:
</td><td>
<code>mkdir -p Zma/kern; (cd Zma/kern; humsplit h://jrp/Zma)</code>
</td></tr><tr><td>

All motets:
</td><td>
<code>mkdir -p Zmo/kern; (cd Zmo/kern; humsplit h://jrp/Zmo)</code>
</td></tr><tr><td>

All songs:
</td><td>
<code>mkdir -p Zso/kern; (cd Zso/kern; humsplit h://jrp/Zso)</code>
</td></tr>

</table>





