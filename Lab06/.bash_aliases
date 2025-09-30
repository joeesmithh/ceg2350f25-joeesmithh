# Output a milk cowsay cow with a random fortune
alias cf="fortune | cowsay -f milk"

# Output a random complement
alias cmnt='complements=("Your coding skills are excellent!" "You can solve any Leetcode problem with ease!" "You make coding look easy!"); rand=$((RANDOM % ${#complements[@]})); echo "${complements[$rand]}"'
