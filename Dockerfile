# This assumes the container is running on a system with a CUDA GPU
#FROM tensorflow/tensorflow:nightly-gpu-jupyter
FROM tensorflow/tensorflow:latest-gpu-jupyter
WORKDIR .
RUN pip install --upgrade pip
RUN pip install -U pandas autopep8 scikit-learn keras_tuner numpy opendatasets

EXPOSE 8888

ENTRYPOINT ["--ip=0.0.0.0","--allow-root","--no-browser"]
