#!/bin/bash

for f in ./xchem_non_covalent/*.pdb; do
  name=$(echo $f | sed 's/\.pdb$//' | sed 's/-/\ /' | awk '{print $2}'); 
  echo $name
  grep LIG $f > $name.pdb
  obabel -h -ipdb $name.pdb -omol2 -O $name.mol2
  rm $name.pdb
  pdbfixer $f --keep-heterogens=none --add-atoms=all --ph=7.0 --replace-nonstandard --output=$name.pdbfixer.pdb

done
