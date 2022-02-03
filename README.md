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
