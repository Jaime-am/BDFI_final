#!/usr/bin/env bash

mongoimport --uri mongodb://mongo:27017/agile_data_science -d agile_data_science -c origin_dest_distances --file /origin_dest_distances.jsonl