# Git Course

A course in learning how to use the version control system [Git](http://git-scm.com/).

## Building the slides from source

First, clone the project repository and enter the `git_course` directory:

```shell
$ git clone https://github.com/paultcochrane/git_course.git
$ cd git_course
```

Install the required dependencies.  On a Debian-based system this looks
like:

```shell
$ sudo apt install texlive-latex-extra texlive-fonts-extra \
    texlive-fonts-recommended texlive-xetex texlive-luatex lmodern make latexmk
```

Then run `make` to build the course slides:

```shell
$ make
```
