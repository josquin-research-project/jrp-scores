JRP Digital Scores
=======================

This repository contains digital music scores in the Humdrum data
format from the [Josquin Research Project](http://josquin.stanford.edu).
The main web interface for these scores is http://josquin.stanford.edu
which allows searching and browsing the scores as well as conversions
into other data formats such as MIDI and interfaces to some online
analysis tools.

These scores encompass music of the early Renaissance (`c`1420 to `c`1520),
mostly representing the 
[Franco-Flemish School](http://en.wikipedia.org/wiki/Franco-Flemish_School),
and are primarily intended from computational analysis.  As a result,
only a few works include text/lyrics suitable for vocal performance.

Composers
=====================

This meta-repository consists of all works from [JRP](http://josquin.stanford.edu).  
Individual composers' works are archived independently, and each of their
repositories can be viewed by clicking in the first column of the
table below.  Each composer is assigned a unique three-letter code
listed in the first column that is the name of the directory/folder in
the repository which contains each composer's works.


<table>
   <tr><td> <a href=https://github.com/josquin-research-project/Ano>Ano</a> </td><td> Anonymous		</td><td> (<a href=http://josquin.stanford.edu/#Ano>JRP</a>) </td><td> (<a href=http://en.wikipedia.org/wiki/Anonymous_work>Wikipedia</a>) </td></tr>
   <tr><td> [Agr](https://github.com/josquin-research-project/Agr) </td><td> Alexander Agricola	</td><td> ([JRP](http://josquin.stanford.edu/#Agr)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Alexander_Agricola) </td></tr>
   <tr><td> [Bus](https://github.com/josquin-research-project/Bus) </td><td> Antoine Busnoys	</td><td> ([JRP](http://josquin.stanford.edu/#Bus)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Antoine_busnoys) </td></tr>
   <tr><td> [Duf](https://github.com/josquin-research-project/Duf) </td><td> Guillaume Du Fay	</td><td> ([JRP](http://josquin.stanford.edu/#Duf)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Guillaume_Du_Fay) </td></tr>
   <tr><td> [Jap](https://github.com/josquin-research-project/Jap) </td><td> Jean Japart		</td><td> ([JRP](http://josquin.stanford.edu/#Jap)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Jean_Japart) </td></tr>
   <tr><td> [Jos](https://github.com/josquin-research-project/Jos) </td><td> Josquin des Prez	</td><td> ([JRP](http://josquin.stanford.edu/#Jos)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Josquin_des_Prez) </td></tr>
   <tr><td> [Mou](https://github.com/josquin-research-project/Mou) </td><td> Jean Mouton		</td><td> ([JRP](http://josquin.stanford.edu/#Mou)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Jean_Mouton) </td></tr>
   <tr><td> [Obr](https://github.com/josquin-research-project/Obr) </td><td> Jacob Obrecht	</td><td> ([JRP](http://josquin.stanford.edu/#Obr)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Jacob_Obrecht) </td></tr>
   <tr><td> [Ock](https://github.com/josquin-research-project/Ock) </td><td> Johannes Ockeghem	</td><td> ([JRP](http://josquin.stanford.edu/#Ock)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Johannes_Ockeghem) </td></tr>
   <tr><td> [Ort](https://github.com/josquin-research-project/Ort) </td><td> Marbrianus de Orto	</td><td> ([JRP](http://josquin.stanford.edu/#Ort)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Marbrianus_de_Orto) </td></tr>
   <tr><td> [Pip](https://github.com/josquin-research-project/Pip) </td><td> Matthaeus Pipelare	</td><td> ([JRP](http://josquin.stanford.edu/#Pip)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Matthaeus_Pipelare) </td></tr>
   <tr><td> [Rue](https://github.com/josquin-research-project/Rue) </td><td> Pierre de la Rue	</td><td> ([JRP](http://josquin.stanford.edu/#Rue)) </td><td> [Wikipedia](http://en.wikipedia.org/wiki/Pierre_de_la_rue) </td></tr>
</table>

Within each directory/folder of the repository is a subdirectory/subfolder
called ```kern``` that contains the actual scores in the **kern data
type of the Humdrum data file format.


Download
=================

To download this Github repository with
[git](http://en.wikipedia.org/wiki/Git_%29software%29) in a terminal, type:

<code>git clone --recursive https://github.com/josquin-research-project/jrp-scores</code>

The ```--recursive``` option is needed to download each of the individual composer 
repostories inside of this meta-repository.


Update
=================

If you have downloaded this repository with `git`, you can check for
updates for all composers using this command:

<code>git pull; git submodule foreach git pull</code>

Or alternatively:

<code>git pull --recurse-submodules</code>

Processing the scores
=================

These digital scores are designed to work with the Humdrum
Toolkit ([github](https://github.com/kroger/humdrum)]
as well as [Humdrum Extras](http://extra.humdrum.org)
([github](https://github.com/craigsapp/humextra)).

For proper rhythmic parsing in the Humdrum Toolkit, some files
containing rational rhythmic values need to be diminuted by a factor
of four to convert whole notes, or semibreve note, (typically
the rhythmic level of a beat in the early Renaissance) into a
quarter note, or semiminim, or crochet.  This can be done with the
[rscale](http://extras.humdrum.org/man/rscale) to apply the scaling to
all notes of all scores.  In a unix bash shell, this can be done with
a command like this:

<code>rscale -f 1/4 oldfile > newfile</code>

The makefile in base directory of this repository has commands
which will generate reduced versions of all files.  Use:

<code>make reduced</code>

if [Humdrum Extras](https://github.com/craigsapp/humextra) are installed,
or use:

<code>make webreduced</code>

to download the reduced form from the JRP website ([example](http://josquin.stanford.edu/data?a=humdrumreduced&f=Jos2721-La_Bernardina)).

Here are some other interesting processing actions:

* Determine works that include text/lyrics:

<code>grep -rl '\*\*text' */kern/*</code>



Alternate score access
=================

The main website for accessing the scores is http://josquin.stanford.edu.
On this website, each score has a 'work info' page generated with
this format:

```http://jrp.stanford.edu/cgi-bin/jrp?a=info&f=Jos2721```

Where ```Jos2721``` is the JRP catalog number #2721 for Josquin's set
of works.  A title may follow the catalog number:

```http://jrp.stanford.edu/cgi-bin/jrp?a=info&f=Jos2721-La_Bernardina```

* Example Humdrum data file access:

```http://jrp.stanford.edu/cgi-bin/jrp?a=humdrum&f=Jos2721-La_Bernardina```

* Example MIDI data file access:

```http://jrp.stanford.edu/cgi-bin/jrp?a=midi&f=Jos2721-La_Bernardina```

* Example graphical music scores in PDF format:
** Without editorial accidentals or text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationnoedit&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```
** Without editorial accidentals but with text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationnoeditwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```
** With editorial accidentals but without text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationwitheditorial&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```
** With editorial accidentals and with text: ```http://jrp.stanford.edu/cgi-bin/jrp?a=notationwitheditorialwithtext&f=Duf1005a-Missa_Se_la_face_ay_pale-Kyrie```

Scores are generated from the original Humdrum **kern scores found
in this repository for each work, so the music notation in the PDF
files should match exactly.  Online PDF files of the scores are created
using [hum2muse](http://extra.humdrum.org/man/hum2muse) converter which
translates Humdrum files into MuseData file which can then be converted
into PostScript files with [muse2ps](http://muse2ps.ccarh.org).

For convenient access to PDF scores for each work, you can download
from the web using the following bash script.  This may take some 
time since the PDF files are generated on demand and are larger 
than the source Humdrum files.





