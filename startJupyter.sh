docker run -i -t -p 8888:8888 --rm --name jupyter-notebook continuumio/anaconda3 /bin/bash -c "\
    apt update && apt install gcc -y && \
    conda install jupyter -y --quiet && \
    mkdir -p /opt/notebooks && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"