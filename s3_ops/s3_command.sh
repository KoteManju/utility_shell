#!/bin/sh

#################################################################
# HELP S3 BUCKET COMMAND  
#################################################################

# ls buckets 
aws s3 ls 

# ls files 
aws s3 ls s3://<s3_bucket_name>

# upload files 
aws s3 upload <file_name> s3://<s3_bucket_name>

# upload all files under directory 
aws s3 sync . s3://<s3_bucket_name/<s3_file_name> --exclude "*.txt"

# copy all local files to s3 bucket 
aws s3 cp . s3://<s3_bucket_name/<s3_file_name>  --recursive \
    --exclude "*" --include "*.csv.gz" 

# sync 2 s3 bucket (from -> to)
aws s3 sync s3://s3://<s3_bucket_name/<from_s3_file_name> s3://s3://<s3_bucket_name/<to_s3_file_name>
