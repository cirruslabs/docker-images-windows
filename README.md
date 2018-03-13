# docker-images-windows

Base WindowsDocker images for Cirrus CI.

Since Cirrus CI builds are executed on Google Cloud Platform we need to comply with GCP's restrictions. For example
[GCP doesn't support the default MTU][1] of 1500 so we need to change it to the maximum possible 1460.

[1]: https://cloud.google.com/compute/docs/containers/#additional_setup_steps