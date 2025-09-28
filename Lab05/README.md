## Lab 05

- Name: Joseph Smith
- Email: smith.3289@wright.edu

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
    - Explanation of pattern: `^\d+\.\d+\.\d*1` matches zero or more digits before the character "1" preceded by 2 instances of one or more period-separated digits from the start of a line.
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
2. `sed -i 's/^.*<li>/ - /g' sedfile.md`: replace all HTML list items with markdown bullets.
3. `sed -i '/<ul>/d' sedfile.md` and `sed -i '/^<html>/d' sedfile.md`: delete lines with `<html>` and `<ul>` tags.
4. `sed -i 's/<h1>/# /g' sedfile.md` and `sed -i 's/<h2>/## /g' sedfile.md`: replace all HTML header tags with markdown equivalent.
5. `sed -i 's/Batches/Matches/g' sedfile.md`: replace all instances of the word "Batches" with "Matches."

## Part 3 - awk

1. `awk '/^2024-02/ { print }' sales.txt`: prints only lines for sales made in February 2024
2. `awk '$5 >= 100 { print $2 }' sales.txt`: prints only the product name of products with a unit price of 100+
3. `awk '$2 ~ /TV/ { print $2, $4 }' sales.txt`: prints the product name and quantity sold of products with "TV" in the product name
4. `awk '$3 ~ /Kitchen/ { sum+=$6 } END { print "Sum:", sum }' sales.txt`: sums and prints the total revenue of products with "Kitchen" in the Category name
5. `awk '{ gsub("Sofa","Couch"); print }' sales.txt > updated-sales.txt`: replaces all occurrences of the word "Sofa" with "Couch," saving the changes to "updated-sales.txt"

## Citations
[Grep Command in Linux](https://linuxize.com/post/how-to-use-grep-command-to-search-files-in-linux/)<br>
[How to Use sed to Find and Replace String in Files](https://linuxize.com/post/how-to-use-sed-to-find-and-replace-string-in-files/)<br>
[Awk Command in Linux with Examples](https://linuxize.com/post/awk-command/)<br>
[Awk Find And Replace Fields Values](https://www.cyberciti.biz/faq/awk-find-and-replace-fields-values/)
