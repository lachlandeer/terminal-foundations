# Bash Cheat Sheet
by Lachlan, Adrian, Julian and Max

Department of Economics, Univeristy of Zurich

## About Filenames:

---                       ---
Toplevel directory:       `/`
Current directory:        `.`
Parent directory:         `..`
Home directory:           `~`
Previous directory:       `-`
---                       ---

---

## cd
* `cd`      change working directory. Without options: go to home directory
* `cd dir`  change into dir
* `cd .. `  change to parent

___

## ls
* `ls`    list contents of current directory
* `ls dir`    list contents of dir
* `ls -l`   list in long format
* `ls -a`   list all files
* `ls -R`   recursively list files in subdirectories
* `ls -d`   don't go into subdirectories, just list them
* `ls -S`   list by size
* `ls -t`   list by modification date

___

## manpage aka rtfm
* `man cmd` get help for command cmd

---

## create / manipulate timestamp
* `touch f` if f exists: update modification date. Otherwise create a new empty file f

---

## copy
* `cp` copies files
* `cp a b` copy file a to b
* `cp a b c dir/` copy files abc into `dir/`
* `cp -R old new` recursively copies directory old into new
* `cp -i a b` ask before overwriting files

---

## move
* `mv` moves files
* `mv a b` move file a to b
* `mv a b cdir/` move files abc into `dir/`
* `mv -i a b` ask before overwriting files
* `rm` removes files
* `mv a` remove file a
* `rm -r dir/`recursively delete directory dir and all its contents
* `rm -i a` ask before removing files

---

## create / delete direcotries
* `mkdir d` create directory d
* `rmdir d` remove directory d (only works on empty directories)

---

## check file content
* `cat f` write f to screen
* `less f` display contents of f, with paging, keys: space for next page, b goes up, q for exit, I to search
* `open f` open file with associated program (Mac OS only)

---

## reset
* `reset`  terminal if messed up by eg binary output

---

## wildcards
are replaced by bash by matching filenames

* `*` matches any string
    - `*txt` matches all .txt files
    - `a*` matches all files starting with a
* `?`   matches a single character
    - `doc_v?.txt` matches doc_vl.txt, doc_v2,txt, doc_va.txt etc.
* `[ac5]` matches one of a, c, or 5
* `[a-z]` matches a lowercase letter
* `[a-zA-Z]` matches any letter
* `[0-9]` matches any digit
* `(^A0-9)` carets inverts meaning: this matches any character that is not a digit

---

## braces
use this to generate strings

* `c{a,u}t` expanded to `cat cut`
* `c{1..4}t` range: expanded to `clt c2t c3t c4t`

**Tip:** use the `echo` command to try out wildcards/braces.

---

## output redirection
send output to a file

* `>` overwrite
* `>>` append
* `ld > f` saves output to file f. If it exists, f will be overwritten
* `ls >> f ` appends output to file f.

---

## input redirection
get input from file

* `grep x < file` equivalent to `grep x file`
* `tr a b < old> new` get the input for tr from file `old` and save output to `new`

        - this is necessary because tr does not accept a filename argument.

---

## pipe
redirect output from one program to input of another program

* `ls | grep hello` puts output of ls through grep

---

## command substitution
put output of command on command line ()

* `cat $($Is -rt I tail -n 1)` The part in braces outputs the filename of the last modified file.

        - cat will get that filename as its argument

---

## command chaining
* `;` put multiple commands on a single line
* `&&` chain on success
* `||` chain on error

* `touch a; ls` first run `touch`, then `ls`
* `pandoc cheatsheet.md -s -o cheatsheet.pdf  && open cheatsheet.pdf` if `pandoc` ran smoothly it will open the pdf

---

## Keys

+-------------------+------------------+----------+-------------------------------+
| Key               | Description      | Key      | Description                   |
+==========+========================+==========+==================================+
| `Ctrl+L`          | Clear Screen     | `Ctrl+A` | Jump to the beginning of line |
+-------------------+------------------+----------+-------------------------------+
| `Ctrl+C`          | End process      | `Ctrl+E` | Jump to the end of line       |
+-------------------+------------------+----------+-------------------------------+
| `Ctrl+Z`          | Suspend process  | `Ctrl+XX`| Toggle between the start of line and current cursor position |
+-------------------+------------------+----------+-------------------------------+
| `Up` or `Ctrl+P`  | History back     | `Ctrl+K` | Cut to the right              |
+-------------------+------------------+----------+-------------------------------+
| `Down` or `Ctrl+N`| History forward  | `Ctrl+U` | Cut to the left               |
+-------------------+------------------+----------+-------------------------------+
| `Ctrl+R`          | Search history   | `Ctrl+W` | Cut word to the left          |
+-------------------+------------------+------------------------------------------+
| `Ctrl+_`          | Step back, undo  | `Ctrl+Y` | Past the last cut             |
+-------------------+------------------+------------------------------------------+

---

## sort
sort input, without argument sorts alphabetically

* `sort -n`; sort numerically
* `sort -r`; reverse sort
* `sort -k2`; sort by second column
* `sort -k2 -t,`; sort by second column, and set delimiter to `,`. Usefull vor csv

---

## uniq
only shows unique elements of a list

* `uniq -c` print count of repetitions

---

## grep
search text

* `grep somestring file`; prints every line in file `file` containing string `somestring`
* `grep somestring *`; prints every line in all files matching `*` in the current directory containing string `somestring`
* `grep -i file` case-insensitive search
* `grep -c file` print number of matching lines
* `grep -v file` invert meaning of search: will filter out matching lines
* `grep -l file` only list files containing string => less time consuming
* `grep -n file` precede matching line with line number
* `grep 'my string' -r path` Recursively search files in `path` for string `my string`

---

## head and tail
print either the first few or the last few lines of a file

* `head myfile.csv`; print the first 10 lines of file `myfile.csv`
* `head -n 5 myfile.csv`; print the first 5 lines of file `myfile.csv`
* `tail myfile.csv`; print the last 10 lines of file `myfile.csv`
* `tail -n 15 myfile.csv`; print the last 15 lines of file `myfile.csv`
* `tail -f myfile.csv`; print the last 10 lines of file `myfile.csv` and append new lines if lines get appended

---

## find
find files and folder

* `find path`; lists all files in all subdirectories of `path`
* `find . -name "*.txt"`; finds all `.txt` files under the current directory
* `find path -name "*.txt" -mtime -60s -a -mtime -120s`; find all `.txt` files in the folder `path` that are older than 60 seconds but newer then 120 seconds

---

### Example: find file that changed during an action
Shows all changed things which are newer then the created timestamp in the tmp folder.

```
touch /tmp/timestamp
*do stuff*
find /path/to/search/for/changes -newer /tmp/timestamp
```

---

## stream editor
read a file, do changes and print it to the standard output

* sed `'s/Glacier/Lake/n' lakes.txt`; changes all occurrences of `Glacier` in file `lakes.txt` to `Lake`
