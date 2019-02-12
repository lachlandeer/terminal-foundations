## Command structure and types

* **`$ command -options (or -–longoption) arguments`**
* `$ which [executable]`; determines the exact location of an executable

**Note**:

* a `whitespace` on the command line is an argument separator,
* a `-` starts options,
* a `--` starts longoptions.
* but it's in the programers freedom to violate this standard

## Starting and Exiting a program

Starting

* You can start programs in an interactive mode
* e.g. by typing `python`, you just started a python session
* Now you type python code, not shell code

Exiting

* It is therefore imporant to know how to exit a program.
* A program should tell you how, if not normally the following work:
    * The `exit command` for the program, e.g. `quit()` in python or R
    * Press `CTRL+C`
    * Press `CTRL+X`
    * Type `quit` or `q`

## ... Except for VIM

[VIM](https://stackoverflow.blog/2017/05/23/stack-overflow-helping-one-million-developers-exit-vim/):

* Press `ESC`, then type `:q!` (without saving) or `:x` (with saving)

# Hands on
