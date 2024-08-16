#!/usr/bin/env bash

defold="$1"

if [[ -d $defold ]]; then
  defold="$defold/Defold"
fi

if [[ ! -f $defold ]]; then
  echo "Defold editor binary not found. Make sure the path you passed is correct!"
  exit 1
fi

if [[ ! -x $defold ]]; then
  echo "Defold editor binary not executable. Make sure the path you passed is correct!"
  exit 1
fi

defold=$(realpath "$defold")

mkdir -p ~/.local/share/applications
mkdir -p ~/.local/share/mime/packages

cp Defold.desktop ~/.local/share/applications/
cp x-defold-project.xml ~/.local/share/mime/packages/

sed -i 's#path_to_defold#'"$defold"'#' ~/.local/share/applications/Defold.desktop

update-mime-database ~/.local/share/mime
update-desktop-database ~/.local/share/applications

xdg-mime default Defold.desktop application/x-defold-project
