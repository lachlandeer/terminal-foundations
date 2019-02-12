# Shell Scripts

## Writing and running a bash script

* write your script in the atom editor, selecting the shell syntax, or start an editor from the shell:

```{bash}
$ atom somescript.sh
```

* start with the "shebang"

```{bash}
#!/usr/bin/env bash
```

* run the script

```{bash}
$ bash somescript.sh
```

* to check the content

```{bash}
$ cat somescript.sh
```

## Some notation: `$1`, `$@`, and `#`

* when the script contains `$1`, then `$ bash somescript.sh file.txt` will use the first file or parameter on the command line

* when the script contains `$@`, then `$ bash somescript.sh *.txt` will be use all files or parameters on the command line

* do your future self a favour, comment your script using `#`


## Write a useful script...

... that automates a tedious task for you.

* for example, write a shell script that creates a backup of Nelle's folder
