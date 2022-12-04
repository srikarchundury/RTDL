# RTDL
Ring reduce algorithms in distributed deep learning using horovod. Study and more!

The scripts are all inside this folder. 
```
cd containers/
```

## Starting the cluster
```
./run_cluster.sh
```
## Attach driver to spark cluster
```
./run_driver.sh
```
## Run distributed training task
```
./run_program_in_driver.sh mnist.py
```
## To run and measure metrics
```
./measure.sh
```
