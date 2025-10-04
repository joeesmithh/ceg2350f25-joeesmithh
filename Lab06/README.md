## Lab 06

- Name: Joseph Smith
- Email: smith.3289@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab06/Instructions.html

## Part 1 - bash aliases

It is important that the following is added to or exists in the user's `.bashrc` file
```bash
# section related to `.bash_aliases` found in `.bashrc`
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

What this section does:
> This .bashrc field first checks if .bash_aliases exists, and if it does it sources and executes all of commands in the file with either a new Bash shell session or when the `source` command is run on .bashrc.

Make sure you copied your `.bash_aliases` file to your GitHub repository.

## Part 2 - Dot Install Script

Nothing to write here, just a reminder to make sure your `dotinstall` script is in 
your GitHub repository

## Part 3 - Retrospective

1. **getopts** is a powerful way to evaluate options passed to your script, allowing one to validate whether an argument was coupled with the option or if an unsupported option was passed.
2. One part I got stuck on was the regex pattern used to validate the user's alias declaration string. I ended up having to use `[[:space:]]` and `[[:alnum:]]` in certain portions of the pattern, even though `\s`, `' '`, and `\w` worked fine in *regex101*.
3. The feature I would most like to add is allowing the user to simply provide an alias name as an argument and then the alias command for the second argument rather than relying on them to provide a correctly formatted alias declaration string.

## Part 4 - `dotinstall` Usage Guide

### Usage
---
`bash dotinstall [-OPTION] [ARG]`

### Options
---
Specifies which action to perform on a *.bash_aliases* file in the same directory as this script.

   |Option|Description|
   |-----|-----|
   |`-h`|Output usage guide to console|
   |`-s`|Create a symbolic link in user's home directory to a *.bash_aliases* file in the same directory as this script|
   |`-d`|Removes the symbolic link in user's home directory to a *.bash_aliases* file in the same directory as this script|
   |`-a [ARG]`|Adds **ARG** of form `alias [name]="[command]"` to *.bash_aliases* file in the same directory as this script if an alias of the same name is not already present|
   |`-r [ARG]`|If present, removes **ARG** of form `alias [name]="[command]"` from *.bash_aliases* file in the same directory as this script|

### `.bash_aliases`
***.bash_aliases*** is traditionally a file in the user's home directory which contains lines of form `alias [name]=[command]`, where sourcing `~/.bashrc` or starting a new bash terminal session will enable the aliases and allow user's of the bash terminal to simply type **name** to run **command**. With ***dotinstall***, the user can manipulate their portable ***.bash_aliases*** file from within the script folder and see their changes applied system-wide.

### `dotinstall`
The ***dotinstall*** script allows users to perform actions on a ***.bash_aliases*** file within the same directory as ***dotinstall***, such as enabling its visibility to the bash terminal by creating a symbolic link to it in the user's home directory, and adding aliases to the file which can be used to run complex commands with a single word. With this functionality, the user is spared the complicated process of adding aliases to their .bashrc file, making their alias definitions modular and portable.

### Examples

---

- `-h` usage example:
   ```
	$ bash dotinstall -h
	  Usage: dotinstall [-OPTION] [ARG]
  	  -s setup - attempts to create a symbolic link .bash_aliases file to users home directory
  	  -d disconnect - removes symbolic link
	  -a append - adds a new alias to .bash_aliases file
	  -r remove - removes an alias from .bash_aliases file
   ```

- `-s` usage example:
   ```
   $ bash dotinstall -s
     Created symlink /home/joeesmithh/.bash_aliases
     User should reload the shell with 'source ~/.bashrc'
   --------------------------------------------------------------
   $ bash dotinstall -s
     .bash_aliases already exists! Overwrite? Input (Y/N): y
     Removed symlink /home/joeesmithh/.bash_aliases
     Created symlink /home/joeesmithh/.bash_aliases
     User should reload the shell with 'source ~/.bashrc'
   ```

- `-d` usage example:
   ```
   $ bash dotinstall -d
     Removed symlink /home/joeesmithh/.bash_aliases
     User should reload the shell with 'unalias -a' then 'source ~/.bashrc'
   ```

- `-a [ARG]` usage example:
   ```
   $ bash dotinstall -a 'alias h="echo \"Hello there!\""'
     Alias "h" added to .bash_aliases!
     User should reload the shell with 'source ~/.bashrc'
   $ source ~/.bashrc
   $ h
   $ Hello there!
   --------------------------------------------------------------
   $ bash dotinstall -a 'alias h="echo \"Hello there!\""'
     Alias "h" is already in .bash_aliases!
   --------------------------------------------------------------
   $ bash dotinstall -a 'alias hi =echo Hi!'
     Invalid alias declaration of form "alias [name]="[command]"
   ```

- `r [ARG]` usage example:
   ```
   $ bash dotinstall -r h
     Alias "h" removed from .bash_aliases!
     User should reload the shell with 'unalias -a' then 'source ~/.bashrc'
   $ unalias -a
   $ source ~/.bashrc
   $ h
   $ h: command not found
   --------------------------------------------------------------
   $ bash dotinstall -r h
     Alias "h" not found in .bash_aliases!
   ```

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.  Generative AI may not write your script for you, only assist with component and how to type questions.
