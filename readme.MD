#expense ec2 module

**inputs:**
* ami_id(optional): strnig value. Default values is devops-practice AMI ID
* sg_id(mandatory): user mulst supply sg_ig
* instance_type(optional): t3.micro is default value. user can provide t3.small or t3.medium
* tags(optional): default is empty. User can provide tags in map structure


**outputs:**
* public_ip: public ip of the instance created
* private_id: private ip of the instaance created.