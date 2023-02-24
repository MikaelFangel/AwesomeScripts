# AwesomeScripts
This repository contain different bash scripts that solves specific task on Linux based system. They are only tested on Linux.  
Scripts will be added when I have some spare time to develop more.  

## rmosxf.sh
The script removes MAC OS X specific files on your system, which for now is the MACOSX folder and the DS\_Store files.  
It should not be possible to run the script on MAC OS X, but this feature have not been tested and it should therefore never be run on MAC OS X as it will probably remove important files on the system.  

### Usage:  
 - p lets you define the command for where the search should start  
 - n runs the script in a dry-run mode only showing what will be removed  
 - h shows a short help manual  

The above flags can be used in combination with one an another.  

## gitpolite.sh
### ⚠️ WARNING ⚠️
This is still being worked on and is therefore subject to change!

### Description:
This script helps to create detailed commits where you properly acknowledge co-authors who have been a part of this commit.

### Installation:
I currently suggest that you create an alias for the bash script.
```
alias git="/path/to/gitpolite.sh"
```

The script looks for at file containing your commonly used co-authors. It looks for a file called .gitco_suspects in the ~ directory and also looks for a file called .suspects in your current working directory. The contents of the two files is sort and duplicates are removed.

### Usage:
```
git polite
```
 -  Be aware the only way to omit adding co-authors is to hit CTRL-C when at the selection screen.

### Dependencies:
 - [gum](https://github.com/charmbracelet/gum)
 - git
 
### Why:
Because it is annoyingly difficult to add co-authors with git commandline.

## Contribution  
Feel free to contribute, submit issues and pull requests.
