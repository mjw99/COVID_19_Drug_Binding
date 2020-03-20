# COVID_19_Drug_Binding
A screen of drug fragments against SARS-CoV-2 main protease using YANK

# Initial setup of conda enviroment on Wilkes2
1) Login
```
ssh login-gpu.hpc
```

2) Load the Mini conda support
```
module load miniconda3/4.5.1
module add cuda/10.1
```

3) Create an OpenMM environment
```
conda create --name openmm python=3.7
source activate openmm
```


4) Install OpenMM and YANK
```
conda install -y -c omnia/label/cuda101 -c omnia openmm=7.4.1
conda config --add channels omnia --add channels conda-forge
conda install yank
```
