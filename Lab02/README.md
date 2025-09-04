## Lab 02

- Name: Joseph Smith    
- Email: smith.3289@wright.edu

## Part 1 Answers

Full / absolute path to your private key file (**Using WSL2**):
```bash
/home/joeesmithh@JosephLaptop/scripts/labsuser.pem
```

Command to SSH to AWS instance (**from scripts directory**):
```bash
ssh -i ./labsuser.pem ubuntu@44.209.209.133
```

## Part 2 Answers

1. `chmod u+r bubbles.txt`
    - **Means:** For bubbles.txt, allows the owner/user to read and copy the contents of the file. Existing permissions for group and others remain unchanged.
    - **Assessment:** Almost necessary in order to work with files in any capacity.
2. `chmod u=rw,g-w,o-x banana.cabana`
    - **Means:** For file banana.cabana, allows the owner/user to read and write without the ability to execute, removes the ability for the group to write, and removes the ability for others to execute. Existing permission for group and others remains unchanged.
    - **Assessment:** Seems safe. The user can read and write, though the group may be able to read or execute, and others may be able to read or write.
3. `chmod a=w snow.md`
    - **Means:** For snow.md, allows the owner/user, group, and others to write with no ability to read or execute.
    - **Assessment:** Doesn't make a lot of sense. Write permission allows one only to append to the file from the console using stream insertion operators without the ability to read from it.
4. `chmod 751 program`
    - **Means:** For program, allows the owner/user to read, write, and execute, allows the group to read and execute, and allows others to execute.
    - **Assessment:** This seems to be a good use case for setting file permissions, if the file is indeed a program. Only the owner can write, however those in the group are only allowed to read the contents of and execute the program, while others are able only to run the program.
5. `chmod -R ug+w share`
    - **Means:** Assuming 'share' is a directory for which the `-R` tag would make sense, this gives both the owner/user and the group write access to every file within the directory and recursive subdirectories of the 'share' folder.
    - **Assessment:** Setting permissions here would make sense for some sort of group project, where the owner and the group both require the ability to write to all files in the root project folder.

## Part 3 Answers

1. Command to create new user:
    ```bash
    sudo adduser jsmith
    ```
2. Path to new user's home directory:
    ```bash
    /home/jsmith
    ```
3. Evaluate if `ubuntu` can add files to new user's home directory:
    ```bash
    touch /home/jsmith/test.txt
    # touch: cannot touch '/home/jsmith/test.txt': Permission denied
    ```
    Without the sudo prefix, the ubuntu user does not have write access to jsmth's home directory.
4. Command to switch to new user:
    ```bash
    su jsmith
    ```
5. Command(s) to go to new user's home directory:
    ```bash
    cd ~
    ```
6. Evaluate if new user can add files to user's home directory:
    ```bash
    touch test.txt # successful
    ```
    Now that we are now jsmth, we can read, write, and execute, thus having the ability to create new files.
7. Command to return to `ubuntu` user:
    ```bash
    exit # This is the only command that worked before giving jsmith sudo access
    ```
8. Command to return to `ubuntu` home directory:
    ```bash
    cd ~
    ```

## Part 4 Answers

1. Command(s) to create group named `squad` and add members:
    ```bash
    sudo addgroup squad
    ```
2. Command(s) to add `ubuntu` & user to group `squad`:
    ```bash
    sudo usermod -aG squad ubuntu
    sudo usermod -aG squad jsmith
    ```
3. Command(s) to allow `squad` to view the `ubuntu` user's home directory contents:
    ```bash
    sudo chown :squad /home/ubuntu # change the group associated with ubuntu home directory
    chmod g=x /home/ubuntu # allow group to view contents of ubuntu home directory
    ```
4. Command(s) to modify `share` to have group ownership of `squad`:
    ```bash
    sudo chown :squad /home/ubuntu/share # change the group associated with share directory
    chmod -R 070 /home/ubuntu/share # the group now has full permission of the directory and everything in it
    ```
5. Describe your tests and commands with the user account:
    ```bash
    su jsmith # switch to jsmith
    ls /home/ubuntu # jsmith can now view contents, wheras he wasn't able to before
    touch /home/ubuntu/test.txt # jsmith cannot create files within ubuntu
    touch /home/ubuntu/share/test.txt # jsmith cannot create files in share this way
    cd /home/ubuntu/share
    touch test.txt # jsmith can create files while in shared directory
    ```
6. Describe the full set of permissions / settings that enable the user to make edits:
    ```bash
    # ubuntu@ceg2350-sandbox:~$
    sudo addgroup squad # we create a new group
    sudo usermod -aG squad ubuntu # we add a sudo user and a non sudo user to the group
    sudo usermod -aG squad jsmith
    sudo chown :squad /home/ubuntu # we assign new group ownership of sudo user home folder
    chmod g=x /home/ubuntu # we give execute permissions to the owning group of sudo user's home
    sudo chown :squad /home/ubuntu/share # assign new group ownership of share filder
    chmod -R 070 /home/ubuntu/share # give group read, write, execute permission for share folder

    # members of the new group can now read, edit, and create files within the share folder
    ```
## Part 5 Answers

For each, write the command used or answer the question posed.

1. Command(s) to make file using `sudo`: 
    ```bash
    sudo touch madewithsudo.txt
    ```
2. Command(s) to make file with `root`:
    ```bash
    sudo su root # switch to root user
    touch madewithroot.txt
    ```
3. Describe / compare ownership and permissions of files:
    ```
    The root user and root group own both files.
    For both files, the owner can read and write, those in the root group can read, and others can read from the files.
    ```
4. Which account can do what actions? (Type Y or N in columns)

Contents inside of `share`
| Account   | Can View  | Can Edit  | Can Change Permissions    |
| ---       | ---       | ---       | ---                       |
| `root`    |           |           |                           |
| `ubuntu`  |           |           |                           |
| `jsmith`     |           |           |                           |

`madewithsudo.txt`
| Account   | Can View  | Can Edit  | Can Change Permissions    |
| ---       | ---       | ---       | ---                       |
| `root`    |           |           |                           |
| `ubuntu`  |           |           |                           |
| `BOB`     |           |           |                           |

5. Command(s) to modify permissions:
6. How to give user account `sudo`:

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.
