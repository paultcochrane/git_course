# Git Course

A course in learning how to use the version control system [Git](http://git-scm.com/).

## Building the slides from source

First, clone the project repository and enter the project directory:

```shell
$ git clone git@github.com:paultcochrane/git_course.git
$ cd git_course
```

Install the required dependencies.  On a Debian-based system this looks
like:

```shell
$ sudo apt install -y texlive-latex-extra latex-beamer texlive-lang-german \
    texlive-fonts-extra texlive-fonts-recommended texlive-xetex lmodern make
```

Then enter the `git` directory and run `make` to build the project:

```shell
$ cd git
$ make
```
