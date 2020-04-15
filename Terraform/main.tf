#module "opencue_master" {
#   source = "./modules/compute"
#   compute_name = "opencue-master"
#
#}

module "GKE" {
    source = "./modules/GKE"
}
