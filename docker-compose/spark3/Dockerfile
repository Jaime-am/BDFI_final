# docker para spark
FROM bde2020/spark-master:2.4.4-hadoop2.7

COPY necessary_files/models /models
COPY necessary_files/scala-2.11 /scala-2.11
#COPY necessary_files/spark-2.4.7-bin-hadoop2.7.tgz .

ENV CLASSPATH=/scala-2.11

#RUN tar -xzf spark-2.4.7-bin-hadoop2.7.tgz

CMD /spark/bin/spark-submit --class es.upm.dit.ging.predictor.MakePrediction --master local --packages org.mongodb.spark:mongo-spark-connector_2.11:2.4.1,org.apache.spark:spark-sql-kafka-0-10_2.11:2.4.0 /scala-2.11/flight_prediction_2.11-0.1.jar


# ENV SPARK_HOME='/spark-2.4.7-bin-hadoop2.7'


#WORKDIR /scala-2.11
