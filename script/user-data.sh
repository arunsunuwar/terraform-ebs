vol=vol-04258a5f890914719
mount_dir=/arun
device=/dev/xvdf/
if [ ! -d $mount_dir ]
then
mkdir $mount_dir
fi
echo "this command is to fetch instance id"
instance_id=`curl http://169.254.169.254/latest/meta-data/instance-id`
echo "this command is to attach EBS to EC2"
aws ec2 attach-volume --volume-id $vol --instance-id $instance_id --device /dev/sdf
sleep 60 
echo "mount filesystem to folder" 
mount $device $mount_dir
