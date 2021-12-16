#!/bin/bash
aws s3 cp s3://ansible-configuration-master/hosts-dev.ini /home/ec2-user/
echo "$(date) copied latest ansible config" >> log/copy.txt
dt=$(date '+%d-%m-%Y_%H:%M:%S');
echo "Downloaded latest ansible configuration @:" $dt > log/"log-$dt.txt"

aws s3 cp log/"log-$dt.txt" s3://ansible-configuration-master/logging/
