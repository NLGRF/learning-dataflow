#!/bin/sh

python batch.py \
--runner DataFlowRunner \
--project createder-1535612021236 \
--temp_location gs://ntest-pipeline/temp \
--staging_location gs://ntest-pipeline/staging \
--template_location gs://ntest-pipeline/templates/dataflow-demo-template \
--region asia-southeast1
