#! /bin/bash
FILESDIR=$1
SEARCHSTR=$2
NBFILES=0
NBLINES=0  

#echo $SEARCHSTR
#echo $FILESDIR

if test -z  "$SEARCHSTR" 
 then
        echo "missing argument"
        exit 1
fi

if [ ! -d "$FILESDIR" ]
 then
	echo "not a real directory" 
	exit 1
fi

NBFILES=$( find  "$FILESDIR" -type f -name "*.txt"  | wc -l )
#NBDIR=$( tree -d "$FILESDIR" -ls | wc -l )
#((NBFILES= NB - NBDIR))
NBLINES=$( grep -Ir "$SEARCHSTR" $FILESDIR | wc -l )  

#echo $NB
#echo $NBDIR
#echo $NBLINES

printf  'The number of files are %d and the number of matching lines are %d\n' "$NBFILES"  "$NBLINES" 


