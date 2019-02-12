## A note on naming files

* consider the file *two words.txt*. If you use this on the command line, the shell will treat this as two separate arguments

```{bash}
$ ls -l two words.txt
```

* use double quotes to suppress word splitting.   

```{bash}
$ ls -l "two words.txt"
```

* best practice:

```{bash}
$ mv "two words.txt" two_words.txt
```  

