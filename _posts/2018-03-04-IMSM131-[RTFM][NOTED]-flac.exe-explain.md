---
layout: post
title: 'IMSM131: [RTFM][NOTED] flac.exe --explain (More detailed than --help)'
date: 2018-03-04
author: InsModScum
tags:
- IMS
- 2018
- Audio
- FLAC
- Music
- Noted
- RTFM
---

~~~
flac.exe --explain |clip
~~~

<!-- more -->

~~~
===============================================================================
flac - Command-line FLAC encoder/decoder version 1.3.2
Copyright (C) 2000-2009  Josh Coalson
Copyright (C) 2011-2016  Xiph.Org Foundation

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
===============================================================================
Usage:

 Encoding: flac [<general-options>] [<encoding/format-options>] [INPUTFILE [...]]
 Decoding: flac -d [<general-options>] [<format-options>] [FLACFILE [...]]
  Testing: flac -t [<general-options>] [FLACFILE [...]]
Analyzing: flac -a [<general-options>] [<analysis-options>] [FLACFILE [...]]

Be sure to read the list of known bugs at:
http://xiph.org/flac/documentation_bugs.html

For encoding:
  The input file(s) may be a PCM WAVE or RF64 file, AIFF (or uncompressed
  AIFF-C) file, or raw samples.
  The output file(s) will be in native FLAC or Ogg FLAC format
For decoding, the reverse is true.

A single INPUTFILE may be - for stdin.  No INPUTFILE implies stdin.  Use of
stdin implies -c (write to stdout).  Normally you should use:
   flac [options] -o outfilename  or  flac -d [options] -o outfilename
instead of:
   flac [options] > outfilename   or  flac -d [options] > outfilename
since the former allows flac to seek backwards to write the STREAMINFO or
WAVE/AIFF header contents when necessary.

flac checks for the presence of a AIFF/WAVE header to decide whether or not to
treat an input file as AIFF/WAVE format or raw samples.  If any input file is
raw you must specify the format options {-fb|fl} -fc -fp and -fs, which will
apply to all raw files.  You can force AIFF/WAVE files to be treated as raw
files using -fr.

general options:
  -v, --version                Show the flac version number
  -h, --help                   Show basic usage a list of all options
  -H, --explain                Show this screen
  -d, --decode                 Decode (the default behavior is to encode)
  -t, --test                   Same as -d except no decoded file is written
  -a, --analyze                Same as -d except an analysis file is written
  -c, --stdout                 Write output to stdout
  -s, --silent                 Do not write runtime encode/decode statistics
      --totally-silent         Do not print anything of any kind, including
                               warnings or errors.  The exit code will be the
                               only way to determine successful completion.
      --no-utf8-convert        Do not convert tags from local charset to UTF-8.
                               This is useful for scripts, and setting tags in
                               situations where the locale is wrong.  This
                               option must appear before any tag options!
  -w, --warnings-as-errors     Treat all warnings as errors
  -f, --force                  Force overwriting of output files
  -o, --output-name=FILENAME   Force the output file name; usually flac just
                               changes the extension.  May only be used when
                               encoding a single file.  May not be used in
                               conjunction with --output-prefix.
      --output-prefix=STRING   Prefix each output file name with the given
                               STRING.  This can be useful for encoding or
                               decoding files to a different directory.  Make
                               sure if your STRING is a path name that it ends
                               with a '/' slash.
      --delete-input-file      Automatically delete the input file after a
                               successful encode or decode.  If there was an
                               error (including a verify error) the input file
                               is left intact.
      --preserve-modtime       Output files have their timestamps/permissions
                               set to match those of their inputs (this is
                               default).  Use --no-preserve-modtime to make
                               output files have the current time and default
                               permissions.
      --keep-foreign-metadata  If encoding, save WAVE or AIFF non-audio chunks
                               in FLAC metadata.  If decoding, restore any saved
                               non-audio chunks from FLAC metadata when writing
                               the decoded file.  Foreign metadata cannot be
                               transcoded, e.g. WAVE chunks saved in a FLAC file
                               cannot be restored when decoding to AIFF.  Input
                               and output must be regular files, not stdin/out.
      --skip={#|mm:ss.ss}      Skip the first # samples of each input file; can
                               be used both for encoding and decoding.  The
                               alternative form mm:ss.ss can be used to specify
                               minutes, seconds, and fractions of a second.
      --until={#|[+|-]mm:ss.ss}  Stop at the given sample number for each input
                               file.  The given sample number is not included
                               in the decoded output.  The alternative form
                               mm:ss.ss can be used to specify minutes,
                               seconds, and fractions of a second.  If a `+'
                               sign is at the beginning, the --until point is
                               relative to the --skip point.  If a `-' sign is
                               at the beginning, the --until point is relative
                               to end of the audio.
analysis options:
      --residual-text          Include residual signal in text output.  This
                               will make the file very big, much larger than
                               even the decoded file.
      --residual-gnuplot       Generate gnuplot files of residual distribution
                               of each subframe
decoding options:
  -F, --decode-through-errors  By default flac stops decoding with an error
                               and removes the partially decoded file if it
                               encounters a bitstream error.  With -F, errors
                               are still printed but flac will continue
                               decoding to completion.  Note that errors may
                               cause the decoded audio to be missing some
                               samples or have silent sections.
      --cue=[#.#][-[#.#]]      Set the beginning and ending cuepoints to
                               decode.  The optional first #.# is the track and
                               index point at which decoding will start; the
                               default is the beginning of the stream.  The
                               optional second #.# is the track and index point
                               at which decoding will end; the default is the
                               end of the stream.  If the cuepoint does not
                               exist, the closest one before it (for the start
                               point) or after it (for the end point) will be
                               used.  The cuepoints are merely translated into
                               sample numbers then used as --skip and --until.
                               A CD track can always be cued by, for example,
                               --cue=9.1-10.1 for track 9, even if the CD has
                               no 10th track.
encoding options:
  -V, --verify                 Verify a correct encoding by decoding the
                               output in parallel and comparing to the
                               original
      --lax                    Allow encoder to generate non-Subset files
      --ignore-chunk-sizes     Ignore data chunk sizes in WAVE/AIFF files;
                               useful when piping data from programs which
                               generate bogus data chunk sizes.
      --sector-align           Align encoding of multiple CD format WAVE files
                               on sector boundaries.  This option is DEPRECATED
                               and may not exist in future versions of flac.
                               shntool offers similar functionality.
      --replay-gain            Calculate ReplayGain values and store them as
                               FLAC tags.  Title gains/peaks will be computed
                               for each file, and an album gain/peak will be
                               computed for all files.  All input files must
                               have the same resolution, sample rate, and
                               number of channels.  The sample rate must be
                               one of 8, 11.025, 12, 16, 22.05, 24, 32, 44.1,
                               or 48 kHz.  NOTE: this option may also leave a
                               few extra bytes in the PADDING block.
      --cuesheet=FILENAME      Import the given cuesheet file and store it in
                               a CUESHEET metadata block.  This option may only
                               be used when encoding a single file.  A
                               seekpoint will be added for each index point in
                               the cuesheet to the SEEKTABLE unless
                               --no-cued-seekpoints is specified.
      --picture=SPECIFICATION  Import a picture and store it in a PICTURE block.
                               More than one --picture command can be specified.
                               The SPECIFICATION can either be a simple filename
                               for the picture file, or a complete specification
                               whose parts are separated by | characters.  Some
                               parts may be left empty to invoke default values.
                               Using a filename is shorthand for "||||FILE".
                               The SPECIFICATION format is:
         [TYPE]|[MIME-TYPE]|[DESCRIPTION]|[WIDTHxHEIGHTxDEPTH[/COLORS]]|FILE
           TYPE is optional; it is a number from one of:
              0: Other
              1: 32x32 pixels 'file icon' (PNG only)
              2: Other file icon
              3: Cover (front)
              4: Cover (back)
              5: Leaflet page
              6: Media (e.g. label side of CD)
              7: Lead artist/lead performer/soloist
              8: Artist/performer
              9: Conductor
             10: Band/Orchestra
             11: Composer
             12: Lyricist/text writer
             13: Recording Location
             14: During recording
             15: During performance
             16: Movie/video screen capture
             17: A bright coloured fish
             18: Illustration
             19: Band/artist logotype
             20: Publisher/Studio logotype
             The default is 3 (front cover).  There may only be one picture each
             of type 1 and 2 in a file.
           MIME-TYPE is optional; if left blank, it will be detected from the
             file.  For best compatibility with players, use pictures with MIME
             type image/jpeg or image/png.  The MIME type can also be --> to
             mean that FILE is actually a URL to an image, though this use is
             discouraged.
           DESCRIPTION is optional; the default is an empty string
           The next part specfies the resolution and color information.  If
             the MIME-TYPE is image/jpeg, image/png, or image/gif, you can
             usually leave this empty and they can be detected from the file.
             Otherwise, you must specify the width in pixels, height in pixels,
             and color depth in bits-per-pixel.  If the image has indexed colors
             you should also specify the number of colors used.
           FILE is the path to the picture file to be imported, or the URL if
             MIME type is -->
  -T, --tag=FIELD=VALUE        Add a FLAC tag.  Make sure to quote the
                               comment if necessary.  This option may appear
                               more than once to add several comments.  NOTE:
                               all tags will be added to all encoded files.
      --tag-from-file=FIELD=FILENAME   Like --tag, except FILENAME is a file
                               whose contents will be read verbatim to set the
                               tag value.  The contents will be converted to
                               UTF-8 from the local charset.  This can be used
                               to store a cuesheet in a tag (e.g.
                               --tag-from-file="CUESHEET=image.cue").  Do not
                               try to store binary data in tag fields!  Use
                               APPLICATION blocks for that.
  -S, --seekpoint={#|X|#x|#s}  Include a point or points in a SEEKTABLE
       #  : a specific sample number for a seek point
       X  : a placeholder point (always goes at the end of the SEEKTABLE)
       #x : # evenly spaced seekpoints, the first being at sample 0
       #s : a seekpoint every # seconds; # does not have to be a whole number
     You may use many -S options; the resulting SEEKTABLE will be the unique-
           ified union of all such values.
     With no -S options, flac defaults to '-S 10s'.  Use -S- for no SEEKTABLE.
     Note: -S #x and -S #s will not work if the encoder can't determine the
           input size before starting.
     Note: if you use -S # and # is >= samples in the input, there will be
           either no seek point entered (if the input size is determinable
           before encoding starts) or a placeholder point (if input size is not
           determinable)
  -P, --padding=#              Tell the encoder to write a PADDING metadata
                               block of the given length (in bytes) after the
                               STREAMINFO block.  This is useful if you plan
                               to tag the file later with an APPLICATION
                               block; instead of having to rewrite the entire
                               file later just to insert your block, you can
                               write directly over the PADDING block.  Note
                               that the total length of the PADDING block will
                               be 4 bytes longer than the length given because
                               of the 4 metadata block header bytes.  You can
                               force no PADDING block at all to be written with
                               --no-padding.  The encoder writes a PADDING
                               block of 8192 bytes by default, or 65536 bytes
                               if the input audio is more than 20 minutes long.
  -b, --blocksize=#            Specify the blocksize in samples; the default is
                               1152 for -l 0, else 4096; must be one of 192,
                               576, 1152, 2304, 4608, 256, 512, 1024, 2048,
                               4096 (and 8192 or 16384 if the sample rate is
                               >48kHz) for Subset streams.
  -0, --compression-level-0, --fast  Synonymous with -l 0 -b 1152 -r 3
  -1, --compression-level-1          Synonymous with -l 0 -b 1152 -M -r 3
  -2, --compression-level-2          Synonymous with -l 0 -b 1152 -m -r 3
  -3, --compression-level-3          Synonymous with -l 6 -b 4096 -r 4
  -4, --compression-level-4          Synonymous with -l 8 -b 4096 -M -r 4
  -5, --compression-level-5          Synonymous with -l 8 -b 4096 -m -r 5
                                     -5 is the default setting
  -6, --compression-level-6          Synonymous with -l 8 -b 4096 -m -r 6
                                        -A tukey(0.5) -A partial_tukey(2)
  -7, --compression-level-7          Synonymous with -l 12 -b 4096 -m -r 6
                                         -A tukey(0.5) -A partial_tukey(2)
  -8, --compression-level-8, --best  Synonymous with -l 12 -b 4096 -m -r 6
                    -A tukey(0.5) -A partial_tukey(2) -A punchout_tukey(3)
  -m, --mid-side                     Try mid-side coding for each frame
                                     (stereo only)
  -M, --adaptive-mid-side            Adaptive mid-side coding for all frames
                                     (stereo only)
  -e, --exhaustive-model-search      Do exhaustive model search (expensive!)
  -A, --apodization="function"       Window audio data with given the function.
                                     The functions are: bartlett, bartlett_hann,
                                     blackman, blackman_harris_4term_92db,
                                     connes, flattop, gauss(STDDEV), hamming,
                                     hann, kaiser_bessel, nuttall, rectangle,
                                     triangle, tukey(P), welch, partial_tukey(n),
                                     punchout_tukey(n). More than one may be
                                     specified but encoding time is a multiple of
                                     the number of functions since they are each
                                     tried in turn.  The encoder chooses suitable
                                     defaults in the absence of any -A options.
  -l, --max-lpc-order=#              Max LPC order; 0 => only fixed predictors.
                                     Must be <= 12 for Subset streams if sample
                                     rate is <=48kHz.
  -p, --qlp-coeff-precision-search   Do exhaustive search of LP coefficient
                                     quantization (expensive!); overrides -q;
                                     does nothing if using -l 0
  -q, --qlp-coeff-precision=#        Specify precision in bits of quantized
                                     linear-predictor coefficients; 0 => let
                                     encoder decide (the minimun is 5, the
                                     default is -q 0)
  -r, --rice-partition-order=[#,]#   Set [min,]max residual partition order
                                     (# is 0 to 15 inclusive; min defaults to 0;
                                     the default is -r 0; above 4 does not
                                     usually help much)
format options:
      --force-raw-format       Force input (when encoding) or output (when
                               decoding) to be treated as raw samples
      --force-aiff-format      Force the decoder to output AIFF format.  This
                               option is not needed if the output filename (as
                               set by -o) ends with .aif or .aiff; this option
                               has no effect when encoding since input AIFF is
                               auto-detected.
      --force-rf64-format      Force the decoder to output RF64 format.  This
                               option is not needed if the output filename (as
                               set by -o) ends with .rf64; this option
                               has no effect when encoding since input RF64 is
                               auto-detected.
      --force-wave64-format    Force the decoder to output Wave64 format.  This
                               option is not needed if the output filename (as
                               set by -o) ends with .w64; this option
                               has no effect when encoding since input Wave64 is
                               auto-detected.
raw format options:
      --endian={big|little}    Set byte order for samples
      --channels=#             Number of channels
      --bps=#                  Number of bits per sample
      --sample-rate=#          Sample rate in Hz
      --sign={signed|unsigned} Sign of samples (the default is signed)
      --input-size=#           Size of the raw input in bytes.  If you are
                               encoding raw samples from stdin, you must set
                               this option in order to be able to use --skip,
                               --until, --cuesheet, or other options that need
                               to know the size of the input beforehand.  If
                               the size given is greater than what is found in
                               the input stream, the encoder will complain
                               about an unexpected end-of-file.  If the size
                               given is less, samples will be truncated.
negative options:
      --no-adaptive-mid-side
      --no-cued-seekpoints
      --no-decode-through-errors
      --no-delete-input-file
      --no-preserve-modtime
      --no-keep-foreign-metadata
      --no-exhaustive-model-search
      --no-lax
      --no-mid-side
      --no-padding
      --no-qlp-coeff-prec-search
      --no-residual-gnuplot
      --no-residual-text
      --no-ignore-chunk-sizes
      --no-sector-align
      --no-seektable
      --no-silent
      --no-force
      --no-verify
      --no-warnings-as-errors
~~~

---

IMSM131_3990E0006800237F092F5B8EBAAB1F109B425221
