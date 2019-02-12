# What is it?

* What is the shell?
* Why should you learn it?
* General stuff

##

![The Matrix](./figures/matrix.jpeg){ width=250px }

![Mr Robot](./figures/mr-robot.png){ width=250px }

## Background

At a high level, computers do four things:

- run programs
- store data
- communicate with each other
- interact with us

## Shell:

The shell is a **comand line interface (CLI)**

* offers a way to interact with the computer via text
* is a program like any other but it's main job is to run other programs
* The most popular Unix shell is bash (Bourne Again SHell).
*
It works in a **read-evaluate-print loop (REPL)**.

* When you type a command and press `Return`,
    1. The shell **reads** your command
    2. The shell **evaluates** what it means and executes it
    3. The shell **prints** the output of the command


## Why should you learn it?

Many programs and tools do not have a graphical interface. You run them via a shell command, e.g.

* apt-get / homebrew to quickly install software
* snakemake to automatically run a whole research project

Reproducing the first stages of a project (moving files / data by hand) is very hard

* The shell allows us to document the exact order in which every step was taken
* This is especially useful for public / messy data to make your work reproducible


## Why should you learn it? \#2

The command line is often the easiest way to interact with
	remote machines

* Allows you to execute projects in the cloud

The shell is very powerful

* allows you to combine existing tools with only a few keystrokes
* to set up pipelines
* to handle large volumes of data automatically

## For Windows users

Shells of most Unix derivatives (Linux, OS X) are fairly similar and the basic tools are available

* Linux users just press `Crtl + Alt + T`
* Mac Users press `Cmd + Space` and start typing `terminal`

The Windows shell differs considerably from this

* Download cygwin to use the functionality and the commands of the Linux shell (see the installation guide)
