# Read from the file words.txt and output the word frequency list to stdout.

# tr command is mainly used for character replacement or case replacement
# -s parameter means that if consecutive characters are found, reduce them to 1
# ‘ ’ And ‘\n’ are spaces and carriage returns, which means to replace all spaces with '\n'
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'
