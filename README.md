# JRP Digital Scores #

This repository contains digital music scores in the Humdrum data
format from the [Josquin Research Project](http://josquin.stanford.edu).
The primary web interface for these scores is http://josquin.stanford.edu
which allows online searching and browsing, conversions into other
data formats, such as MIDI and graphical notation, as well as
interfaces to some online analysis tools.  These scores encompass
music of the early Renaissance (ca. 1420 to ca. 1520), mostly
representing the [Franco-Flemish
School](http://en.wikipedia.org/wiki/Franco-Flemish_School) and are
mainly intended for computational analysis.  As a result only a few
works include text/lyrics suitable for vocal performance.

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
These evolved (decayed) into modern time signatures.  The most
common mensuration in the music is Cut-C, from which modern cut-time
originates.  In this mensuration the *beat* is at the whole-note
rhythmic level, and the metric cycle is two beats (a breve). Circle
mensuration is the second most common mensuration in the music.
This represents three whole-note beats per rhythmic cycle (dotted/perfect
breve).  Mensuration signs also convey tempo, so MIDI files on the
[JRP](http://josquin.stanford.edu) website made from these scores
typically interpret tempo from the mensuration signs in the data
(with the tempo of the whole notes slowing down over the generations
due to smaller rhythmic values becoming more common).  Modern time
signatures are present in the data as a result of using music
notation software for data entry and are of secondary concern (notice
that they are not displayed in the scores on the
[JRP](http://josquin.stanford.edu) website, but use rather for metric
analyses.

Barlines had not yet been invented in the fifteenth century, so all
barlines in the data are interpreted; however, these are less open
to interpretation compared to editorial accidentals.  Typically
barlines represent breves (double whole notes) durations, although
they sometimes represent longs (quadruple whole notes), and may
include patterns of dashed and solid lines to indicate the implied
long (solid lines) and breve (dash line) metric grid of the music.
In Circle mensuration the mensural breve is a dotted double whole
note in modern notation.

All parts are encoded in modern notation, but sensitive to the
original mensural notation intent of the fifteenth century.  The
main difference is that all rhythmic durations and augmentation
dots are made explicit rather than dependent on a note's musical
context.  Since the original parts were not written in modern score
layout during the fifteenth century (see an example of a
[partbook](http://www.loc.gov/exhibits/vatican/images/music13.jpg)),
mensuration changes sometimes do not occur at the same point in
each part.  For example, one part may have a whole note in Cut-C
mensuration while another part has a dotted whole note in 3
mensuration, called sesquialtera.  This is represented in the data
with the same rhythmic duration in each part, usually as a whole
note and a triplet dotted whole note using an `*rscale:3/2`
interpretation in the second part to indicate that it is to be
displayed with a rhythmic duration 3/2 longer (i.e., convert the
triplet dotted whole note into a non-triplet dotted whole note).

In mensural music (particularly in masses) the voices are sometimes
notated in conflicting note values, related in part to using less
common mensurals signs such as C-dot and O-dot. (Colloquially we
refer to a voice being "augmented" or "diminished" relative to the
others.) The most common situation is for a half-note in the tenor
to have the same duration as a whole-note in another part.  The
`*rscale` rhythmic-scaling interpretation will also be used in these
cases.  All parts in the data have a 1:1 rhythmic scaling in the
modern sense against each other for analytic purposes.  Applying
the `*rscale` factor will cause a part to be displayed in its
original rhythmic values (i.e., reverse the resolution of the
augmentation/diminution).

Triplet brackets are given explicitly in the data using "V" and "Z"
characters.  Triplet brackets indicate music that was originally
in colored notation, which is a mensural equivalent of triplets
(although coloration can be used for other purposes as well).  Music
in 3-mensuration (an alternate mensural method of showing triplets)
may be represented as modern rhythmic triplets in the data, but
will not contain triplet brackets.  Mostly commonly 3-mensurtion
music is represented in 3/1 modern time signatures to be played
2/3rds faster, while colored notation are typically represented as
triplets in 2/1 time signature.  When the perceived beat is at the
triplet wholenote level in colored notation, the modern time signature
is given as 3/3%2 (which is not a standard time signature in modern
notation).  3%2 represents 2/3rds of a whole notes, or in other
words a triplet whole note.  So a 2/1 measure has the same duation
as 3/3%2 (two wholenotes equals three triplet wholenotes).

Ligatures are groups of notes with their heads attached to each
other which typically gives information about the rhythm of the
notes in mensural notation.  Usually modern notation of mensural
music will place brackets around individual notes which were
originally part of a ligature group.  However, ligatures are typically
not indicated in this data.


# Composers #

Individual composer's works are archived independently, and each of their
repositories can be viewed by clicking in the first column of the
table below.  Each composer is assigned a unique three-letter code
listed in the first column that is the name of the directory in
the meta-repository which contains each composer's works.


<table>
   <tr><td> <a href=https://github.com/josquin-research-project/Ano>Ano</a> </td><td> Anonymous			</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Ano>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Anonymous_work>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Agr>Agr</a> </td><td> Alexander Agricola	</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Agr>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Alexander_Agricola>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Bru>Bru</a> </td><td> Antoine Brumel		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Bru>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Antoine_Brumel>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Bus>Bus</a> </td><td> Antoine Busnoys		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Bus>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Antoine_busnoys>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Com>Com</a> </td><td> Loyset Compere		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Com>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Loyset_Comp%C3%A8re>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Das>Das</a> </td><td> Ludwig Daser              </td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Das>JRP</a>) </td><td> (<a href=https://de.wikipedia.org/wiki/Ludwig_Daser>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Duf>Duf</a> </td><td> Guillaume Du Fay		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Duf>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Guillaume_Du_Fay>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Fry>Fry</a> </td><td> Walter Frye		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Fry>JRP</a>) </td><td> (<a href=https://en.wikipedia.org/wiki/Walter_Frye>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Fva>Fva</a> </td><td> Antoine de Fevin		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Fva>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Antoine_de_Févin>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Gas>Gas</a> </td><td> Gaspar van Weerbeke	</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Gas>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Gaspar_van_Weekbeke>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Isa>Isa</a> </td><td> Henrich Isaac		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Isa>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Heinrich_Isaac>Wikipedia</a>) </td></tr> 
   <tr><td> <a href=https://github.com/josquin-research-project/Jap>Jap</a> </td><td> Jean Japart		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Jap>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Jean_Japart>Wikipedia</a>) </td></tr> 
   <tr><td> <a href=https://github.com/josquin-research-project/Jos>Jos</a> </td><td> Josquin des Prez		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Jos>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Josquin_des_Prez>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Mar>Mar</a> </td><td> Johannes Martini		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Mar>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Johannes_Martini>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Mou>Mou</a> </td><td> Jean Mouton		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Mou>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Jean_Mouton>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Obr>Obr</a> </td><td> Jacob Obrecht		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Obr>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Jacob_Obrecht>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Oke>Oke</a> </td><td> Johannes Okeghem		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Oke>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Johannes_Okeghem>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Ort>Ort</a> </td><td> Marbrianus de Orto	</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Ort>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Marbrianus_de_Orto>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Pip>Pip</a> </td><td> Matthaeus Pipelare	</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Pip>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Matthaeus_Pipelare>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Reg>Reg</a> </td><td> Johannes Regis		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Reg>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Johannes_Regis>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Rue>Rue</a> </td><td> Pierre de la Rue		</td><td> (<a href=http://josquin.stanford.edu/browse-filter/?c=Rue>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Pierre_de_la_rue>Wikipedia</a>) </td></tr>
   <tr><td> <a href=https://github.com/josquin-research-project/Tin>Tin</a> </td><td> Johannes Tinctoris</td><td> (<a href=http://josquin.stanford.edu/browse/?c=Tin>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Johannes_Tinctoris>Wikipedia</a>) </td></tr>
</table>

Within each directory of the repository is a subdirectory called
`kern` that contains the actual scores in the `**kern` data type
of the Humdrum data file format.  MIDI files can be downloaded from
the JRP website by typing the command `make midi` in the root
directory of the jrp-scores repository (provided that you have GNU
make installed on your computer).  PDF files for the musical scores
(which are generated from the Humdrum data files found in this
repository) can be downloaded with the command `make pdf`.  PDF
scores are printed with the [MuseData](https://musedata.ccarh.org)
printing system.  A command-line version of this system is available
at http://muse2ps.ccarh.org .  MuseData generated from the Humdrum
data files can be downloaded with the command `make musedata`.

Currently, composers with complete (or nearly complete) sets of
encoded works include: Gaspar, Josquin, La Rue, Okeghem, and de Orto.

The relative size of each composer's work database can be viewed
on the [JRP Census page](http://josquin.stanford.edu/census).  You can
count the number of works and notes for each composer by the command:

```bash
make note-counts-by-composer
```


# Filenames #

Each file in the database starts with a unique JRP catalog number.
This consists of a three-letter composer ID as listed above, followed
by a four-digit number to represent a specific work by that composer.
Typically the first digit of the catalog number will indicate the
genre of the work: 1 for masses, 2 for motets, and 3 for secular
songs (see the `!!!AGN` reference record inside of the file for the
actual genre designations).  The music of Josquin is an exception,
where the first two digits indicate its volume number in the New
Josquin Edition, and the last two digits indicate the enumerated
position of the work within that volume.

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
`!!!OTL` reference record within each file for the proper accentuation
of work titles.

Title information in filenames are a courtesy for human beings.  As
such they can be removed from filenames, leaving only the unique
catalog numbers. (Removing catalog numbers will not result in unique
filenames since a composer may write several songs with the same
title).


# Download #

To download this Github repository using
[git](http://en.wikipedia.org/wiki/Git_%29software%29) in a terminal, type:

<code>git clone --recursive https://github.com/josquin-research-project/jrp-scores</code>

The `--recursive` option is needed to download each of the
individual composer repositories inside of the meta-repository.

In a unix terminal, you can check to see if git is installed by
typing `which git`.  If the terminal replies with a path to
git, then you can proceed with the above cloning to download the
repository.  If not, then typically you can use a package manager
to install git, such as `apt-get install git` or `yum install
git` in linux.  On Apple OS X computers, git can be installed
directly from [here](http://git-scm.com/download/mac) or by more
experienced users from a mac package manager such as
[Homebrew](http://brew.sh).  If you have a comicbook-like view of the
computer world, you can download GUI interfaces for git
[here](http://git-scm.com/downloads/guis).  A [Github/git
plugin](http://eclipse.github.com) is also available for the Eclipse
IDE ([watch video](http://www.youtube.com/watch?v=ptK9-CNms98)).

This repository collects individual composer repositories as submodules. You
can also download the composer repositories separatly, such as for Josquin:

```bash
git clone http://github.com/josquin-research-project/Jos
```


# Update #

After you have downloaded this repository with `git`, you can check 
periodically for updates for all composers' works using this command
in the `jrp-scores` directory:

```
make update
```

# Processing scores #

The digital scores in this repository are designed to work with the
[Humdrum Toolkit](http://www.humdrum.org)
([github](https://github.com/humdrum-tools/humdrum-tools)).
A makefile in the base directory of the repository contains some
basic processing commands which either require 
[Humdrum Extras](http://extras.humdrum.org) 
([github](https://github.com/craigsapp/humextra))
to manipulate the
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
	  <tt>kern-reduced</tt>, <tt>midi</tt>, <tt>pdf</tt>, 
	  <tt>pdf-notext</tt>.
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
<tr><td><tt>make&nbsp;web-reduced</tt></td>
    <td>  Download version of the data file which divides all note durations
          by a factor of four.  This data is useful for doing rhythmic
	  analysis with the standard Humdrum Toolkit.  
    </tr>
<tr><td colspan=2> <a href=http://github.com/craigsapp/humextra>Humdrum Extras</a>
      installation required: </td></tr>
<tr><td><tt>make&nbsp;reduced</tt></td>
    <td>  Decrease all note durations by a factor of four.  Output data 
          will be stored in a directory called <tt>kern-reduced</tt> within
          each composer's directory.  Similar to <tt>make web-reduced</tt>, but
	  much faster.
    </tr>
<tr><td><tt>make&nbsp;notext</tt></td>
    <td>  Remove lyrics from all parts. Resulting data
          will be stored in a directory called <tt>kern-notext</tt> within
          each composer's directory.  
    </tr>
<tr><td><tt>make&nbsp;genres</tt></td>
    <td>  Download works organized by genre from kernScores.
    </tr>
<tr><td colspan=2> <a href=http://github.com/humdrum-tools/humdrum-tools>Humdrum Toolkit</a>
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

```bash
rscale -f 1/4 oldfile > newfile
```

A makefile in the base directory of this repository ([this
one](https://github.com/josquin-research-project/jrp-scores/blob/master/Makefile)
contains instructions to generate reduced rhythmic versions of all
files.  Type (if [Humdrum Extras](https://github.com/craigsapp/humextra)
is installed):

```
make reduced
```

or if humextras is not installed, type:

```bash
make web-reduced
```

### Other example processing ###

Here are some other interesting processing actions:

* Determine works that include text/lyrics: 

```bash
grep -rl '\\\*\\\*text' \*/kern/\*
```


# Alternate data access #

### JRP website ###

The website http://josquin.stanford.edu is a high-level interface
to these scores, but also includes lower-level access to the data,
data conversions, and analytic tools using URL parameters from the
https://data.josqu.in web address.  On the JRP website, each score
has a "work info" page generated with this format:

https://data.josqu.in/work?id=Jos2721.krn

Example MIDI data file access by setting the file extensiom to `mid`:

http://data.josqu.in/Jos2721-La_Bernardina.mid

Example graphical music scores in PDF format with four possible styles:
* Without editorial accidentals or text: http://josquin.stanford.edu/data?a=notationnoedit&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie
* Without editorial accidentals but with text: http://josquin.stanford.edu/data?a=notationnoeditwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie
* With editorial accidentals but without text: http://josquin.stanford.edu/data?a=notationwitheditorial&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie
* With editorial accidentals and with text: http://josquin.stanford.edu/data?a=notationwitheditorialwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie

Scores are generated from the original Humdrum `**kern` scores found
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
by `jrp://`.  To download from the kernScores website, the
prefix is `humdrum://`, or `h://` for short.  KernScores
access requires the exact file name (catalog number, title, file
extension), while JRP access requires only the catalog number.

Examples:

<code>humcat h://jrp/Jos/Jos2721-La_Bernardina.krn<br>
humcat jrp://Jos2721-La_Bernardina.krn<br>
humcat jrp://Jos2721</code>

Since it requires the full filename for accessing individual
files, the kernScores downloading method is instead mostly useful
for downloading an entire set of composer's works.  Try the following
humextra command to download all of the works for Okeghem:

<code>mkdir Oke; cd Oke; humsplit h://jrp/Oke</code>

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

Type `make genres` in the base directory of the repository if 
[Humdrum Extras](https://github.com/craigsapp/humextras) is installed to 
download the Zma, Zmo, and Zso genre groupings from the kernScores website.

Type `make Joa; make Job` in the base directory of the repository if 
[Humdrum Extras](https://github.com/craigsapp/humextras) is installed to 
download the secure and not secure groupings of Josquin music.




