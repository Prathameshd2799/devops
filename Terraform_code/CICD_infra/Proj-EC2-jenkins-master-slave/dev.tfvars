    ami                    = "ami-05b10e08d247fb927"
    instance_type          = "t2.micro"
    vpc_security_group_ids = ["sg-0b08e4cec059e5ee1"]
    key_name               = "jenkins"
    project_name           = "project-2"
    env                    = "dev"
    unique_ids = ["Prathamesh-jenkins-master","Prathamesh-jenkins-build-slave"]
    //iam_instance_profile   = "admin_role"