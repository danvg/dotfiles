#!/bin/bash

usage() { echo "Usage: github-markdown -i <input file> -o <output file>"; }

while getopts ":i:o:" opt; do
   case ${opt} in
      i ) 
         input=${OPTARG}
         if [ ! -f "${input}" ]; then
            echo "input file: \"${input}\" not found!"
            exit 1
         fi
         ;;
      o )
         output=${OPTARG}
         ;;
      * ) 
         usage
         exit 1   
         ;;
   esac
done
shift $((OPTIND -1))

if [ -z "${output}" ]; then
   output="${input}.html"
fi

respons=$(curl https://api.github.com/markdown/raw -X "POST" -H "Content-Type: text/x-markdown" --data-binary "@${input}")
echo $respons > $output

exit 0
