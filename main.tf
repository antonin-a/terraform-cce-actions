provider "flexibleengine" {
  auth_url    = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
  region      = "eu-west-0"
}

resource "flexibleengine_cce_cluster_v3" "cluster_1" {
     name = "cluster-tf-action"
     cluster_type= "VirtualMachine"
     cluster_version="v1.13.10-r0"
     flavor_id= "cce.s1.small"
     vpc_id= $VPC_ID
     subnet_id= $NETWORK_ID
     container_network_type= "overlay_l2"
     authentication_mode = "rbac"
     description= "Create cluster"
    }
