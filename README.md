# create_iam_user
Create IAM user/ S3 bucket from terraform

1. Install terraform
2. Replace account_id with actual aws account_id in policy.json
3. Run
   ```sh
   terraform init
   terraform apply -var user_name=cloud-governance-athiruma -var s3_bucket=athiruma-delete
   ``` 