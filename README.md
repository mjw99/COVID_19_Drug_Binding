# COVID_19_Drug_Binding
An attempt at an inital screen of drug fragments against SARS-CoV-2 main protease using [YANK](http://getyank.org/latest/).
The aim here is to rank the 19 non-covalent hits from the [crystal-based fragment](https://www.diamond.ac.uk/covid-19/for-scientists/Main-protease-structure-and-XChem.html) screen at the XChem facility at UK’s Diamond Light Source.

# Initial setup of conda environment on [Wilkes2](https://www.hpc.cam.ac.uk/systems/wilkes-2)
1) Login
```
ssh login-gpu.hpc.cam.ac.uk
```

2) Clone the repo
```
git clone https://github.com/mjw99/COVID_19_Drug_Binding
cd COVID_19_Drug_Binding 
```

3) Load the Miniconda support
```
module load miniconda3/4.5.1
module add cuda/10.1
```

4) Create an OpenMM environment
```
conda create --name openmm python=3.7
source activate openmm
```

5) Install OpenMM and YANK
```
conda install -y -c omnia/label/cuda101 -c omnia openmm=7.4.1
conda config --add channels omnia --add channels conda-forge
conda install -y yank
conda install -y mpi4py
conda install -y pymbar=3.0.3
```

6) Install OpenBabel
```
conda install -y openbabel
```

7) Submit initial test job
```
sbatch submit.q
```

# Running standalone on test machine
```
yank script --yaml x0072-explicit-trailblazing.yaml
yank analyze --store=./x0072-explicit-trailblazing-output/experiments
```
