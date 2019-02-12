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

* So far: redirecting to file
* Can also redirect to be (the first) argument of next command
    - called *piping*
    - uses the `pipe operator`, `|`

* The general structure is

```bash
$ command arguments | command
```

* Pipes allow you to do complex data manipulations in one line, the pipeline

## Piping Examples

* Example 1:
```bash
$ ls -l Data | less
```

* Example 2:
```bash
$ history | grep cp
```

## Filters

* Filters take input, change it somehow, and then output it
    - Change is normally by reducing content to a summary form
* Some useful filters are the following:
    * `$ sort`
    * `$ uniq`
    * `$ wc`
    * `$ head` and `$ tail`


## `sort`

* Sort lines of text files and writes to standard output; it does not change the file

```bash
$ sort [filename]
```

* some options:
    * `-f` (for fold); fold lower case to upper case characters
    * `-n` (for numerical); compare according to string numerical value
    * `-r` ; reverse the result of comparisons


## `uniq`

* Report or filter out repeated lines in a file

```{bash}
$ uniq [input file] [ouput file]
```

* often used with `sort`
* useful option
	* `-d` (for duplicates); print list of duplicates

## Piping with Filters - Example

Explain what the the following code does:

```bash
$ cat table*.dat  | sort -n | uniq | less
```

## `wc`

* Count number of words, lines, characters, and bytes count

```{bash}
$ wc [file]
```

* can restrict count to certain fields using
    * `-w`: words
    * `-l`: lines
    * `-m`: characters

## Pipes and Filters Example 2:

Explain what the the following code does:

```bash
$ cat table*.dat  | sort -n | uniq | wc -l > lines.txt
```

## Exercise: Which pipe?
The file `animals.txt` contains 586 lines of data formatted as follows:
```bash
2012-11-05,deer
2012-11-05,rabbit
2012-11-05,raccoon
2012-11-06,rabbit
...
```

##

Assuming your current directory is `data-shell/data/`, what command would you use to produce a table that shows the total count of each type of animal in the file?

1. `grep {deer, rabbit, raccoon, deer, fox, bear} animals.txt | wc -l`
2. `sort animals.txt | uniq -c`
3. `sort -t, -k2,2 animals.txt | uniq -c`
4. `cut -d, -f 2 animals.txt | uniq -c`
5. `cut -d, -f 2 animals.txt | sort | uniq -c`
6. `cut -d, -f 2 animals.txt | sort | uniq -c | wc -l`

<!-- ## Solution

Option 5. is the correct answer.

\vspace{0.35cm}

If you have difficulty understanding why, try running the commands, or sub-sections of the pipelines (make sure you are in the `data-shell/data` directory). -->
