#!/bin/bash
#Assignment 8
#Phillip Heuser
#11/10/22


#pg 207
verb=sing;
echo I like $verbing
echo I like ${verb}ing;
startDate=${startDate-`date`};
echo $startDate;

#pg 208
echo x = ${x=10};
echo $x;
flag=1;
echo ${flag+'flag is set'};
echo ${flag2+'flag2 is set'};
total=10;
value=${total?'total not set'};
echo $value;
#value=${grandTotal?'grand total not set'};
#cat script.sh;
#value=${grandTotal?'grand total not set'};
#echo 10 #never executed because there is no grandTotal variable
echo $PWD;
echo $HOME;

#pg 209
echo ${PWD#HOME/};
fileName=menu.sh
echo ${fileName%.sh}.bak;
declare -a teamnames;
teamnames[0]="Dallas Cowboys";
teamnames[1]="Washington Redskins";
teamnames[2]="New York Giants";

#pg 210
echo "There are ${#teamnames[*]} teams in the NFL";
echo "They are: ${teamnames[*]}";

#pg 211
mylist[0]=27;
mylist[5]=30;
echo ${#mylist[*]};
#cat script.sh
#echo "Please enter your name: \c";
#read name; #only takes first word
#echo your name is $name;
#bash script.sh

#pg 213
export;
DATABASE=/dbase/db;
export DATABASE;
env;
password=Shazam;
echo $password;

#pg 214
readonly password;
#password=Phoombah;

#pg 216
#cat script.sh
sleep 1000 &
kill $!
echo $!;
PS1="bash? "

#pg 217
alias dir="ls -aF"
dir
dir *.pl

#pg 219
#lp file.pl
#^file^fiele^;

#pg 221
pwd
echo ~
cd /
echo ~+
echo ~-

#pg 222
cat <<- ENDOFTEXT
		  this input contains;
	some leading tabs;
ENDOFTEXT
echo there are $(who \ wc -l)

#pg 224
declare -i testval=20
declare -i count=2

while(($count <= $testval)); do
	((result = $testval % $count))
	if(($result==0)); then
		echo "$testval is evenly divisible by $count"
	fi
	((count++))
done

#pg 225
if [ -O /etc/passwd ]; then
	echo "you are the owner of /etc/passwd."
else
	echo "you are NOT the owner of etc/passwd."
fi