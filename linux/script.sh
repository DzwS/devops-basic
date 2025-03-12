#!/bin/env bash
set -euo pipefail

username="jay"
filename=$3
read -p "enter your username: " user
echo "username: $user"

if [ "$EUID" -ne 0 ]; then
    echo "your are not running this script as the root user."
else
    echo "you are running this script as the root user"
fi

echo "counting to 5"
for i in {1..5}; do
    echo "$i"
done


function greet()
{
    echo "hello, $1"
}
greet "Alice"

echo "enter a number between 1 and 2: "
read num
case $num in 
    1) echo "you chose one." ;;
    2) echo "you chose two." ;;
    3) echo "invalid choice." ;;
esac

if [ -e "$filename" ] && [ -d "$filename" ]; then
    echo "file exists and is a directory."
else
    echo "file does not exist or is not a directory."
fi

echo "first argument: $1"
echo "second argument: $2"

cat nonexistent-file.txt 2> /dev/null
echo "exit status: $?"

fruits=("apple" "orange" "banana")
echo "fruits: ${fruits[0]}"

declare -A capitals
capitals[USA]="washington D.C."
capitals[France]="paris"
echo "capital of france: ${capitals[France]}"

current_date=$(date)
echo "today's date is: $current_date"

echo "this is a sample text." > example.txt
find / -name hello.txt &> /dev/null

result=$((15 - 2))
echo $result

SRC="/path/to/foo.cpp"
BASEPATH=${src###*/}
echo $BASEPATH

trap 'echo "received SIGTERM signal. cleaning up..."; exit' SIGTERM