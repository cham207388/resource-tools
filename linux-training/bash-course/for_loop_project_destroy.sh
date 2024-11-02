#!/bin/bash

readarray -t urls < "urls.txt"

for url in "${urls[@]}"; do
	file_name=$(echo $url | cut -d'.' -f2)
	rm ${file_name}.txt
      # echo $file_name	
done
