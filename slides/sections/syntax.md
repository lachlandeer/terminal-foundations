# Getting Started

## Opening the Shell

Open up your Bash shell.


* [Linux](https://www.wikihow.com/Open-a-Terminal-Window-in-Ubuntu)
* [Mac](https://www.techwalla.com/articles/how-to-open-terminal-on-a-macbook)
* Windows

## First Look

You should see something like:
```bash
 username@hostname:~$
```

This is shell-speak for: "Who am I and where am I?"

- `username` denotes a specific user (one of potentially many on this computer).
- `@hostname` denotes the name of the computer or server.
- `:~` denotes the directory path (where `~` signifies the user's home directory).
- `$` denotes the start of the command prompt.

## Syntax

```bash
$ command -option(s) (or -–longoption(s)) arguments
```

* a `whitespace` on the command line is an argument separator,
* a `-` starts options,
* a `--` starts longoptions.
* ... but it's in the programers freedom to violate this standard

## Basic Bash

* The dollar sign stands for a prompt waiting for input

```bash
$
```
* Type `whoami` and press Enter to return name of current user

```bash
$ whoami
```

## Basic Bash

* When type `whoami`:
    1. Shell finds the program
    2. The program is run
    3. The output of the program is shown
    4. A new prompt is displayed, indicating that it's ready for new commands
