FROM tensorflow/tensorflow:2.15.0-gpu-jupyter
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p slam_dl

WORKDIR slam_dl/

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8888


CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "SLAM_CNN.ipynb"]