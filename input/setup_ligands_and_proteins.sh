#!/bin/bash

for f in ./xchem_non_covalent/*.pdb; do
  name=$(echo $f | sed 's/\.pdb$//' | sed 's/-/\ /' | awk '{print $2}'); 
  echo $name
  grep LIG $f > $name.pdb
  pdbfixer $f --keep-heterogens=none --add-atoms=heavy --ph=7.0 --replace-nonstandard --output=$name.pbdfixer.pdb

done
