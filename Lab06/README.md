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

THIS SHOULD ALL BE REMOVED AND REPLACED WITH ONLY YOUR USAGE GUIDE TEXT

Examples of script usage and output. This should be enough info that  
you can hand this and the script to someone not in this course and they  
would be able to understand what your script does and how to use it.

Use good markdown so that this documentation is pretty and clean on GitHub.

### `.bash_aliases`
Describe your script in plain English, nothing too technical.  Think about this as describing what you made over the dinner table.

### `dotinstall`

Describe your script in plain English, nothing too technical.  Think about this as describing what you made over the dinner table.

### Examples

```
By using the triple quotes, you can enclose a block of code
And code blocks look very professional
```

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.  Generative AI may not write your script for you, only assist with component and how to type questions.
