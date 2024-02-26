FROM nvidia/cuda:11.6.1-devel-ubuntu20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV CUDA_HOME /usr/local/cuda

RUN apt-get update && apt-get install -y  git  cmake g++ wget
RUN apt-get install -y python3.9 python3-pip python3.9-dev


RUN python3.9 -m pip install numpy==1.21.2 pandas==1.5.3
RUN python3.9 -m pip install torch==1.12.1+cu116 -f https://download.pytorch.org/whl/torch_stable.html

RUN python3.9 -m pip install biopython==1.79 dm-tree==0.1.6 modelcif==0.7 ml-collections==0.1.0 scipy==1.7.1 absl-py einops
RUN python3.9 -m pip install pytorch_lightning==2.0.4 fair-esm mdtraj 
RUN python3.9 -m pip install 'openfold @ git+https://github.com/aqlaboratory/openfold.git@103d037'   
RUN python3.9 -m pip install wandb
