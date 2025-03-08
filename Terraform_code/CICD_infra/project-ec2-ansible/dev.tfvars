    ami                    = "ami-05b10e08d247fb927"
    instance_type          = "t2.micro"
    vpc_security_group_ids = ["sg-0b08e4cec059e5ee1"]
    key_name               = "jenkins"
    project_name           = "project-2"
    env                    = "dev"
    unique_ids = ["ansible-control-node"]

    user_data = <<-EOF
                   #!/bin/bash
                   

                       # Update the system
                       sudo yum update -y
                       
                       # Install the EPEL repository (which is necessary for Ansible installation)
                       sudo amazon-linux-extras install epel -y
                       
                       # Install Ansible
                       sudo yum install -y ansible
                       
                       # Confirm Ansible installation
                       ansible --version

                EOF 
