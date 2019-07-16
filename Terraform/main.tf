module "opencue_master" {
   source = "./modules/compute"
   compute_name = "opencue-master"

}

module "filestore_create" {
  source = "./modules/storage"
  storage_instance_name = "test"
  capacity_gb = 2000
  share_name = "content"
}
