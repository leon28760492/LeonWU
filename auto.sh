#!/bin/bash

cd /C/Users/BIG DATA/test/pic

while true
do
	fc="(ls| wc -l)"
	if [$fc -gt 0];
		then 
			FILES=/C/Users/BIG DATA/test/pic/*
			for f in $FILES
			do
				/mingw64/bin/git add $f
				/mingw64/bin/git commit -m"$(date +%H-%M-%S)"
				/mingw64/bin/git remote add origin git@github.com:leon28760492/iii.get	
				/mingw64/bin/git push -u origin master
				/mingw64/bin/git remote remote origin
				done
			fi;
			rm -rf /C/Users/BIG DATA/test/pic/*
			sleep 3
		done
				