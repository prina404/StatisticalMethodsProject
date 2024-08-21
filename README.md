# StatisticalMethodsProject
Code and report for the course Statistical Methods for Machine Learning A.A. 23/24


## Docker usage

A dockefile is available with all the necessary dependencies configured.

It can be build with the command: 
```bash
docker build --tag tf_slam:1.15 .
```

It can be launched with the command:

```bash
docker run -p 8888:8888 -v .:/tf/slam_dl/ tf_slam:1.15
```

A jupyter server is started automatically upon launch. To execute the notebook simply connect to the URL shown in the terminal output and open the SLAM_CNN.ipynb file


--- TODO: test w/ GPU ---
If the container has no access to the GPU(s), add the `--gpus all` flag to the `docker run` command.
