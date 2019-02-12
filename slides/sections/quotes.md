## Troubleshooting: spacing, double quotes "", and escaping characters

* consider `$ echo this is a      test`.
    * the Shell removes the extra whitespace
    * use `$ echo "this is a      test"`  


* consider `$ echo The total is $100`  
    * the Shell views $1 as a parameter and, by parameter expansion, substitutes an empty string
    * use `$ echo The total is \$100`
    * **NOTE**: the `\` backslash starts the so called escape sequence, e.g. for whitspace `\ `


## A note on quotes and expansion

* `$ echo text $USER has files in ~/* directory`
* `$ echo "text $USER has files in ~/* directory"`
* `$ echo 'text $USER has files in ~/* directory'`

* with each level of quoting, more and more expansion will be suppressed.

