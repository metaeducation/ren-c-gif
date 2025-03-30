# Minimalist GIF Decoder Extension

This implements a GIF decoder extension for Ren-C (no encoder).

It depends on having the IMAGE! extension either built into the interpreter,
or loaded dynamically.

It's minimal, but shows how to interoperate with the API and the IMAGE!
extension.  And it was a way of getting the %u-gif.c file out of core of
the interpreter.


### Likely origins of the decoder logic

It is based on code from R3-Alpha's implementation:

  https://github.com/rebol/rebol/blob/25033f897b2bd466068d7663563cd3ff64740b94/src/core/u-gif.c

While that lacks attribution, searching for fragments of the code on the web
found it bears strong similarity to an old version of ImageMagick's GIF
decoder.  The similar file is included in this repository as %historical/gif.c

Hence the following copyright is likely applicable to those portions:

    Copyright (C) 2003 GraphicsMagick Group
    Copyright (C) 2002 ImageMagick Studio
    Copyright 1991-1999 E. I. du Pont de Nemours and Company

Updating this extension to use a library that hasn't been forked from
ImageMagick--including possibly ImageMagick itself--would be desirable if
someone had the time or motivation to do that.  The current code presumably
contains lots of bugs, and on top of that has no encoder!
