locals {
  default_tags = var.default_tags_enable ? {
    env = var.environment
  } : {}
  rg_name = "TRF-IAC-DEV"
}
