# Data Engineering with Spark

## Lab 3: Structured Streaming

### Prerequisites

Connect to the Adaltas cloud cluster using OpenVPN.

### Goals

- Stream the NYC Taxi datasets on a socket
- Use Spark Streaming to analyze the stream

### Lab resources

- The `data` directory contains the NYC Taxi datasets;
- The `stream_taxi_data_socket.py` allows to stream a dataset through a socket on a given port.

### Streaming the datasets

To stream the NY datasets:

- Go to this directory:
  ```
  cd dsti-bigdata-2021-fall/labs_spark/lab3
  ```
- Create a checkpoint directory for Spark Streaming in your HDFS personal folder:
  ```sh
  hdfs dfs -mkdir -p "/education/dsti_2021_fall_bda/$USER/spark-streaming/checkpoint"
  ```
- Run the `stream_taxi_data_socket.py` script. The script has 3 parameters: the server name to use to stream the data, the port on which to open the socket, the dataset to stream (can be either `fares` or `rides`)
  ```sh
  PORT=11111
  hdfs dfs -rm -r -f "/education/dsti_2021_fall_bda/$USER/spark-streaming/checkpoint/*"
  python3 stream_taxi_data_socket.py edge-1.au.adaltas.cloud "$PORT" fares
  ```
