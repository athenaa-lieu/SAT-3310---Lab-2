#!/usr/bin/perl
#username
#date
#class
#lab section
#
#variables

$Counter = 0;
$Counter1 = 0;
$Filepath = '/home/campus16/toarney/sat3310-s19-lab-demos/lab02-files-perl-python/words/';
$Nouns = 'nouns.txt';
$AgentNouns = 'agentnouns.txt';
@ArrayNouns = 0;
@ArrayAgentNouns = 0;
$RandomNoun = 0;
$RandomAgentNouns = 0;
$Debug = 0;

#open files
open (NounFile,'<', $Filepath.$Nouns);
open (AgentNounsFile,'<', $Filepath.$AgentNouns);

#Count words
$Counter++ while <NounFile>;
$Counter1++ while <AgentNounsFile>;

#Close Files
close NounFile;
close AgentNounsFile;

#Put files into array
open (NounFile,'<', $Filepath.$Nouns);
@ArrayNouns = <NounFile>;
close NounFile;
open (AgentNounsFile,'<', $Filepath.$AgentNouns);
@ArrayAgentNouns = <AgentNounsFile>;
close AgentNounsFile;

#output count to screen
if ($Debug) {
	print "There are $Counter words in $Filepath$Nouns\n";
	print "There are $Counter1 words in $Filepath$AgentNouns\n";
};
#method 2
print "There are ".scalar @ArrayNouns . "words in $Filepath$Nouns\n";
print "There are ".scalar @ArrayAgentNouns . "words in $Filepath$AgentNouns\n";

#randomly select
$RandomNoun = $ArrayNouns[rand scalar @ArrayNouns];
$RandomAgentNouns = $ArrayAgentNouns[rand scalar @ArrayAgentNouns];


#output screen
print "You are a $RandomNoun $RandomAgentNouns";

#Done