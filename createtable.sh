#!/bin/bash

PROJECT=e-own-service-dev
DATASET=mydataset
TABLE=mytable
SCHEMA=name:string,age:integer,lastseen:timestamp

# create the dataset
bq mk ${DATASET}

# create the table
bq --project_id=${PROJECT} mk -t ${DATASET}.${TABLE} ${SCHEMA}
