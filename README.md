0. Create AWS account: https://portal.aws.amazon.com/billing/signup

1. Create a new S3 bucket: https://s3.console.aws.amazon.com/s3/home

2. Create an [IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html) and give it read/write access to the bucket: https://console.aws.amazon.com/iam/

3. Clone this repo and install `conda`

```
git clone https://github.com/stevekm/bucket-master.git
cd bucket-master
make conda-install
```
4. Fill in your AWS and S3 credentials in `s3-config.sh`

5. Upload files from your dir to the bucket

```
make upload CONFIG=s3-config.sh INDIR=/path/to/files
```

6. (Optional) Set your S3 bucket to lifecycle to Glacier storage
