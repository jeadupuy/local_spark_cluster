# Local Spark cluster deployment

This repo aims to deploy a local Spark cluster using Docker. The cluster is composed of a master node and some worker nodes. The master node is responsible for managing the worker nodes and distributing the tasks among them.

## Launching the cluster

To deploy the cluster you need to have Docker installed in your machine. If you don't have it installed, you can download it [here](https://www.docker.com/products/docker-desktop).

After installing Docker, you can deploy the cluster by running the following command:

```bash
make run
```

This command will build the Docker images and start the containers. The master node will be available at `localhost:8080` and the worker nodes will be available at `localhost:8081`, `localhost:8082`, and so on.

To deploy the cluster with a specific number of worker nodes, you can run the following command:

```bash
make run-scale workers=3
```

To stop the cluster, you can run the following command:

```bash
make stop
```

## Submitting a job

Write a Spark script, in python or scala, and save it in the `apps` directory. Then, you can submit the job. For exemple, to submit the `pi.py` script, you can run the following command:

```bash
make submit app=pi.py
```

This command will submit the job to the master node and the output will be displayed in the terminal.

## Monitoring the cluster

You can monitor the cluster by accessing the Spark Web UI. The master node is available at `localhost:8080`. You can see the status of the workers, the jobs, the stages, and the tasks.
