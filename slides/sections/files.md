# Files and Directories

## Before we get started...

* the part of the Operating System that handles files and directories is called the filesystem

* We differentiate between files which hold information and  directories (or folders) which hold files

* A handful of commands are used frequently to interact with these structures. You will know them by the end of the lecture


## Basic Bash

* The dollar sign stands for a prompt waiting for input

```{bash}
$
```
* Type `whoami` and press Enter to see how the current user is named

```{bash}
$ whoami
```

## Basic Bash

* When type `whoami` the shell finds the program

* The program is run

* The output of the program is shown

* A new prompt is displayed, indicating that it's ready for new commands


## Basic Bash

* To know where in the filesytem you are type `pwd` (print working directory)

```{bash}
$ pwd
```

## Directory structure

* To understand what our home directory is, let's look at the directory structure

* It is organized as a tree with the root directory / at the very top

* Everything else is contained in it

* / refers to the leading slash in /Users/me (Mac and Linux) or /cygdrive (Windows with cygwin)


## Directory structure

Mac and Linux:

* Underneath /Users the data of the other user accounts on the machine is stored

* E.g. /Users/someusername

* If we see /Users/me, we are inside /Users because of the first part of its name. Similarly, /Users resides in the root /

Windows:

* Underneath /cygdrive you find the drives of your system (i.e, C, D, etc.)


## What files are in the directory?

* list directory contents

```{bash}
$ ls [directory ...]
```
* important options:
    * `-F` (for flag); distinguish directories ('/'), executables ('*'), symbolic links, etc.  
    * `-a` (for all); include directory entries whose names begin with a dot (i.e., .git)
    * `-l` (for long); prints the output in the long format  
    * `-h` (for human readable): prints filesize in KB, MB, GB, TB instead of #Bytes
    * `-d` (for directories): show directories only


## How can I change my working directory?

* to change your working directory

```{bash}
$ cd [directory]
```

* some shortcuts:
    * change to the current directory: `$ cd .`   
    * change to the parent directory: `$ cd ..`   
    * change to the home directory: `$ cd ~` | `cd  `  
    * change to previous directory: `$ cd -`   
    * tab completion (press TAB once, twice, ALT+*)

## How can I view the content of a file?

* View the file in the shell

```{bash}
$ less [filename]
```
**NOTE**: `man` uses `less` to show the manual page

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

## In action...

* Navigate to your home directory

* list the files in your home directory

* go to Nelle's Data, read some of her .txt files

* read the haiku.txt file in Nelle's writing folder
