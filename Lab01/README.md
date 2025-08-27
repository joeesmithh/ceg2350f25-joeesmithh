## Lab 01

- Name: Joseph Smith
- Email: smith.3289@wright.edu

## Part 1 - GitHub Profile

- [joeesmithh's GitHub Profile](https://github.com/joeesmithh)

## Part 2 - Research

| Windows | Linux / Mac | Action |
| ---     | ---         | ---    |
| help    | man         | Outputs documentation and usage of subsequent command.       |
| Get-Location | pwd    | Outputs the full path of the current working directory.       |
| Get-ChildItem | ls    | Outputs to the console a list of unhidden files and directories.      |
| mkdir   | mkdir       | Creates a folder in desired directory.       |
| Set-Location | cd     | Changes working directory to specified directory.       |
| New-Item | touch      | Creates a new file in desired directory.       |
| Move-Item | mv        | Relocates specified file into desired directory.       |
| Copy-Item | cp        | Copies specified file into desired directory with specified file name.       |
| Remove-Item | rm      | Deletes a single file or folder, non-recursively by default.       |
| notepad.exe | vim     | Opens specified file in desired text editor.       |

## Part 3 - Command Line Navigation

My OS is:
- [x] Windows
- [ ] Linux
- [ ] Mac

My Command Line Shell is: **Windows PowerShell**

### Navigating My OS on the Command Line

1. Full / absolute path to your user's home directory: **pwd** or **Get-Location** = **C:\Users\josmt**
2. Create a directory named `DirA`: **mkdir DirA**
3. Create a directory named `Dir B`: **mkdir 'Dir B'**
4. Go into `DirA`: **Set-Location DirA** or **cd DirA**
5. Go into `Dir B` from `DirA`: **Set-Location ~\\'Dir B'** or **cd ~\\'Dir B'**
6. Return to your user's home directory: **Set-Location ~** or **cd ~**
7. Create a file named `test.txt`: **New-Item test.txt** or **touch test.txt**
8. Move the file named `test.txt` into `DirA`: **Move-Item test.txt DirA** or **mv test.txt DirA**
9. Contents of `test.txt`:
```
Hello, world!
```
10. Make a copy of `test.txt` named `copy.txt` in `DirA`: **Copy-Item DirA\test.txt DirA\copy.txt**
11. View the contents of `DirA`: **Get-ChildItem DirA**
12. Make a copy of `test.txt` in `Dir B` named `fodder.txt`: **Copy-Item DirA\test.txt 'Dir B'\fodder.txt**
13. Delete / remove both `fodder.txt` AND `Dir B`: **Remove-Item -Recurse 'Dir B'**

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.