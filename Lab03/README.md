## Lab 03

- Name:
- Email: 

## Part 1 - git Guide

| git command         | Description |
| ---                 | ---         | 
| `git clone repo_URI`|     Clones an existing github repository as a directory within the current directory, automatically initializing a remote `origin` branch to `main`.       |
| `git status`        |     Outputs to the console files with unstaged changes in red and files with staged changes in green.       |
| `git add filename`  |     Adds `filename` to the staging area, i.e., prepares the file to be committed.        |
| `git commit`        |     Opens globally configurated text editor to create a commit message. When editor is closed, commits(saves) all files in the staging area to commit history.        |
| `git push`          |     Syncs the local branch and all its commits to the default remote branch on github. In our case, `origin`(remote) `main`(branch).        |
| `git pull`          |     Syncs the default remote branch to the local branch. If the commit history doesn't match, we might have to address merge conflicts and create a merge commit. |

## Part 2 - clone

1. Command to generate an SSH key with ed25519:
    ```bash
    ssh-keygen -t ed25519 -C "josmth3030@gmail.com"
    ```
2. Command(s) to read & copy text of the *public* key:
    ```bash
    cat ~/.ssh/id_ed25519.pub #or, install xclip with sudo apt install xclip
    xclip -selection clipboard ~/.ssh/id_ed25519.pub # copies the contents of the key file to the clipboard
    ```
3. Summary of steps to place *public* key in user profile:
    <ol>
        <li>Copy contents of public key file in terminal using <code>cat ~/.ssh/id_ed25519.pub</code> or <code>xclip -selection clipboard ~/.ssh/id_ed25519</code></li>
        <li>Open github.com and click profile icon in top right, click <code>Settings</code></li>
        <li>Click <code>SSH and GPG keys</code> in side menu</li>
        <li>Click <code>New SSH key</code> button</li>
        <li>Give the key a title and paste to copied key to the <code>Key</code> input box</li>
        <li>Click <code>Add SSH key</code> button</li>
        <li>You can now push to and pull from your github repositories!</li>
    </ol>

4. Command to *clone* your `ceg2350s25-YOURGITHUBUSERNAME` with SSH for authentication: 
    ```bash
    git clone git@github.com:WSU-kduncan/ceg2350f25-joeesmithh.git
    ```

## Part 3 - IO Redirection

1. `printenv HOME > thishouse`
   - Explanation: 
2. `cat doesnotexist 2>> hush.txt`
   - Explanation: 
3. `cat nums.txt | sort -n >> all_nums.txt`
   - Explanation: 
4. `cat << "DONE" > here.txt`
   - Explanation: 
5. `ls -lt ~ | head`
   - Explanation: 
6. `history | grep ".md"`
   - Explanation: 

## Part 4 - Rolling the Dice

Verify that `roll` made it to your GitHub repository for this course and is in your `Lab03` folder.  No answers will be written here unless you would like to leave a note to the TAs

## Part 5 - Retrospective Answers

1. Where and when did it go wrong while working on your script tasks?
> Your reflection here
2. Was anything familiar working with a new language compared to one you are used to?
> Your reflection here
3. Did you write good `commit` messages that refer to what tasks were completed at each commit?  What would you improve?
> Your reflection here

## Extra Credit

1. Note here *what* you did to the script for the extra credit.

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.  Generative AI may not write your script for you, only assist with component and how to type questions.
