# Git in detail

A deep-dive example-based introduction to using the version control system
[Git](http://git-scm.com/).

## Course structure

The course is broken into different parts:

  - Git overview, background and setup: an introduction to Git, its history
    and how to set up a basic Git repository.
  - Using Git on your own: the fundamentals of Git usage, without needing an
    online Git platform.
  - Using Git with others: working with others across the internet and
    some advanced Git topics.
  - Tips and tricks: a collection of useful tips for solving various
    Git-related problems and questions.

## Building the slides from source

First, clone the project repository and enter the `git_course` directory:

```shell
$ git clone https://github.com/paultcochrane/git_course.git
$ cd git_course
```

Install the required dependencies.  On a Debian-based system this looks
like:

```shell
$ sudo apt install -y make latexmk texlive-latex-extra texlive-fonts-extra texlive-luatex python3-pygments
```

Then run `make` to build the course slides:

```shell
$ make
```
