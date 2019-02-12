# Redirections, Pipes, and Filters

## I/O redirections

* Most programs read your input, execute it, and print output
* We call the input facility *standard input*
    - By default is your keyboard
* Our programs send their results to a special file called *standard output*
    - By default is print to the screen and not saved into the hard disk

* I/O redirection allows us to redefine where standard output goes.
    - Typically two choices
        1. Into a new file (or overwrite)
        2. Appended to an existing file

## Redirection to a new file


* Redirect the output to a file instead of to the screen

```bash
$ ls -l [directory] > [filename]
```

* Overwrites `[filename]` in the process

## Redirection by appending to a file

* Redirect the output to a file by appending instead of overwriting

```{bash}
$ ls -l [directory] >> [filename]
```

## Exercise

Consider our file `data-shell/data/animals.txt`.
After these commands:

```bash
$ head -n 3 animals.txt > animalsUpd.txt
$ tail -n 2 animals.txt >> animalsUpd.txt
```

What text is conatined in `animalsUpd.txt`?

<!-- ## Solution

The first three lines and the last two lines of `animals.txt` -->

## Example: Read all tables into one file

```bash
$ cat table0* > table.txt
```


## Pipelines

* The standard output of one command can be *piped* into the standard input of another using the pipe operator `|`

* The general structure is

```{bash}
$ command | command
```

* For example,

```{bash}
$ ls -l Data | less
$ history | grep cp
```

* Pipes allow you to do complex data manipulations in one line, the pipeline


## Filters

* When working with pipelines, it is often useful to use filters
* Filters take input, change it somehow, and then output it
* Some useful filters are the following:
    * `$ sort`
    * `$ uniq`
    * `$ wc`
    * `$ head` and `$ tail`


## sort

* sort lines of text files and writes to standard output; it does not change the file

```{bash}
$ sort [filename]
```

* some options:
    * `-f` (for fold); fold lower case to upper case characters
    * `-n` (for numerical); compare according to string numerical value
    * `-r` ; reverse the result of comparisons


## uniq

* report or filter out repeated lines in a file

```{bash}
$ uniq [input file] [ouput file]
```

* often used with `sort`

```{bash}
$ ls file1 data/file2  | sort | uniq | less
```

	* `-d` (for duplicates); print list of duplicates


## wc

```{bash}
$ wc [file] ...
```

* count number of words, lines, characters, and bytes count
    * `-w`: words
    * `-l`: lines
    * `-m`: characters

* example:

```{bash}
ls file1 data/file2 | sort | uniq | wc -l > lines.txt
```


## head and tail

* print first / last part of files; by default 10 lines

```{bash}
$ head [file ...]
```
and
```{bash}
$ tail [file ...]
```

* `-n [count]`; determines the number of lines you want to print
* `-f [follow]`; display the file and update if the files get updated


## In action...

* Make a subdirectory, navigate to it, copy the data .txt files from Nelle's Data into it.

* Create a file that contains the line counts of planets.txt

* how many unique salmons are in the salmon.txt file
