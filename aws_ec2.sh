#!/bin/bash


ssh_path=/c/Users/flame/.ssh

public_dns=$1

cd $ssh_path

echo 'Establishing connection to EC2 ....'

if [[ public_dns = *-* ]]; then 
	ssh -i "keypair.pem" ec2-user@ec2-${public_dns}.us-east-2.compute.amazonaws.com

else
	echo 'Error. Make sure arguement format is 0-0-0-0'

fi 





