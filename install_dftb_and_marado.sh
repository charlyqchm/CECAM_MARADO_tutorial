#!/bin/bash
# This script is used only by the tutor to install DFTB+ and MARADO code.
#This has to be used just once.

# source /course_materials/opt/conda-env/init_dftbplus-serial.sh
# source ${CURRENT_CONDA_OPT}/init_all.sh

git clone https://github.com/dftbplus/dftbplus.git

cd dftbplus
FC=gfortran CC=gcc cmake -DINSTANCE_SAFE_BUILD=True -B _build .
cd _build/
cmake --build . -- -j 4
cmake --install .

cd ../
export DFTB_INSTALL=$(pwd)/_build/_install
cd ../

git clone https://github.com/charlyqchm/MARADO.git
cd MARADO
make

echo "Installation of DFTB+ and MARADO code is completed."