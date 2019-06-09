#!/bin/bash
#File: guessinggame.sh


files_number=$( ls -l | egrep ^- | wc -l )
echo "How many Files are in the directory ?"
while read guess
do
	if [[ "$guess" -ne "$files_number" ]]
	then 
		if [[ "$guess" -gt "$files_number" ]]
		then
			echo "Your "guess" is too high. Try again."
			
		
		elif [[ "$guess" -lt "$files_number" ]]
		then
			echo "Your guess is too low. Try again."
		fi	
	elif [ "$guess" -eq "$files_number" ]; then
	echo "Congratulations"
	break
fi
		
done

