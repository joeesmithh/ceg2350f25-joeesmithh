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
    sudo adduser phillip
    ```
2. Path to new user's home directory:
    ```bash
    /home/phillip
    ```
3. Evaluate if `ubuntu` can add files to new user's home directory:
    ```bash
    touch /home/phillip/test.txt
    # touch: cannot touch '/home/phillip/test.txt': Permission denied
    ```
4. Command to switch to new user:
    ```bash
    su phillip
    ```
5. Command(s) to go to new user's home directory:
    ```bash
    cd ~
    ```
6. Evaluate if new user can add files to user's home directory:
    ```bash
    touch test.txt
    # Successful
    ```
7. Command to return to `ubuntu` user:
    ```bash
    exit # This is the only command that worked before giving phillip sudo access
    sudo su ubuntu # After giving phillip sudo access
    ```
8. Command to return to `ubuntu` home directory:
    ```bash
    cd ~
    ```

## Part 4 Answers

1. Command(s) to create group named `squad` and add members:
2. Command(s) to add `ubuntu` & user to group `squad`:
3. Command(s) to allow `squad` to view the `ubuntu` user's home directory contents:
4. Command(s) to modify `share` to have group ownership of `squad`:
5. Describe your tests and commands with the user account:
6. Describe the full set of permissions / settings that enable the user to make edits:

## Part 5 Answers

For each, write the command used or answer the question posed.

1. Command(s) to make file using `sudo`: 
2. Command(s) to make file with `root`:
3. Describe / compare ownership and permissions of files:
4. Which account can do what actions? (Type Y or N in columns)

Contents inside of `share`
| Account   | Can View  | Can Edit  | Can Change Permissions    |
| ---       | ---       | ---       | ---                       |
| `root`    |           |           |                           |
| `ubuntu`  |           |           |                           |
| `BOB`     |           |           |                           |

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
