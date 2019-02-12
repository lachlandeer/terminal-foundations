## Wildcards

* Working with shell commands becomes powerful when you work with wildcards
* Wildcards are special characters that help you to rapidly specify groups of filenames
    - by matching one or more characters
* Four important wildcards are:
    * any character: `*`
    * any single character: `?`
    * any character that is a member of the set characters: `[characters]`
    * any character that is *not* a member of the set characters: `[!characters]`


## Wildcards Examples


| type       | results                                                                    |
|------------| ---------------------------------------------------------------------------|
| `*`          | all files                                                                |
| `g*`         | any file beginning with `g`                                                  |
| `b*.txt`     | Any file beginning with `b` followed by any characters and ending with `.txt`  |
| `Data???`    | Any file beginning with `Data` followed by exactly three characters          |
| `[abc]*`     | Any file beginning with either `a, b,` or `c`                                    |


## Exercise: Copying Structure, without files
You’re starting a new experiment, and would like to duplicate the file structure from your previous experiment without the data files so you can add new data.

\vspace{0.35cm}

Assume that the file structure is in a folder called ‘2016-05-18-data’, which contains a data folder that in turn contains folders named `raw` and `processed` that contain data files. The goal is to copy the file structure of the `2016-05-18-data` folder into a folder called `2016-05-20-data` and remove the data files from the directory you just created.

\vspace{0.35cm}

Which of the following set of commands would achieve this objective? What would the other commands do?

## Exercise: Copying Structure, without files (cont.)

Option One:
```bash
$ cp -r 2016-05-18-data/ 2016-05-20-data/
$ rm 2016-05-20-data/raw/*
$ rm 2016-05-20-data/processed/*
```
Option 2:
```bash
$ rm 2016-05-20-data/raw/*
$ rm 2016-05-20-data/processed/*
$ cp -r 2016-05-18-data/ 2016-5-20-data/
```
Option 3:
```bash
$ cp -r 2016-05-18-data/ 2016-05-20-data/
$ rm -r -i 2016-05-20-data/
```

<!-- ## Solution

1. \alert{Achieves this objective}. First we have a recursive copy of a data folder. Then two rm commands which remove all files in the specified directories. The shell expands the '*' wild card to match all files and subdirectories.
2. The second set of commands have the wrong order: attempting to delete files which haven't yet been copied, followed by the recursive copy command which would copy them.
3. \alert{Would achieve the objective, but in a time-consuming way}. The first command copies the directory recursively, but the second command deletes interactively, prompting for confirmation for each file and directory -->
