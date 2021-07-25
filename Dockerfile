FROM continuumio/anaconda3

RUN pip install --upgrade pip
RUN pip install autopep8
RUN pip install Keras
RUN pip install tensorflow

WORKDIR /deep-learning-from-scratch-1st

ENTRYPOINT ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

CMD ["--notebook-dir=/deep-learning-from-scratch-1st"]