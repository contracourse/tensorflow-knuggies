# This assumes the container is running on a system with a CUDA GPU
FROM tensorflow/tensorflow:2.8.4-gpu

WORKDIR /tf-knugs

RUN pip install -U jupyterlab pandas==1.5.0 matplotlib==3.6.1 seaborn==0.12.0 yfinance==0.1.78 tensorflow_probability==0.17.0

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--no-browser"]
