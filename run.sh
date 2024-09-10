print_help(){
    echo -e "\nUsage: run-arduino [DIRECTORY]"
    echo
}

dir=$1

if [ -z "$dir" ]; then
    echo "Error: No directory specified."
    print_help
    exit 1
fi

cd "$dir"
filename=$(ls | grep .ino)
echo "Running arduino file in dir $dir: $filename"


OLDIFS=$IFS
IFS="\n"
# devport=echo "$(cat ./Makefile | grep MONITOR_PORT | cut -d '' -f 1)"
devport=$(cat Makefile | grep ^[^#]*MONITOR_PORT | cut -d ' ' -f 3)

IFS=$OLDIFS

echo "devport: $devport"


echo "Building sketch" && make -s && echo "Done building sketch"

echo "Uploading sketch to board" && make upload && echo "Done uploading sketch to board"

echo -e "\nStarting listening to serial output: \n"

listenCmd="minicom -D $devport -b 115200"
echo "listenCmd: $listenCmd"
listenWindowTitle="Serial monitoring on $dir/$filename on $devport"
echo "listenWindowTitle: $listenWindowTitle"
kitty --title='$listenWindowTitle' --hold --detach $listenCmd #&& sleep 1

# i3-msg [title='$listenWindowTitle'] focus && sleep 1 && 
# xdotool type "$listenCmd" && xdotool key enter
