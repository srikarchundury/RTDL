FROM mesosphere/kubeflow:2.1.0-rc.0-jupyter-spark-3.3.0-horovod-0.24.2-pytorch-1.11.0-gpu

USER root

RUN pip install fsspec petastorm

# # add these below 2 lines for grouped-allreduce
# RUN sed -i '183s/dist_optimizer_args/dist_optimizer_args,num_groups=1/' /opt/conda/lib/python3.8/site-packages/horovod/spark/torch/remote.py
# ENV HOROVOD_CYCLE_TIME 0.1

COPY start-master.sh /

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /opt/spark/logs

EXPOSE 8080 7077 6066

CMD ["/bin/bash", "/start-master.sh"]