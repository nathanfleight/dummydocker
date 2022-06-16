FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04
CMD ["/bin/bash"]
RUN rm /etc/apt/sources.list.d/cuda.list
RUN rm /etc/apt/sources.list.d/nvidia-ml.list
RUN apt update;apt -y install wget curl dialog whiptail screen net-tools
RUN export DEBIAN_FRONTEND=noninteractive
RUN nvidia-smi
