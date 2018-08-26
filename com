#!/bin/bash

argc=$#
fileName=$1
outputName=$2

comfile()
{
	local fileName=$1
	local outputName=$2	
	isError=$(g++ -o $outputName $fileName |& grep error: | wc -l);

	if [ $isError == 0 ]; then
	 echo "successful!!!========"
	 echo "=======start program"
	 ./$outputName
	else
		g++ -o $outputName $fileName
	fi
}# comfile

main() {
	local argLength=$#
	local fileName=$1
	local outputName=$2

	if [ $argLength == 0 ]; then
		comfile "main.cpp" "main"
	elif [ $argLength == 1 ]; then
		local outputName=$(echo $fileName | cut -f 1 -d '.')
		comfile $fileName $outputName 
	elif [ $argLength == 2 ]; then
		comfile $fileName $outputName 
	fi

}
main $fileName $outputName

