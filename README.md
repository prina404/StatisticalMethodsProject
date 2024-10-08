<a target="_blank" href="https://colab.research.google.com/github/prina404/StatisticalMethodsProject/blob/main/notebook/SLAM_CNN.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>


# Statistical methods for machine learning project

Code and report for the course Statistical Methods for Machine Learning A.A. 23/24.

The notebook containing all the experiments can be executed in Colab by clicking on the badge, or it can be run locally with docker.


## Docker usage

Build the Docker image: 
```bash
docker build --tag tf_slam:1.15 .
```

Launch it with the command:

```bash
docker run --gpus all \
    -p 8888:8888 \
    --user "$(id -u):$(id -g)" \
    -v .:/tf/slam_dl/ \
    tf_slam:1.15
```

A jupyter server is started automatically upon launch. To execute the notebook simply connect to the URL shown in the terminal output and open the SLAM_CNN.ipynb file


If the container has no access to the GPU(s), add the `--privileged` flag to the `docker run` command: 
```bash
docker run --gpus all --privileged \
    -p 8888:8888 \
    --user "$(id -u):$(id -g)" \
    -v .:/tf/slam_dl/ \
    tf_slam:1.15
```
