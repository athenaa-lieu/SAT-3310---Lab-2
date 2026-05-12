# Variables
defaultdir = "/root/Documents/labs/lab04/data"
nouns = "nouns.txt"
agentnouns = "agentnouns.txt"
count = 0
count2 = 0

# Open files
with open(defaultdir + "/" + nouns, 'rt') as f:
# Character Meaning
# 'r' open for reading (default)
# 'w' open for writing, truncating the file first
# 'x' open for exclusive creation, failing if the file
# already exists
# 'a' open for writing, appending to the end of the
# file if it exists
# 'b' binary mode
# 't' text mode (default)
# '+' open a disk file for updating (reading and
# writing)
# 'U' universal newlines mode (deprecated)

# Count words
    for line in f:
        count += 1
        with open(defaultdir + "/" + agentnouns, 'rt') as f:
            for line in f:
                count2 += 1

# Put words into a list
mynouns = open(defaultdir + "/" + nouns).readlines()
myagentnouns = open(defaultdir + "/" + agentnouns).readlines()

# Print counts
print("There are", count, "words in", nouns)
print("There are", count2, "words in", agentnouns)

# Print counts method 2
print("There are", len(mynouns), "words in", nouns)
print("There are", len(myagentnouns), "words in", agentnouns)

# Random select
import random
myrandnoun = random.choice(mynouns)
myrandagentnoun = random.choice(myagentnouns)

# Print words
print
print(myrandnoun, myrandagentnoun)