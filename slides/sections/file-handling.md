# Creating and Moving Files

## Create a New File

```bash
$ touch [filename(s)]
```

## Create a New Directory

```bash
$ mkdir [directory]
```

or

```bash
$ mkdir -p [directory]
```

## Remove a file

```bash
$ rm [filename(s)]
```

* there is **no undelete**

* important options
    * `-i` (for interactive); request confirmation before removing
    * `-v` (for verbose); show files which are being removed
    * `-r` (for recursive); required for directories; attempt to remove the file hierarchy rooted in each file argument


## Remove an Empty Directory

```bash
$ rmdir [directory]
```

## Exercise: Creating and Destroying

Perform the following tasks:

1. Create a new directory called `my_data`
2. Create 100 empty files `[number].dat` inside `my_data`
3. Create the subdirectory `new_data/2019-02` inside `my_data`
2. Create 20 empty files `[number].dat` inside `new_data/2019-02`
3. Remove the directory `2019-02` and all files

## Copy file(s) to directory

```bash
$ cp [source file(s) ...] [target file | target directory]
```

* important options:
    * `-i` ; ask for permission before overwriting
    * `-r` ; required for directories
    * `-u` (for update); copy files that don't exist or are modified than in the existing directory
    * `-v` ; display messages


## Rename and moving files and directories

```bash
$ mv [filename ...] [target file | target directory]
```

* important options
    * `-i` ; ask for permission before overwriting
    * `-v` ; display messages


## Exercise

You are expecting a bunch of new data files that will need to be added to `my_data`.
Like the current contents, the are numbered numerically.
Perform two steps:

1. Create a back up of the data in a directory called `my_backup`
2. Move the data to a subdirectory `my_data/2018`
