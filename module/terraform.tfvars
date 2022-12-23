bucketname="harshmittals3bucket"
tag_name={
    name="raghavkhurana_bucket"
    owner="raghav.khurana@cloudeq.com"
    purpose="training assign"
}
ami="ami-0cca134ec43cf708f"
ins_type="t2.micro"
cidr="0.0.0.0/0"
prtcl="tcp"
vpc="vpc-0db9b000905eaca0e"
sname="raghav_sgroup"
sdescription="raghav_sg"
assign={
    "1"={
        ec2_ami="ami-07ffb2f4d65357b42"
        ec2_ec2instance = "t3.micro"
        ec2_tags={
            name="raghavkhurana"
            owner="raghav.khurana@cloudeq.com"
            purpose="training assign"
        }
     
    }
    "2"={
        ec2_ami="ami-0cca134ec43cf708f"
        ec2_ec2instance = "t2.micro"
        ec2_tags={
           name="raghavkhurana_@"
            owner="raghav.khurana@cloudeq.com"
            purpose="training assign"
        }
    }
}