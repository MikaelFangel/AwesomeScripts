# AwesomeScripts
This repository contains different bash scripts that solve specific tasks on Linux-based systems. They are only tested on Linux with bash, but feel free to share experiences from other systems running bash.
Scripts will be added when I have some spare time to develop more. 

## rmosxf.sh
The script removes MAC OS X specific files on your system, which for now is the MACOSX folder and the DS\_STORE files.  
It should not be possible to run the script on MAC OS X, but this feature has not been tested, and it should therefore never be run on MAC OS X as it will probably remove important files on the system. 

### Usage:  
 - p lets you define the command for where the search should start  
 - n runs the script in a dry-run mode only showing what will be removed  
 - h shows a short help manual  

The above flags can be used in combination with one and another.  

## compresspdf.sh
Sensible defaults for compressing pdfs with large images.

### Usage:
```
compresspdf.sh input.pdf      # Returns the compress pdf as out.pdf
```

### Dependencies:
 - ghostscript

## git-polite
A git sub-command that helps to create detailed commits where you properly acknowledge co-authors who have been a part of this commit.

### Installation:
Place the script file in you $PATH and then git will find it and add it as a subcommand.

The script looks for at file containing your commonly used co-authors. It looks for a file called .gitco_suspects in the ~ directory and also looks for a file called .suspects in your current working directory. The contents of the two files are sorted and duplicates are removed.

### Usage:
```
git polite                    # Runs commit in iterative mode
git polite -a                 # Adds all just a git commit -a
git polite -am "my message"   # Adds all and a summary and then only asks for co-authors
git polite -m "my message"    # Adds only a summary but skips adding all
```
 -  Be aware the only way to omit adding co-authors is to hit CTRL-C when at the selection screen.

### Dependencies:
 - [gum](https://github.com/charmbracelet/gum)
 - git
 
### Why:
Because it is annoyingly difficult to add co-authors with git commandline.

## Contribution  
Feel free to contribute, submit issues and pull requests.
