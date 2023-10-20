locals {  
    public_ip = {for public_ip in var.public_ip_list: public_ip.name => public_ip}
}