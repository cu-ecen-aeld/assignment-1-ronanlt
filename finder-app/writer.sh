#! /bin/bash
WRITEFILE=$1
WRITESTR=$2


if test -z  "$WRITESTR"
then
	echo "missing argument"
	exit 1
fi

#echo $WRITEFILE
#echo $WRITESTR

DIR=( $(dirname "$WRITEFILE"))
FILENAME=($(basename "$WRITEFILE"))

#echo $DIR
#echo $FILENAME

mkdir -p  $DIR
touch  $WRITEFILE
 
if [[ -e $WRITEFILE ]]; then
	echo "$WRITESTR" >> $WRITEFILE
else
	echo "file has not been created"
	exit 1
fi


