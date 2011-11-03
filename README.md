# Chris' ConTeXt resume template

## Installing

You'll need to install a few things. Hopefully you're using an operating
system with a useful package manager that can do most of the work for you
since I have a feeling that manually installing ConTeXt is a bit of work.

Since I am using Arch Linux I will list Arch package names after each item.

- [ConTeXt](http://wiki.contextgarden.net/Main_Page) (`extra/texlive-core`,
  `extra/ruby` and `extra/ghostscript`, or possibly `aur/context-minimals-git`)
- make, if you want to use the Makefile (`core/make`)
- pdftk, if you want to use the Makefile (`aur/pdftk`; note that this can be
  a pain to install, even using ABS)
- Emacs, vi, or some other editor that understands TeX-like syntax (optional,
  but highly recommended)
- A copy of this repository

## Generating the sample files

Once you've got everything properly set up I recommend that you run

    make sample-resume

which will generate a file called `sample-resume.pdf`. This tests whether
ConTeXt is properly installed and gives you an idea of how your completed
resume will look.

For the time being there is only a single resume style, called "elegant". In
the future I hope to add more.

## Using the template

Copy `sample-resume.tex` to `resume.tex` and modify as required. To build the
resume PDF and see how your document looks, simply run

    make

and then refer to `elegant-resume.pdf`. Of course, this can be done many times.

## Building PDFs from ConTeXt source

The main command for building PDFs from ConTeXt source is
`texexec`. Typically, something like

    texexec source-file.tex

will be sufficient, and will generate a similarly named PDF like
`source-file.pdf`. The manpage for `texexec` is pretty good.

## ConTeXt syntax

Unfortunately, the documentation about ConTeXt itself is somewhat dated and
incomplete. I've found their mailing list archives to be helpful, as well as
the many sample PDF documents listed on the ConTeXt website.
