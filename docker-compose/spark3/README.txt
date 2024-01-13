CREAMOS ESTA VERSIÓN PORQUE RECOMPILAMOS LAS LÍNEAS DE MAKEPREDICTION.scala DONDE PONÍA "LOCALHOST" PARA CAMBIARLOS POR LOS HOSTNAMES QUE CORRESPONDÍAN CON EL docker-compose.yml

+-- MakePrediction.scala:142:    val writeConfig = WriteConfig(Map("uri" -> "mongodb://mongo:27017/agile_data_science.flight_delay_classification_response"))
+-- MakePrediction.scala:49:      .option("kafka.bootstrap.servers", "kafka:9092")

