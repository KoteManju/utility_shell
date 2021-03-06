

# install 
# https://aws.amazon.com/tw/cli/?sc_channel=PS&sc_campaign=Acquisition_UK&sc_publisher=google&sc_medium=command_line_b&sc_content=aws_cli_bmm&sc_detail=%2Bcli%20%2Baws&sc_category=command_line&sc_segment=211476221657&sc_matchtype=b&sc_Country=UK&s_kwcid=AL!4422!3!211476221657!b!!g!!%2Bcli%20%2Baws&ef_id=WjtJQwAADPT4SNmU:20180204080421:s
# pip install awscli

#-------------

# config
# set up Access Key ID / Secret Access Key  / region 
# aws configure 

#-------------



# list all buckets 
aws s3 ls 


# list all bucket names 
aws s3 ls | awk '{print $3}'



# for loop list all buckets 
echo '----------------'
for entry in ` aws s3 ls | awk '{print $3}'`;
do echo $entry
# list all files under buckets
aws s3 ls --summarize --human-readable --recursive s3://$entry 

done 


# get size, length of all buckets
echo '----------------'
for entry in ` aws s3 ls | awk '{print $3}'`;
do 
echo $entry
#aws s3api list-objects --bucket $entry --output json --query "[sum(Contents[].Size), length(Contents[])]"
done 







