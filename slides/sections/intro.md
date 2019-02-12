# What is the Shell?

##

> **\alert{A program that accepts text based instructions to produce one or more outputs}**


## What Computers do

At a high level, computers do four things:

- run programs
- store data
- communicate with each other
- interact with us



## The Shell Runs Programs

The shell is a **comand line interface (CLI)**

* offers a way to interact with the computer via text
* is a program like any other but it's main job is to run other programs

*
It works in a **read-evaluate-print loop (REPL)**.

* When you type a command and press `Return`,
    1. The shell **reads** your command
    2. The shell **evaluates** what it means and executes it
    3. The shell **prints** the output of the command


## Some Definitions


Don't be thrown off by terminology:

- The "shell", "terminal", "tty", "command prompt", etc.
- These are essentially different names for the same thing.
- They are all referring to a *command line interface* (CLI).

There are many shell variants, but we're going to focus on [**Bash**](https://www.gnu.org/software/bash/)

- i.e. **B**ourne **a**gain **sh**ell.
- Default shell on Linux and MacOS.
- Windows users should have Cygwin which emulates the behaviour of a Bash shell


##  Why bother with the shell?

* Power
    - Both for executing commands and for fixing problems. There are some things you just can't do in an IDE or GUI.
* Reproducibility
    - Scripting is reproducible, while clicking is not.

##  Why bother with the shell?

* Interacting with servers and super computers
    - The shell is often the only game in town for high performance computing. We'll get to this later in the course.
* Automating workflow and analysis pipelines
    - Easily track and reproduce an entire project (e.g. use a Makefile to combine multiple programs, scripts, etc.)
