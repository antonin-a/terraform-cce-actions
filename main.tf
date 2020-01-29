provider "flexibleengine" {
  access_key  = ${{ secrets.FE_ACCESS_KEY_ID }}
  secret_key  = ${{ secrets.FE_SECRET_ACCESS_KEY }}
  domain_name = ${{ secrets.FE_DOMAIN_NAME }}
  tenant_name = ${{ secrets.FE_PROJECT_NAME }}"
  auth_url    = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
  region      = "eu-west-0"
}

resource "flexibleengine_cce_cluster_v3" "cluster_1" {
     name = "cluster-tf-action"
     cluster_type= "VirtualMachine"
     cluster_version="v1.13.10-r0"
     flavor_id= "cce.s1.small"
     vpc_id= var.vpc_id
     subnet_id= var.network_id
     container_network_type= "overlay_l2"
     authentication_mode = "rbac"
     description= "Create cluster"
    }
