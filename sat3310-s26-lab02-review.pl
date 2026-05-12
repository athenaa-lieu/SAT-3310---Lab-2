# Variables
$defaultdir = "/root/Documents/labs/lab03/data";
$nouns = "nouns.txt";
$agentnouns = "agentnouns.txt";

# Open files
open(FILE, "<", $defaultdir."/".$nouns);
open(FILE2, "<", $defaultdir."/".$agentnouns);

# Count words
$count++ while <FILE>;
$count2++ while <FILE2>;

# close files
close FILE;
close FILE2;

# Put words into an array
open(FILE, "<", $defaultdir."/".$nouns);
@arraynouns=<FILE>;
close FILE;
open(FILE2, "<", $defaultdir."/".$agentnouns);
@arrayagentnouns=<FILE2>;
close FILE2;

# close files
close FILE;
close FILE2;

# Print counts method 1
print "There are $count words in $nouns\n";
print "There are $count2 words in $agentnouns\n";

# Print counts method 2
print "There are " . scalar @arraynouns . " words in $nouns\n";
print "There are " . scalar @arrayagentnouns . " words in $agentnouns\n";

# Random select
$randomnoun=$arraynouns[rand @arraynouns];
$randomagentnoun=$arrayagentnouns[rand @arrayagentnouns];

# Print words
print $randomnoun;
print $randomagentnoun;

# Done