./bin/spark-submit \
    --master k8s://https://192.168.122.170:6443 \
    --deploy-mode cluster \
    --name spark-pi \
    --class org.apache.spark.examples.SparkPi \
    --conf spark.executor.instances=3 \
    --conf spark.kubernetes.container.image=pd3chae/spark:v3.2.1 \
    --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark-sa \
    --conf spark.kubernetes.namespace=spark-ns \
    local:///opt/spark/examples/jars/spark-examples_2.12-3.2.1.jar
