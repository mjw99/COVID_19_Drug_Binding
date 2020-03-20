from pdbfixer import PDBFixer
from simtk.openmm.app import PDBFile

fixer = PDBFixer(filename='6Y84.pdb')

fixer.findMissingResidues()
fixer.findNonstandardResidues()
fixer.replaceNonstandardResidues()
fixer.removeHeterogens(False)
fixer.findMissingAtoms()
fixer.addMissingAtoms()
#fixer.addMissingHydrogens(7.0)

PDBFile.writeFile(fixer.topology, fixer.positions, open('receptor.pdbfixer.pdb', 'w'))
