## Lab 05

- Name:
- Email: 

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab05/Instructions.html

## Part 1 - grep

1. How many logs use a client IP that starts with `192`?
    - `grep` command: `grep -E "^192" access.log | wc`
    - Number of matched lines: **28**
    - Explanation of pattern: `^192` matches the characters "192" from the start of a line.
2. How many logs request page `/faq`?
    - `grep` command: `grep -E "\/faq\b" access.log`
    - Number of matched lines: **2**
    - Explanation of pattern: `\/faq\b` matches any instance of the characters "/faq" appearing at the end of a word.
3. How many logs have a client IP that contains `1` in the third octet?
    - `grep` command: `grep -P "^\d+\.\d+\.\d*1" access.log | wc"`
    - Number of matched lines: **83**
    - Explanation of pattern: `^\d+\.\d+\.\d*1` matches zero or more digits before the character "1" preceeded by 2 instances of one or more period-separated digits from the start of a line.
4. How many logs contain `GET` requests to look for a page that begins with `c`?
    - `grep` command: `grep -E "GET \/c" access.log | wc`
    - Number of matched lines: **10**
    - Explanation of pattern: `GET \/c` matches all occurrences of character pattern "GET /c"
5. How many logs contains request between 1:20 PM and 1:30 PM?
    - `grep` command: `grep -P "20\d\d:13:2" access.log | wc`
    - Number of matched lines: **20**
    - Explanation of pattern: `20\d\d:13:2` matches all occurrences of characters "20" followed by two digits, a colon, the characters "13", another colon, and the character "2," i.e., any request from 1:20 PM to 1:29 PM in the 21st century.

## Part 2 - sed

1. `sed -i 's/<\/.*>//g' sedfile.md`: remove all HTML closing tags.
2. `sed -i 's/^.*<li>/ - /g' sedfile.md`: replace all HTML list items with mardown bullets.
3. `sed -i '/<ul>/d' sedfile.md` and `sed -i '/^<html>/d' sedfile.md`: delete lines with `<html>` and `<ul>` tags.
4. `sed -i 's/<h1>/# /g' sedfile.md` and `sed -i 's/<h2>/## /g' sedfile.md`: replace all HTML header tags with markdown equivalent.
5. `sed -i 's/Batches/Matches/g' sedfile.md`: replace all instances of the word "Batches" with "Matches."

## Part 3 - awk

1. `awk command goes here`
2. `awk command goes here`
3. `awk command goes here`
4. `awk command goes here`
5. `awk command goes here`

## Citations

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.  Generative AI may not write your script for you, only assist with component and how to type questions.
