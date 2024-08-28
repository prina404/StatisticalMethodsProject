# StatisticalMethodsProject
Code and report for the course Statistical Methods for Machine Learning A.A. 23/24


## Docker usage

Build the Docker image: 
```bash
docker build --tag tf_slam:1.15 .
```

Launch it with the command:

```bash
docker run --gpus all -p 8888:8888 -v .:/tf/slam_dl/ tf_slam:1.15
```

A jupyter server is started automatically upon launch. To execute the notebook simply connect to the URL shown in the terminal output and open the SLAM_CNN.ipynb file


If the container has no access to the GPU(s), add the `--privileged` flag to the `docker run` command: 
```bash
docker run --gpus all --privileged -p 8888:8888 -v .:/tf/slam_dl/ tf_slam:1.15
```
