# Cloud Scheduler and Dataflow demonstration

The folder contains an example of how to set up Cloud Scheduler to trigger a Dataflow batch job.

For detailed instructions, see the
[Schedule Dataflow batch jobs with Cloud Scheduler tutorial](https://cloud.google.com/community/tutorials/schedule-dataflow-jobs-with-cloud-scheduler).


gcloud projects add-iam-policy-binding createder-1535612021236 \
    --member="serviceAccount:scheduler-dataflow-demo@createder-1535612021236.iam.gserviceaccount.com" \
    --role="roles/dataflow.worker"

gcloud projects add-iam-policy-binding createder-1535612021236 \
    --member="serviceAccount:scheduler-dataflow-demo@createder-1535612021236.iam.gserviceaccount.com" \
    --role="roles/cloudscheduler.jobRunner"

gcloud projects add-iam-policy-binding createder-1535612021236 \
    --member="serviceAccount:scheduler-dataflow-demo@createder-1535612021236.iam.gserviceaccount.com" \
    --role="roles/cloudscheduler.admin"

python pipeline.py --input gs://my-bb-bucket/data.csv --output gs://my-bb-bucket/output --runner DataflowRunner --project createder-1535612021236 --staging_location gs://my-bb-bucket/staging --temp_location gs://my-bb-bucket/temp --region asia-southeast1 --template_location gs://my-bb-bucket/templates/dataflow-demo-template

python pipeline.py \
--input data.csv \
--output gs://${BUCKET}/output \
--runner DataflowRunner \
--project ${PROJECT} \
--staging_location gs://${BUCKET}/staging \
--temp_location gs://${BUCKET}/temp \
--region ${REGION} \
--template_location gs://${BUCKET}/templates/dataflow-demo-template \
--save_main_session
