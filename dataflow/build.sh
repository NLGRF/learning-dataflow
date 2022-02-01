#!/bin/bash

python pipeline.py \
--input gs://${BUCKET}/data.csv \
--output gs://${BUCKET}/output \
--runner DataflowRunner \
--project ${PROJECT} \
--staging_location gs://${BUCKET}/staging \
--temp_location gs://${BUCKET}/temp \
--region ${REGION} \
--save_main_session
