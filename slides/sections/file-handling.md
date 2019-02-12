# Creating Stuff

## The Atom editor

What you should have got from the installation guide:

* download Atom

* the command palette: `CMD+SHIFT+P`


## Add `atom` command to the shell (Mac and Linux)

* run `atom --help`

* enter the following commands to make Atom your default editor:

```{bash}
$ export EDITOR='atom -w
$ export TEXEDIT='atom'
$ alias atom="atom --new-window"
```

* those settings will only be active for the current session. If you want to make them persistent, you can copy those terms into your `.bash_profile` in your home directory



## Create a new file

```{bash}
$ touch [filename]
$ touch myproject/data.txt
```


## Remove a file or a directory

```{bash}
$ rm [filename | directory]
```

* there is **no undelete**  

* important options  
    * `-i` (for interactive); request confirmation before removing  
    * `-v` (for verbose); show files which are being removed  
    * `-r` (for recursive); required for directories; attempt to remove the file hierarchy rooted in each file argument  

* Exmaples:
```{bash}
$ rm somefile.txt
$ rm some-subfolder/somefile.txt
$ rm -r some-directory/
```


## Create or remove an empty directory

```{bash}
$ mkdir [directory] | rmdir [directory]
```




## Copy file, or copy files to directory

```{bash}
$ cp [source file ...] [target file | target directory]
```

* important options
    * `-i` ; ask for permission before overwriting
    * `-r` ; required for directories
    * `-u` (for update); copy files that don't exist or are modified than in the existing directory
    * `-v` ; display messages

* Examples:

```{bash}
$ cp somefile.txt ../some-other-directory/samename.txt
```


## Rename files and directories, or move files to directory

```{bash}
$ mv [filename ...] [target file | target directory]
```

* important options
    * `-i` ; ask for permission before overwriting
    * `-v` ; display messages

* Examples:
```{bash}
$ mv somefile.txt someothername.txt
$ mv data.{csv,backup}
```
