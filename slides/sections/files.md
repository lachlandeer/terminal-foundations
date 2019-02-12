# Files and Directories

## Before we get started...

* The part of the Operating System that handles files and directories is called the filesystem

* We differentiate between files which hold information and  directories (or folders) which hold files

* A handful of commands are used frequently to interact with these structures.


## Directory structure

* To understand what our home directory is, let's look at the directory structure

* Organized as a tree with the root directory / at the very top

* Everything else is contained in it

* / refers to the leading slash
    - in /Users/me (Mac and Linux)
    - /cygdrive (Windows with cygwin)


## Directory structure

Mac and Linux:

* Underneath `/Users` the data of user accounts on the machine is stored
    - E.g. `/Users/someusername`
* If we see `/Users/me`, we are inside `/Users`.
    - Similarly, `/Users` resides in the root `/`

Windows:

* Underneath `/cygdrive` you find the drives of your system (i.e, C, D, etc.)


## Listing Files in a Directory with `ls`

* list directory contents

```bash
$ ls [directory ...]
```
* some important options:
    * `-F` (for flag); distinguish directories ('/'), executables ('*'), symbolic links, etc.
    * `-a` (for all); include directory entries whose names begin with a dot (i.e., .git)
    * `-l` (for long); prints the output in the long format
    * `-h` (for human readable): prints filesize in KB, MB, GB, TB instead of #Bytes
    * `-d` (for directories): show directories only


## How can I change my working directory?

* to change your working directory

```bash
$ cd [directory]
```

* some shortcuts:
    * change to the current directory: `$ cd .`
    * change to the parent directory: `$ cd ..`
    * change to the home directory: `$ cd ~` or `cd  `
    * change to previous directory: `$ cd -`
    * tab completion (press TAB once, twice)

## A Little More on Those Shortcuts

These should work in combination with any command

* `.` : the current directory
* `..` : the parent directory
    - the one containing this one
* `~` : your home directory
* `-` : the previous directory

## Navigation & Whitespace

![](./figures/expanding-brain.jpg){ height="250px" }


## Exercise: relative path resolution
Using the filesystem diagram below, if `pwd` displays `/Users/thing`, what is the output of `ls -F ../backup`?

1. `../backup: No such file or directory`
2. `2012-12-01 2013-01-08 2013-01-27`
3. `2012-12-01/ 2013-01-08/ 2013-01-27/`
4. `original/ pnas_final/ pnas_sub/`


##

![Example Filesystem](figures/filesystem-challenge.pdf)

<!-- ## Solution

1. No: there is a directory backup in /Users.
2. No: this is the content of Users/thing/backup, but with .. we asked for one level further up.
3. No: see previous explanation.
4. \alert{Yes}: ../backup/ refers to /Users/backup/. -->

## Viewing Content of a File

* View the file in the shell

```bash
$ less [filename]
```

* to navigate in less:
	* `space`: jump a page
	* `b`: jump a page back
	* `/`: search and highlight string in file/manualpage
	* `q`: quit

* Print out the file into the shell

```{bash}
$ cat [filename]
$ tail [filename]
$ head [filename]
$ more [filename] # less is more more
```
