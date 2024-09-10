prefix=$1
echo "prefix: $prefix"

cd $prefix

echo "configure.sh"
echo "current dir: $(pwd). Contents: $(ls -a)"
mkdir -p ./runardionoarch && echo "made dir"
cp -R ./run.sh runarduinoarch && echo "copied files to pkg/ folder"
alias runarduinoarch="./run.sh" && echo "alias set"
