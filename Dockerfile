FROM continuumio/miniconda3:latest
RUN apt-get update -qq && apt-get upgrade -qq -y && \
    apt-get install -qq -y default-jdk && \
    # switch to https://github.com/balabanmetin/uDance.git once PR is merged
    git clone https://github.com/balabanmetin/uDance.git && \
    cd uDance && \
    bash install.sh && \
    echo "source activate udance" > ~/.bashrc
ENV PATH /opt/conda/envs/udance/bin:$PATH
