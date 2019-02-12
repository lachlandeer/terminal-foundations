## Wildcards

* Working with shell commands becomes powerful when you work with wildcards  
* Wildcards are special characters that help you to rapidly specify groups of filenames
* Four important wildcards are:
    * any character: `*`  
    * any single character: `?`    
    * any character that is a member of the set characters: `[characters]`    
    * any character that is *not* a member of the set characters: `[!characters]`    


## Wildcards Examples

* Here are some examples


| type       | results                                                                    |
|------------| ---------------------------------------------------------------------------|
| `*`          | all files                                                                |
| `g*`         | any file beginning with `g`                                                  |
| `b*.txt`     | Any file beginning with `b` followed by any characters and ending with `.txt`  |
| `Data???`    | Any file beginning with `Data` followed by exactly three characters          |
| `[abc]*`     | Any file beginning with either `a, b,` or `c`                                    |


## In action...

* In your home folder, create a new folder, create a .txt file, open the file using atom, type some stuff, save it, rename the file, delete the file.

* use wildcards to copy all .txt files from the exercise folder to your folder 

* rename some files, create some backups

* delete the folder you created
