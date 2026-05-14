#!/usr/bin/python3

# SAT 3310 - Lab 2
# Created by Athena Lieu (xlieu@mtu.edu)
# Date: May 14th, 2026
# Comments: The program opens two files,
# counts the number of words,
# stores the words in an array,
# randomly selects a word from the array,
# and prints it to the console.

import random

# Variables

# Default directory for the files
defaultdir = '/home/sat3310/Documents/labs/SAT-3310---Lab-2/data'

# File names
nouns = 'nouns.txt'
agentnouns = 'agentnouns.txt'

# Variable to count the number of words
countnouns = 0
countagentnouns = 0

# Main Program

# Open the nouns file and count the number of words
with open(f"{defaultdir}/{nouns}", 'r') as f_nouns:
    for line in f_nouns:
        countnouns += 1

# Open the agent nouns file and count the number of words
with open(f"{defaultdir}/{agentnouns}", 'r') as f_agentnouns:
    for line in f_agentnouns:
        countagentnouns += 1

# Store the words in an array
nouns_array = []
agentnouns_array = []

# Open the nouns file again to read the words into an array
with open(f"{defaultdir}/{nouns}", 'r') as f_nouns:
    nouns_array = [line.strip() for line in f_nouns]

# Open the agent nouns file again to read the words into an array
with open(f"{defaultdir}/{agentnouns}", 'r') as f_agentnouns:
    agentnouns_array = [line.strip() for line in f_agentnouns]

# Print the number of words in each file

# Print the number of words in each file
print(f"Number of words in '{nouns}': {countnouns}")
print(f"Number of words in '{agentnouns}': {countagentnouns}")

# Randomly select a word from the nouns array and print it

# Randomly select a word from the nouns array and print it
random_noun = random.choice(nouns_array)
print(f"Randomly selected noun: {random_noun}")

# Randomly select a word from the agent nouns array and print it
random_agentnoun = random.choice(agentnouns_array)
print(f"Randomly selected agent noun: {random_agentnoun}")

# End of program