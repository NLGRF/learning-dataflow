terraform {
    backend "gcs" {
        bucket  = "ntest-pipeline"
        prefix  = "terraform/state"
    }
}
