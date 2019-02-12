## print out the the argument on standard output  

```{bash}
$ echo
```

* print out hello world
```{bash}
$ echo hello world
```  

* pathname expansion; print any file in the working directory
```{bash}
$ echo *
```

* print all hidden files
```{bash}
$ echo .*
```

* parameter expansion; print the variable `USER`
```{bash}
$ echo $USER
```

* command substitution; print the output of `ls`
```{bash}
$ echo $(ls)
```
