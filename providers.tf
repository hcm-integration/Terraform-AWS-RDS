provider "openstack" {
  user_name = "TCS_SOLVE"
  #"svc_se04_hcm"
  tenant_name = "SE04-SOLVE"
  password    = "TCS_solve123"
  # "Cloud1dmin@123"
  auth_url = "http://172.31.44.141:5000/v2/"
  region   = "SE4"
}
