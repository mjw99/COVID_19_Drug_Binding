# COVID_19_Drug_Binding
A screen of drug fragments against SARS-CoV-2 main protease using [YANK](http://getyank.org/latest/).

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
```

6) Install OpenBabel
```
conda install -y openbabel
```
