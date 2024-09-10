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

cd $dir
filename=$(ls | grep .ino)
echo "Running arduino file in dir $dir: $filename"


OLDIFS=$IFS
IFS="\n"
# devport=echo "$(cat ./Makefile | grep MONITOR_PORT | cut -d '' -f 1)"
devport=$(cat Makefile | grep ^[^#]*MONITOR_PORT | cut -d ' ' -f 3)

echo "devport: $devport"


echo "Building sketch" && make -s && echo "Done building sketch"

echo "Uploading sketch to board" && make upload && "Done uploading sketch to board"

echo -e "\nSerial output: \n$(cat $devport)"
