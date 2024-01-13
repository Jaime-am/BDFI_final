# DOCKER DE UN MONGO QUE FEEDEA AL OTRO MONGO
#
# FICHEROS NECESARIOS: origin_dest_distances.jsonl

# Imagen padre
FROM fvilers/mongo-seed:1.0.0

# Copia el json en el WORKDIR
COPY necessary_files/origin_dest_distances.jsonl .

# Importamos al mongo
# CMD ./import_distances.sh
