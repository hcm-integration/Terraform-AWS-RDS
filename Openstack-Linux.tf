# Create Virtual Machine

resource "openstack_compute_instance_v2" "mylinvm" {
  count       = var.instancecount
  name        = "${var.name}${count.index + 1}"
  image_name  = "centos7_07"
  flavor_name = lookup(var.flavor, var.size)
  #key_pair        = ""
  security_groups   = ["default"]
  availability_zone = var.az
  power_state       = var.powerstate
  # metadata = { this = "that"}
  network {
    name = var.network
    #"l2p_SE04-HCM-DMZ-Web"
  }
}


