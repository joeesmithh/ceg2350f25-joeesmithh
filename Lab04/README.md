## Lab 04

- Name: Joseph Smith
- Email: smith.3289@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab04/Instructions.html

## Part 1 - Finance Tracker

Remember your `ft` script **must have a minimum of 3 commits** for credit.  The commits should show you making tested progress towards the final solution.

Verify that `ft` made it to your GitHub repository for this course and is in your `Lab04` folder.  No answers will be written here unless you would like to leave a note to the TAs

## Part 2 - User Guide & Sample Runs

### User Guide

### Usage
---
`ft <ACTION> [RECORD]`

### Arguments
---

- **ACTION**: Required argument representing an action to perform on `~/.finances`.

   |ACTION|Description|
   |-----|-----|
   |`add [RECORD]`|Append RECORD to `~/.finances`.<br>Prompt for entry if no RECORD given.|
   |`remove [RECORD]`|Remove lines from `~/.finances` matching RECORD string pattern.<br>Prompt for entry if no RECORD given.|
   |`view`|View contents of `~/.finances`.|
   |`clear`|Remove `~/.finances` file.|
   |`help`|Output documentation.|

- **RECORD**: A finance record comprising a string followed by a floating-point value.
   - Optional for **ACTION**=**add**,**remove**.
   - Unnecessary for **ACTION**=**view**,**clear**,**help**

   |RECORD|Description|
   |-----|-----|
   |For **ACTION**=`add [RECORD]`|RECORD must be of form `<STRING> [-]N+[.N+]`<br>**[]** indicates an optional field<br>**N+** indicates 1 or more integer characters from 0 to 9.|
   |For **ACTION**=`remove [RECORD]`|The argument can be any non-zero string.|

### Sample runs

---

- Example of using `add` record
   ```bash
   # Add expense
   > ft add "McDonalds -2.50"
   > Saved "McDonalds -2.50" to /home/joeesmithh/.finances

   # Add income
   > ft add "Paycheck 350.00"
   > Saved "Paycheck 350.00" to /home/joeesmithh/.finances
   ```

- Example of using `remove` record
   ```bash
   # Remove single record
   > ft remove Pay
   > Removed "Paycheck 350.00" from /home/joeesmithh/.finances

   # Remove multiple records
   > ft remove 50
   > Removed "McDonalds -2.50
     Paycheck 350.00" from /home/joeesmithh/.finances
     Last record removed! Deleted /home/joeesmithh/.finances
   ```

- Example of using `view` records
   ```bash
   > ft view
   > McDonalds -2.50
     Paycheck 350.00
   ```

- Example of using `clear` records
   ```bash
   > ft clear
   > Deleted /home/joeesmithh/.finances
   ```

- Example of using `help`
   ```
   > ft help
   > Usage: ft <ACTION> [RECORD]
     This script allows the user to add, remove, view, or clear
     finance records in the /home/joeesmithh/.finances file.
  
     Arguments:
     ACTION
              Required argument representing an action to perform on /home/joeesmithh/.finances
              add [RECORD]    - Append RECORD to /home/joeesmithh/.finances
                                Prompt for entry if no RECORD given
              remove [RECORD] - Remove lines matching RECORD pattern from /home/joeesmithh/.finances
                                Prompt for entry if no RECORD given
              view            - View contents of /home/joeesmithh/.finances
              clear           - Remove /home/joeesmithh/.finances file
              help            - Output documentation
  
     RECORD
              A finance record comprising a string followed by a floating-point value.
              Optional for ACTION=add,remove
              For <remove>, the argument can be any non-zero string
              For <add>, the argument must be of form "<STRING> [-]N+[.N+]"
                 [] indicates an optional field
                 N+ indicates 1 or more integer characters [0-9]
  
     Examples:
     ft add "McDonald's -2.50" - Add negative record
     ft add "Paycheck 350"     - Add positive record
     ft view                   - Output:
                                         McDonald's -2.50
                                         Paycheck 350
     ft remove Pay             - Remove "Paycheck 350" record
     ft remove 50              - Remove both records
     ft add                    - Prompt for record before addition
     ft remove                 - Prompt for record before removal
     ft clear                  - Delete /home/joeesmithh/.finances file
   ```

## Part 3 - PATH for all

- Chosen PATH directory:  
- Link preference (hard or symbolic):
   - Justification of preference for this use case:
- Command to create link:
- Notes about permissions modified: 
- How you tested that you can run `ft` from anywhere on filesystem:
- How you tested that other users can run `ft`:

## Extra Credit

Note here *what* you did to the script for the extra credit and provide additional demonstrations or user guide updates similar to Part 2.
- Implement deletion of empty .finances record file when the last remaining record is removed.

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.  Generative AI may not write your script for you, only assist with component and how to type questions.