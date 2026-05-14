#!/usr/bin/python
#SAT3310 Class
#2/6/19

#Variables
nouns = "nouns.txt"
agentNouns = "agentnouns.txt"
counter1 = 0
counter2 = 0
randomNoun = ""
randomAgentNoun = ""
debug = 1
nounsArray = []
agentNounsArray = []
filepath = "/home/campus16/toarney/sat3310-s19-lab-demos/lab02-files-perl-python/words/"

#Open files
with open(filepath + nouns, 'rt') as nounFile:
	for line in nounFile:
		counter1+=1
nounFile.close
with open(filepath + agentNouns, 'rt') as agentNounFile:
	for line in agentNounFile:
		counter2+=1
agentNounFile.close()
if (debug):
	print("Counter1: " + str(counter1) + " Counter2: " + str(counter2) + "\n")

#Words into array
nounsArray = open(filepath + nouns, 'rt').readlines()
agentNounsArray = open(filepath + agentNouns, 'rt').readlines()
if (debug):
	print("There are ",len(nounsArray)," words in ",filepath,nouns,"\n")
	print("There are ",len(agentNounsArray)," words in ",filepath,agentNouns,"\n")


#Randomly select
import random
randomNoun = random.choice(nounsArray)
randomAgentNoun = random.choice(agentNounsArray)

#Print output to screen
print("You are a " + randomNoun + " " + randomAgentNoun + "\n")

#End :)