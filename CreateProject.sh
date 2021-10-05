#!/usr/bin/env bash

function getDirName() {
  echo "Please enter directory name:"
  read -r name
}

function countDirs() {
  counter=0
  for entry in *; do
    [[ $entry =~ ^[0-9]{2}_.*$ ]] && ((counter = counter + 1))
  done

  if ((counter < 10)); then
    counter="0$counter"
  fi
}

function createDirectory() {
  echo "Creating directory: $dirName"
  mkdir "$dirName"
  cd "$dirName" || exit
  echo "Creating hello-world..."
  echo "#!/usr/bin/env bash" >>HelloWorld.sh
  echo "# Just a simple Hello World" >>HelloWorld.sh
  echo "echo \"Hello project $dirName\"" >>HelloWorld.sh
  chmod 744 ./HelloWorld.sh
  cd ..
  echo "Successfully created a new Project called $dirName"
}
clear
getDirName
countDirs

dirName="${counter}_$name"
success=false

while [ $success == false ]; do
  echo "\"$dirName\": is this the name you want?(y/n)"
  read -r a
  case $a in
  "n")
    echo "Rename"
    getDirName
    ;;
  "y")
    echo "dont rename"
    success=true
    ;;
  esac
done
createDirectory
echo "Exit?"
read -r
clear
