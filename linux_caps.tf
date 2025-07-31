locals {
  all_kernel_cap_add = [for kc in lookup(local.capabilities, "cap_add", []) : try(kc.name, "")]
  kernel_cap_add     = length(local.all_kernel_cap_add) > 0 ? coalescelist(local.all_kernel_cap_add) : []
}
