#!/bin/bash

conda create -n mopo python=3.7

conda activate mopo

wget https://www.roboti.us/download/mujoco200_linux.zip

unzip mujoco200_linux.zip
mkdir .mujoco
cp -r mujoco200_linux .mujoco
cp -r mujoco200_linux .mujoco/mujoco200

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mujoco200/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mujoco200_linux/bin


pip install tensorflow_gpu==1.14.0
pip install dotmap==1.3.8
pip install absl-py==0.11.0

pip install git+https://github.com/rail-berkeley/d4rl@master#egg=d4rl

pip install tensorflow-probability==0.7.0

pip install git+https://github.com/hartikainen/serializable.git@76516385a3a716ed4a2a9ad877e2d5cbcf18d4e6

pip install git+https://github.com/vitchyr/multiworld.git@d76b3dae2e8cbca02924f93d6cc0239c552f6408

pip install matplotlib==3.0.2
pip install scikit-learn==0.20.1

pip install glfw==2.1.0

pip install tensorboardX

pip install ray[rllib]==1.0.1.post1

pip install gast==0.2.2



cd mopo

git clone https://github.com/vitchyr/viskit.git
pip install -e viskit
pip install -e .


