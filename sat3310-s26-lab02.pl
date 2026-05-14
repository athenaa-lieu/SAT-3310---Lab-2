# vi ~/Documents/sat3310-s26-lab02.pl

#!/usr/bin/perl

# SAT 3310 - Lab 2
# Created by Athena Lieu
# Date: May 13th, 2026
# Comments: The program opens two files,
# counts the number of words,
# stores the words in an array,
# randomly selects a word from the array,
# and prints it to the console.

use strict;
use warnings;

# Variables
# Default directory for the files
my $defaultdir = '/home/sat3310/Documents/labs/SAT3310-S26---Lab-2/data';

# File names
my $nouns = 'nouns.txt';

my $agentnouns = 'agentnouns.txt';

# Variable to count the number of words
my $countnouns = 0;
my $countagentnouns = 0;

# Main

# Open the files

# Open the nouns file and count the number of words
open(my $fh_nouns, '<', "$defaultdir/$nouns")
    or die "Could not open file '$nouns' $!";

# Count the number of lines (words) in the nouns file
$countnouns++ while <$fh_nouns>;

# Close the nouns file
close($fh_nouns);

# Open the agent nouns file in read mode
open(my $fh_agentnouns, '<', "$defaultdir/$agentnouns")
    or die "Could not open file '$agentnouns' $!";

# Count the number of lines (words) in the agent nouns file
$countagentnouns++ while <$fh_agentnouns>;

# Close the agent nouns file
close($fh_agentnouns);

# Store the words in an array

# Open the nouns file again to read the words into an array
open(my $fh_nouns, '<', "$defaultdir/$nouns")
    or die "Could not open file '$nouns' $!";

# Read the words from the nouns file into an array
my @nouns_array = <$fh_nouns>;

# Close the nouns file
close($fh_nouns);

# Open the agent nouns file again to read the words into an array
open(my $fh_agentnouns, '<', "$defaultdir/$agentnouns")
    or die "Could not open file '$agentnouns' $!";

# Read the words from the agent nouns file into an array
my @agentnouns_array = <$fh_agentnouns>;

# Close the agent nouns file
close($fh_agentnouns);

# Print the number of words in each file

# Print the number of words in the nouns file
print "Number of words in '$nouns': $countnouns\n";

# Print the number of words in the agent nouns file
print "Number of words in '$agentnouns': $countagentnouns\n";

# Randomly select a word from the nouns array and print it
my $random_noun = $nouns_array[rand @nouns_array];
# Remove newline character from the selected noun
chomp($random_noun);
# Print the randomly selected noun
print "Randomly selected noun: $random_noun";

# Randomly select a word from the agent nouns array and print it
my $random_agentnoun = $agentnouns_array[rand @agentnouns_array];
# Remove newline character from the selected agent noun
chomp($random_agentnoun);
# Print the randomly selected agent noun
print "Randomly selected agent noun: $random_agentnoun";

# End of program