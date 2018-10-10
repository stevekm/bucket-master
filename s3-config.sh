# example configs; fill yours in here
# https://stackoverflow.com/questions/21440709/how-do-i-get-aws-access-key-id-for-amazon
set -x
export AWS_ACCESS_KEY_ID=ABCDEFG
export AWS_SECRET_ACCESS_KEY=89mdJfh48J/ut89Kl2i90
AWS_BUCKET_ID=mybucket111111000
AWS_BUCKET_URL=http://${AWS_BUCKET_ID}.s3.amazonaws.com
AWS_BUCKET_URI=s3://${AWS_BUCKET_ID}
set +x
