provider "flexibleengine" {
  auth_url    = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
  region      = "eu-west-0"
}

module "cce" {
  source  = "terraform-flexibleengine-modules/cce/flexibleengine"
  version = "1.1.2"
  
  cluster_name  = var.cluster_name
  cluster_desc = "Cluster created using Github Actions"
  cluster_flavor = "cce.s1.small"
  vpc_id = var.vpc_id
  network_id = var.network_id  
  cluster_version = "v1.15.6-r1"

  node_os = "EulerOS 2.5" 

  nodes_list = [
    {
      node_name = "test-node1"
      node_flavor = "s3.large.2"
      availability_zone = "eu-west-0a"
      key_pair = var.keypair
      root_volume_type = "SATA"
      root_volume_size = 40
      data_volume_type = "SATA"
      data_volume_size = 100
    },
    {
      node_name = "test-node2"
      node_flavor = "s3.large.2"
      availability_zone = "eu-west-0b"
      key_pair = var.keypair
      root_volume_type = "SATA"
      root_volume_size = 40
      data_volume_type = "SATA"
      data_volume_size = 100
    }
  ]
}
